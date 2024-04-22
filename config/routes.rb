Rails.application.routes.draw do
  # get 'articles/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/about-us', to: 'curotec#about'
  get '/success-stories', to: 'curotec#success_stories'
  get '/careers', to: 'curotec#careers'
  get '/insights', to: 'curotec#insights'
  get '/contact', to: 'curotec#contact'
  get '/services', to: 'curotec#service'
  # get '/', to: 'curotec#'
  # Defines the root path route ("/")
  root "curotec#index"
  get '/articles/create', to: 'articles#create', as: 'articles_create'
end
