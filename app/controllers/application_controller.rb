class ApplicationController < ActionController::Base
<<<<<<< HEAD
<<<<<<< HEAD
=======
adding_attributes_to_user
>>>>>>> 5cdd3de5a0f04cf9d665b135fc8282950f8a984c
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
<<<<<<< HEAD
=======
  
>>>>>>> master
=======
>>>>>>> 5cdd3de5a0f04cf9d665b135fc8282950f8a984c
end
