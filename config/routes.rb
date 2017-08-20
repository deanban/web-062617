Rails.application.routes.draw do
  # get 'bars/index'

  # get 'bars/show'

  # get 'bars/indexshow'

  # get 'bars/create'

  # get 'bars/edit'

  # get 'bars/update'

  # get 'bars/destroy'

  # get 'bartenders/index'

  # get 'bartenders/new'

  # get 'bartenders/create'

  # get 'drink_categories/index'

  # get 'drink_categories/new'

  # get 'drink_categories/create'

  # get 'drink_categories/edit'

  # get 'drink_categories/update'

  # get 'drink_categories/destroy'

  # get 'drinks/index'

  # get 'drinks/show'

  # get 'drinks/new'

  # get 'drinks/create'

  # get 'drink/index'

  # get 'drink/show'

  # get 'drink/new'

  # get 'drink/create'

  resources :drinks, :bars, :bartenders, :drink_categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
