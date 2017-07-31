Rails.application.routes.draw do

mount Attachinary::Engine => "/attachinary"

  resources :patients do

    get '/comparer' => 'visites#comparer'

    resources :visites do
    end
    
  end

  resources :notes
  
  get '/outils' => 'outils#index'

  get '/outils/send_visite'

  get '/outils/calculatrice'

  get '/outils/compte_goutte'

  get '/outils/pansements'

  get '/outils/coma'

  root :to => 'notes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
