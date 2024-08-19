require 'rails_helper'
RSpec.describe User, type: :model do
  #validation tests
  it "is valid with valid attributes" do
    user = User.new(name: "camundongo albino",
                    email: "albino@email.com",
                    phone: 123456)
    expect(user).to be_valid
  end

  it "is not valid without a name" do
    user = User.new(name: nil, email: "indigente@email.com", phone: 123456)
    expect(user).to_not be_valid
  end

  it "is not valid without a email" do
    user = User.new(name: "zé", phone: 123456)
    expect(user).to_not be_valid
  end

  it 'is not valid with a duplicate email' do
    User.create!(name: "Jose sem pé", email: "sempe@email.com", phone: 123456)
    user = User.new(name: "Joao sem mão", email: "sempe@email.com", phone: 4321)
    expect(user).not_to be_valid
  end
end


