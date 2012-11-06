class ParentController < Devise::RegistrationsController
  prepend_view_path "app/views/devise"
#before_filter :authorize, only: [:new, :create]

def new
  @parent = Parent.new
end

def create
  super
  @parent = Parent.new(params[:school_affiliate])
  if @parent.save
    session[:parent_id] = @parent.id
    redirect_to root_url, notice: "Thank you for signing up!"
  else
    render "new"
  end
end


end
