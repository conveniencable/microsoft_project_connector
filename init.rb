Redmine::Plugin.register :microsoft_project_connector do
  name 'Microsoft Project Connector'
  author 'Li Chan'
  description 'A Redmine Plugin to Work with MS Project'
  version '1.0.15'
  url 'https://github.com/conveniencable/microsoft_project_connector'
  author_url 'https://github.com/conveniencable'

  menu :admin_menu, :microsoft_project_connector, {:controller => 'settings', :action => 'plugin', :id => "microsoft_project_connector"}, :html => {:class => 'icon icon-ms-project'}, :caption => :microsoft_project_connector, :if => Proc.new { User.current.admin? || User.current.module_permissions.include?('microsoft_project_connector_setting') }

  settings :default => {
  }, :partial => 'settings/index'

end


if Rails.version > '6.0'
  Rails.application.config.after_initialize do
    require File.expand_path('../lib/microsoft_project_connector', __FILE__)
  end
else
  Rails.configuration.to_prepare do
    require File.expand_path('../lib/microsoft_project_connector', __FILE__)
  end
end