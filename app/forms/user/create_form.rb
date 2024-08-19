class User::CreateForm
  include ActiveModel::Model

  attr_accessor :name, :email, :phone

  validates :name, :email, :phone, presence: true

  def save
    return false unless valid?

    @user = User.new(name: name, email: email, phone: phone)
    @user.save
  end

  def user
    @user
  end
end