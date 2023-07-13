# frozen_string_literal: true

module ApplicationHelper
  include SettingsHelper

  def nav_bar(&block)
    content_tag(:ul, class: 'navbar-nav', &block)
  end

  def nav_link(path, &block)
    options = current_page?(path) ? { class: 'nav-item active' } : { class: 'nav-item' }
    content_tag(:li, options) do
      link_to path, class: 'nav-link', &block
    end
  end

  def settings_nav_link(&block)
    options = current_page?(edit_organization_path(@organization)) || roles_page? ? { class: 'nav-item active' } : { class: 'nav-item' }
    content_tag(:li, options) do
      link_to edit_organization_path(@organization), class: 'nav-link', &block
    end
  end

  def roles_page?
    controller = 'roles'
    actions = %w[index new edit]
    actions.any? { |action| params[:controller] == controller && params[:action] == action }
  end

  def organizations
    @organizations ||= Organization.all #current_user.spaces.order(:name).filter(&:active?)
  end

  def abbrev_name(name)
    name.blank? ? '?' : name.split(' ').map(&:first).join('.')
  end

  def demo_mode?
    ENV['DEMO_MODE'] == 'true'
  end


  def employee_name(employee)
    "#{employee.first_name} #{employee.last_name}"
  end  

  def employee_status(employee)
    0  
  end  

  def employee_admin?(employee)
    true
  end  
  
end
