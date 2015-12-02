OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :salesloft, ENV["SL_CLIENT_ID"], ENV["SL_CLIENT_SECRET"],
           :client_options => {
              :site => ENV["MELODY_URL"],
              :authorize_url => ENV["AUTHORIZE_URL"],
              :token_url => ENV["TOKEN_URL"]
           }
end
