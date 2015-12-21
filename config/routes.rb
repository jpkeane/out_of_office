Rails.application.routes.draw do
  root 'quote#index'
  
  get 'quote/index'

  get 'quote/basic'

  get 'quote/study'

  get 'quote/custom'
end
