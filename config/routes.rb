# frozen_string_literal: true

Rails.application.routes.draw do
  root 'send_sms#new'
  resources :send_sms
end
