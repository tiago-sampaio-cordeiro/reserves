class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  #GET /users or /users.json
  def index
    @users = User.order(id: :asc)
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @form = User::CreateForm.new(user_params)
    if @form.save
      render json: @form.user, status: :created
    else
      render json: @form.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
      if @user.update(user_params)
        render json: @user , status: :ok
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy!
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :phone)
    end
end
