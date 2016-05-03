Rails.application.routes.draw do

  root 'home#home'

  resources 'boats' 
end
