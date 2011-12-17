class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.nickname = auth["info"]["nickname"]
      user.token = auth["credentials"]["token"]
      user.secret = auth["credentials"]["secret"]
    end
  end
  
  def tweet(message)
    twitter_client.update(message)
  end
  
  def home_timeline(options = {})
    twitter_client.home_timeline(options)
  end
  
  protected
    def twitter_client
      @client ||= Twitter::Client.new(oauth_token: self.token, oauth_token_secret: self.secret)
    end
end
