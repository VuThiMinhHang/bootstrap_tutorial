Rails.application.routes.draw do
  match 'bootstrap', to: 'bootstrap#index', via: :get
end
