class RegistrationsController < Devise::RegistrationsController

	def after_update_path_for(resource)
	 	users_path
	end

end
