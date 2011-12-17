Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :twitter,'BTmWs8X7YdW7KJJDx03vA','olvIKHWDNfn2aCH2JPOeIYoyvsIXlnRMBsQcpAIM' 
end

Twitter.configure do |config|
  config.consumer_key = 'BTmWs8X7YdW7KJJDx03vA'
  config.consumer_secret = 'olvIKHWDNfn2aCH2JPOeIYoyvsIXlnRMBsQcpAIM'
end

#'imkhJ6VxilZIA7AO36XpHg', 'FsFr1yuVI7RMp9O7v97j8dHkwSfFKeLMcgK74hyys'
#'44vIhBjPnvjCauQEYJSFig', 'dVEhCZitDWfoPRbUQ3kKpbEwsLHv8woUWoLibhua1M'
