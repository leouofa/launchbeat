Rails.application.routes.draw do
  get 'page/welcome'
  root to: 'page#welcome'

  get 'notes', to: 'page#notes'
  get 'majors', to: 'page#majors'

  get 'width', action: 'set_width', controller: :grid
end
