Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :twitter, 'imkhJ6VxilZIA7AO36XpHg', 'FsFr1yuVI7RMp9O7v97j8dHkwSfFKeLMcgK74hyys', :sign_in => true
end

Twitter.configure do |config|
  config.consumer_key = '44vIhBjPnvjCauQEYJSFig'
  config.consumer_secret = 'dVEhCZitDWfoPRbUQ3kKpbEwsLHv8woUWoLibhua1M'
end