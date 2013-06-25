FirstApp::Application.routes.draw do

  resources :hellos

  root :to => "hello#index"
end