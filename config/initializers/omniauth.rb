Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, client_id: ENV["CLIENT_ID"], client_secret: ENV["CLIENT_SECRET"], scope: "repo,user", :callback_path => "/auth/github/callback"
end
