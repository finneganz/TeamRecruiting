Rails.application.routes.draw do
    ### get 'URL' => 'ControllerName#ActionName'
# Home
  root 'static_pages#home'
  get 'static_pages/help' => 'static_pages#help', as: :help
  get 'static_pages/about' => 'static_pages#about', as: :about
  
# Topics
  get 'topics/index'
  get 'topics/show/:id' => 'topics#show', as: :topics_show
  post 'topics/create' => 'topics#create'
  delete 'topics/delete/:id' => 'topics#delete', as: :topics_delete

end
