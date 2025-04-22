Rails.application.routes.draw do
  root "calculations#square_new"

  get "/square/new", to: "calculations#square_new"
  get "/square/results", to: "calculations#square_results"

  get "/square_root/new", to: "calculations#sqrt_new"
  get "/square_root/results", to: "calculations#sqrt_results"

  get "/random/new", to: "calculations#random_new"
  get "/random/results", to: "calculations#random_results"

  get "/payment/new", to: "calculations#payment_new"
  get "/payment/results", to: "calculations#payment_results"
end
