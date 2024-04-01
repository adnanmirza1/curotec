Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/about-us', to: 'curotec#about'
  get '/success-stories', to: 'curotec#success_stories'
  get '/careers', to: 'curotec#careers'
  get '/insights', to: 'curotec#insights'
  get '/contact', to: 'curotec#contact'
  # get '/', to: 'curotec#'
  # Defines the root path route ("/")
  root "curotec#index"
end
