ActionController::Routing::Routes.draw do |map|
  map.resources :palestras, :has_many => :avaliacao
  map.root :controller => 'palestras'

  map.with_options :controller => 'info' do |info|
    info.creditos 'creditos', :action => 'creditos'
  end

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
