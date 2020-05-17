Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :github, 'f210924235f9947aca0d', '0af18576c2b1bd242c6fc193b65462fbc157bd7f'
end