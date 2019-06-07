Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  # Root - показывает вам первую страницы при загрузке сервера.
  root 'welcome#index'


  # Вы можете использовать вместо прописания каждого роута, resources и название вашего контроллера.
  # По умолчанию будут поставлены все возможные роуты из этого контроллера. Чтобы их посмотреть: 'rails routes'.
  resources :posts

end
