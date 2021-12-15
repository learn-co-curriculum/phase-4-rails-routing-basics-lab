Rails.application.routes.draw do
  get "students" ,to: "students#index"
  get "grades" ,to: "students#grades"
  get "highest_grade" ,to: "students#highest_grade"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
