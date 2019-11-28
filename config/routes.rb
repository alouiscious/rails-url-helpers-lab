Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only:[:index, :show]
  get '/students/:id', to: 'students#show', as: 'activate_student'
  # post "/students/:id", to: "students#index", as: 'students'
end
