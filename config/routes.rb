Rails.application.routes.draw do
  scope '/api' do
    resources :groups, except: [:new, :edit]
    resources :contacts, except: [:new, :edit]
  end
end
