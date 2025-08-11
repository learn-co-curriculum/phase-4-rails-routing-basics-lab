Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :students, only: [:index] do
    collection do
      get :grades
      get :highest_grade
    end
  end
end
