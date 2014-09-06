Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    namespace :dev do
      resources :jobs, only: :index
    end
  end
  resources :docs, only: :show, constraints: {id: /.*/}
  root to: 'docs#show', id: 'api'
end
