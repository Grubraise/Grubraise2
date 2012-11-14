class UsersController < Devise::RegistrationsController
  prepend_view_path "app/views/devise"
#before_filter :authorize, only: [:new, :create]
  
def new
  @user = User.new
end

def create
<<<<<<< HEAD
  @user = User.new(params[:user].merge(:password => "default", :password_confirmation => "default"))
  #@user = User.new(p)
=======
  @user = User.new(params[:user])
>>>>>>> ae9e3170c2598ab51cb2531e85f4178a12654188
  if @user.save
    #session[:user_id] = @user.id
    redirect_to '/thanks.html', notice: "Thank you for signing up!"
  else
    render "new"
  end
end

protected 
  def password_required? 
    false 
  end 

end
