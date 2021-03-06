Rails.application.routes.draw do
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  get "form"=>"inquiries#form"
  post "inquiries/create" => "inquiries#create"
  get "next" => "inquiries#next"

  get "contacts/form" => "contacts#form"
  post "contacts/create" => "contacts#create"
  get "contacts/next" => "contacts#next"

  get 'users/index' => "users#index"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"
  get "users/:id" => "users#show"

  get 'posts/index' => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/create"  => "posts#create"
  get "posts/:id" => "posts#show"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get '/' => "home#top"
  get "/question" => "home#question"
end
