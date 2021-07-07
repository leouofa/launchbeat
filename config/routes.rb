Rails.application.routes.draw do
  get 'page/welcome'
  root to: 'page#welcome'

  get 'notes', to: 'page#notes'
  get 'tunings', to: 'page#tunings'
  get 'majors', to: 'page#majors'
  get 'minors', to: 'page#minors'

  get 'width', action: 'set_width', controller: :grid
end
