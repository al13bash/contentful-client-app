Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'index', to: 'categories#index', as: :categories
  get 'category/:title', to: 'categories#show', as: :category
  get ':slug', to: 'articles#show', as: :article

  get '/', to: redirect('/index')
end
