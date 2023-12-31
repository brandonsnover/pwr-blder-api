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

  # ExerciseDay Routes
  get "/exercise_days" => "exercise_days#index"
  get "/exercise_days/:id" => "exercise_days#show"
  post "/exercise_days" => "exercise_days#create"
  patch "/exercise_days/:id" => "exercise_days#update"
  delete "/exercise_days/:id" => "exercise_days#destroy"

  # User Routes
  post "/users" => "users#create"

  # Sessions Route
  post "/sessions" => "sessions#create"
end
