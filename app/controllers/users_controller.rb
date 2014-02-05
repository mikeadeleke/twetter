class UsersController < Devise::SessionsController
  before_filter :find_by_username, only: :show
  
  def show
    if @user == current_user
      render @user
    else
      head 401
    end
  end
  
  def create
    super
  end
  
  def update
  end
  
  private 
    def find_by_username
        @user = User.find_by_username(params[:username])
    end
end