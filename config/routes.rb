Rails.application.routes.draw do
	root "candidates#welcome"
	resources :candidates, only: [:create]
end
