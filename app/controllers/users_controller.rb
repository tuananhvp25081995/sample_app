class UsersController < ApplicationController
  before_action :logged_in_user, only: %i(index edit update)
  before_action :correct_user, only: %i(edit update)
  before_action :admin_user, only: %i(destroy)
  before_action :load_user, except: %i(new create index)

  def index
    @users = User.page(params[:page]).per Settings.users_controller.size2
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = t ".welcome"
      redirect_to @user
    else
      render :new
    end
  end

  def update
    if @user.update_attributes user_params
      flash[:success] = t ".profile"
      redirect_to @user
    else
      render :edit
    end
  end

  def edit; end

  def show; end

  def destroy
    if @user.destroy
    else
      flash[:error] = t ".not"
    end
    flash[:success] = t ".delete"
    redirect_to users_url
  end

  private

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    flash[:danger] = t ".nouser"
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation
  end

  def logged_in_user
    return if logged_in?
    store_location
    flash[:danger] = t ".please"
    redirect_to login_url
  end

  def correct_user
    @user = User.find_by id: params[:id]
    redirect_to root_url unless current_user? @user
  end

  def admin_user
    redirect_to root_url unless current_user.admin?
  end
end
