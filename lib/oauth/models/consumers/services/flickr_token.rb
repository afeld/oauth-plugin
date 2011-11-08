class FlickrToken < ConsumerToken
  FLICKR_SETTINGS={
    :site => "http://www.flickr.com",
    :request_token_path => "/services/auth",
    :authorize_path => "/services/auth",
    :access_token_path => "/services/rest/?method=flickr.auth.getToken",
  }
  
  def self.consumer(options={})
    debugger
    @consumer ||= OAuth::Consumer.new(credentials[:key], credentials[:secret], FLICKR_SETTINGS.merge(options))
  end
end
