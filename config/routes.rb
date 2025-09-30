Rails.application.routes.draw do
  root "pages#home"
  get "about",    to: "pages#about"
  get "services", to: "pages#services"
  get "projects", to: "pages#projects"
  get "contact",  to: "pages#contact"
  post "contact", to: "contacts#create"
end
