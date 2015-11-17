Rails.application.routes.draw do
      
  mount Portal::Engine        => '/',             as: 'portal',         module: 'portal'
  mount Author::Engine        => '/autor',        as: 'author',         module: 'author'
  mount Study::Engine         => '/estudo',       as: 'study',          module: 'study'
  mount Billing::Engine       => '/fatura',       as: 'billing',        module: 'billing'
  mount Administrator::Engine => '/gerencia',     as: 'administrator',  module: 'administrator'

end
