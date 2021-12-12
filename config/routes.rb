Rails.application.routes.draw do
  resources :avaliacaos
  resources :alunos
  resources :atividades
  resources :disciplinas
  devise_for :users
  resources :turmas
  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
