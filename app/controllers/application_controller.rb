class ApplicationController < ActionController::Base
	before_action :authenticate_employee!

	private

	def after_sign_in_path_for(resource)
		case resource
		  when Employee then root_path 
		  when User then admin_dashboard_path
		  end
    end

	def after_sign_out_path_for(employee)
    new_employee_session_path(employee)
  end
end
