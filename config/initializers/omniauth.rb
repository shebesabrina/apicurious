Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, client_id: "92d727e4d8c9e173fcef", client_secret: "54d0901e1530c48c6a20c6e8784f0e42a4aece2d", scope: "repo,user", :callback_path => "/auth/github/callback"
end
