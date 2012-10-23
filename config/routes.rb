Newpicmarks::Application.routes.draw do
  get "/pictures", :controller => 'Pictures', :action => 'index'
  post "/pictures", :controller => 'pictures', :action => 'create'

  get "/add_picture", :controller => 'pictures', :action => 'add_picture'
end
