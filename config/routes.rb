Rails.application.routes.draw do

  get 'resumes/index'

  get 'resumes/new'

  get 'resumes/create'

  get 'resumes/destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'product/list'
  get 'product/new'
  post 'product/create'
  patch 'product/update'
  get 'product/list'
  get 'product/show'
  get 'product/edit'
  get 'product/delete'
  get 'product/update'
  get 'product/show_categories'
  get 'product/show_countries'

  root 'product#list'


  resources :resumes, only: [:index, :new, :create, :destroy]
  root "resumes#index"

end
