Rails.application.routes.draw do
  root to: 'pages#index'
  get '/auth/steam', to: "authentication#new", as: 'steam_sign_in'
  post "/auth/steam/callback" => "authentication#callback"
  delete '/sign-out' => "authentication#destroy"
end
