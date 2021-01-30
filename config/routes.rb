# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get '/microsoft_project_connector' => 'microsoft_project_connector#index', as: 'microsoft_project_connector'
get '/microsoft_project_connector/test' => 'microsoft_project_connector#test', as: 'microsoft_project_connector_test'
get '/microsoft_project_connector/setting' => 'microsoft_project_connector#setting', as: 'microsoft_project_connector_setting'

get '/microsoft_project_connector/query' => 'microsoft_project_connector#view_query', as: 'microsoft_project_connector_view_query'
post '/microsoft_project_connector/query' => 'microsoft_project_connector#query', as: 'microsoft_project_connector_query'

get '/microsoft_project_connector/settings' => 'microsoft_project_connector#settings', as: 'microsoft_project_connector_settings'

post '/microsoft_project_connector/save' => 'microsoft_project_connector#save', as: 'microsoft_project_connector_save' 

delete '/microsoft_project_connector/delete_issue' => 'microsoft_project_connector#delete_issue', as: 'microsoft_project_connector_delete_issue' 
