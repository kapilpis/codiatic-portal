module OrganizationsHelper
	def multi_organization_mode?
		Organization.many?
	end	
end
