Rails.application.routes.draw do
  root to: "test#root"

  controller :test do
    get :auth1
    get :auth2
    get :secondary
    get :auth_json
    get :sign_in
    get :roda
  end

  constraints Rodauth::Rails.authenticate do
    get "/authenticated" => "test#root"
  end
end
