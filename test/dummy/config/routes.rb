Rails.application.routes.draw do

  resources :users
  mount SampleRailsEngine::Engine => "/sample_rails_engine"
end
