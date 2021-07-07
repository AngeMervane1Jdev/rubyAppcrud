Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/create'
  get 'posts/new'
  get 'posts/update'
  get 'posts/show'
  get 'posts/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
