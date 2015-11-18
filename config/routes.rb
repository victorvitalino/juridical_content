Rails.application.routes.draw do
  
        

  mount RedactorRails::Engine => '/redactor_rails'
  devise_for :users, controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }

  root 'portal/home#index'

  mount Portal::Engine        => '/',             as: 'portal',         module: 'portal'

  mount Dashboard::Engine     => '/voce',         as: 'dashboard',      module: 'dashboard'
  mount Author::Engine        => '/autor',        as: 'author',         module: 'author'
  mount Study::Engine         => '/estudo',       as: 'study',          module: 'study'
  mount Billing::Engine       => '/fatura',       as: 'billing',        module: 'billing'
  mount Administrator::Engine => '/gerencia',     as: 'administrator',  module: 'administrator'

end
