Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, 'a55eb780a5a66bc2fabe', 'b531490bdcc4fcbb3e05bdca2e75e60b8ad9ba12'
end
