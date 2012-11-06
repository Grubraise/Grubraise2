class UsersController < Devise::RegistrationsController
  prepend_view_path "app/views/devise"
#before_filter :authorize, only: [:new, :create]
  
def new
  @user = User.new
end

def create
  #super
  @user = User.new(params[:user])
  if @user.save
    #session[:user_id] = @user.id
    redirect_to root_url, notice: "Thank you for signing up!"
  else
    render "new"
  end
end

protected 
  def password_required? 
    false 
  end 

end
