Redmine::Plugin.register :microsoft_project_connector do
  name 'Microsoft Project Connector'
  author 'Li Chan'
  description 'A Redmine Plugin to Work with MS Project'
  version '1.0.7'
  url 'https://github.com/conveniencable/microsoft_project_connector'
  author_url 'https://github.com/conveniencable'

  menu :admin_menu, :microsoft_project_connector, {:controller => 'settings', :action => 'plugin', :id => "microsoft_project_connector"}, :html => {:class => 'icon icon-ms-project'}, :caption => :microsoft_project_connector, :if => Proc.new { User.current.admin? || User.current.module_permissions.include?('microsoft_project_connector_setting') }

  settings :default => {
  }, :partial => 'settings/index'

end


if defined? ActionDispatch::Callbacks.to_prepare
  ActionDispatch::Callbacks.to_prepare do
    require 'microsoft_project_connector'
  end
else
  ActiveSupport::Reloader.to_prepare do
    require 'microsoft_project_connector'
  end
end