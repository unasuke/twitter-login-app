Rails.application.config.middleware.use OmniAuth::Builder do
  # configure do |config|
  #   config.path_prefix = "/"
  # end

  # binding.irb
  provider :twitter, ENV["TWITTER_API_KEY"], ENV["TWITTER_API_SECRET"], callback_path: '/auth/twitter/callback'
end

OmniAuth.config.allowed_request_methods = [:post, :get] if Rails.env.development?
