class ApplicationController < ActionController::Base
  protect_from_forgery
end


# Heroku requires this to be false
#config.assets.initialize_on_precompile=false