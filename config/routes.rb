Rails.application.routes.draw do
  # Exercise Routes
  get "/exercises" => "exercises#index"
  get "/exercises/:id" => "exercises#show"
  post "/exercises" => "exercises#create"
  patch "/exercises/:id" => "exercises#update"
  delete "/exercises/:id" => "exercises#destroy"

  # Program Routes
  get "/programs" => "programs#index"
  get "/programs/:id" => "programs#show"
  post "/programs" => "programs#create"
  patch "/programs/:id" => "programs#update"
  delete "/programs/:id" => "programs#destroy"

  # Day Routes
  get "/days" => "days#index"
  get "/days/:id" => "days#show"
  post "/days" => "days#create"
  patch "/days/:id" => "days#update"
  delete "/days/:id" => "days#destroy"
end
