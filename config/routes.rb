Rails.application.routes.draw do
  get 'page/welcome'
  root to: 'page#welcome'

  get 'notes', to: 'page#notes'
end
