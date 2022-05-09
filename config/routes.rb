Rails.application.routes.draw do
  # resources :orders

  get "/orders", to: "orders#index"

  # get "/orders?page=<int>&per_page=<int>", to: "orders#paginate"

  # .paginate :per_page =>5, :page=>params[:page]

  get "/orders/:id", to: "orders#show"

  post "/orders", to: "orders#create"

  # put "/orders/:id", to: "orders#update"

  patch "/orders/:id", to: "orders#update"

  delete "/orders/:id", to: "orders#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
