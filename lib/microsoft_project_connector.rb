require_dependency File.expand_path('../microsoft_project_connector/patches/issue_relation_patch.rb', __FILE__ )
require_dependency File.expand_path('../microsoft_project_connector/patches/issue_patch.rb', __FILE__ )


module MicrosoftProjectConnector
  class Hooks < Redmine::Hook::ViewListener

    # Add a question CSS class
    def view_layouts_base_html_head(context = { })
    	stylesheet_link_tag 'application.css', :plugin => 'microsoft_project_connector'
    end

  end
end