Rails.application.routes.draw do
  get 'page/welcome'
  root to: 'page#welcome'
end
