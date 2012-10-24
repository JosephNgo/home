Newpicmarks::Application.routes.draw do
  get "/pictures", :controller => 'Pictures', :action => 'index', :as => 'index'
  post "/pictures", :controller => 'pictures', :action => 'create'

  get "/add_picture", :controller => 'pictures', :action => 'add_picture'
  get "/pictures/:id", :controller => 'Pictures', :action => 'show', :as => 'picture'
  put "/pictures/:id", :controller => 'Pictures', :action => 'update'
  delete "/pictures/:id", :controller => 'Pictures', :action => 'destroy'
  get "/pictures/:id/edit", :controller => 'Pictures', :action => 'edit', :as => 'edit_picture'
  post "/pictures/:id/edit", :controller => 'Pictures', :action => 'edit'
end
