Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'instaposts#index'
  get '/instaposts/new' => 'instaposts#new', as: 'new_instapost'
  post '/instaposts' => 'instaposts#create'
  get '/instaposts/:id' => 'instaposts#show' , as: 'instapost'
  get '/instaposts/:id/edit' => 'instaposts#edit', as: 'edit_instapost'
  patch '/instaposts/:id' => 'instaposts#update'
  delete '/instaposts/:id' => 'instaposts#destroy'

  


end
