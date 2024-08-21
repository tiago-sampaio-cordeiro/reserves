require 'rails_helper'
#controllers Test
RSpec.describe UsersController, type: :controller do
  describe "GET #index" do
    context "returns a success response" do
      it "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end

  #describe "GET #show" do
    # context "creating the new user" do
    #it 'redirects to the created user' do
    #post :create, params: { user: { name: "frederico",
    #                                    email: "frederico@gmail.com",
    #                                   phone: "5555" }
    #   }
    #   expect(response).to redirect_to(User.last)
    # end
    #end
    #end}

  describe "POST #create" do
    context "creating the new user" do
      it "checking number of users" do
        expect {
          post :create, params: {
             user: {
               name: "divonei",
               email: "divonei@email.com",
               phone: 12345
              }
          }
        }.to change(User, :count).by(1)
      end
    end
  end

  describe "DELETE #destroy" do
    context "deleting the user" do
      it "checking deletion number of users" do
        expect{
          delete :destroy, params: { id: User.last.id }
        }.to change(User, :count).by(-1)
        # ESTRELINHA DADA☆
      end
    end
  end
end

