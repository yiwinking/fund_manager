Rails.application.config.middleware.use OmniAuth::Builder do
  OmniAuth.config.on_failure do |env|
    [302, {'Location' => "/auth/#{env['omniauth.error.strategy'].name}/failure?message=#{env['omniauth.error.type']}"}, ["Redirecting..."]]
  end

  provider :identity, :fields => [:nickname, :email]#, on_failed_registration: UsersController.action(:new)
  provider :github, 'a55eb780a5a66bc2fabe', 'b531490bdcc4fcbb3e05bdca2e75e60b8ad9ba12'
end
