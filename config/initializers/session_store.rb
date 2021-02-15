if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_bookstore_app", domain: "https://mk-bookstore-backend.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_bookstore_app"
end