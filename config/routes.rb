Rails.application.routes.draw do
  get 'careers/new'
  get 'careers/create'
  ActiveAdmin.routes(self)
  # get 'articles/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/about-us', to: 'curotec#about'
  get '/success-stories', to: 'curotec#success_stories'
  get '/careers', to: 'curotec#careers'
  get '/insights', to: 'curotec#insights'
  get '/contact', to: 'curotec#contact'
  get '/services', to: 'curotec#service'
  get '/jobs', to: 'curotec#career_job'
  get '/sitemap', to: 'curotec#sitemap'
  get '/policy', to: 'curotec#policy'
  get '/privacy', to: 'curotec#privacy'
  # get '/', to: 'curotec#'
  # Defines the root path route ("/")
  root "curotec#index"
  post '/articles/create', to: 'articles#create', as: 'articles_create'
  resources :careers
  post '/recruiter/create', to: 'recruiters#create'
end
