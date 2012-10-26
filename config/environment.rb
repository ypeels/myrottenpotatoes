# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Myrottenpotatoes::Application.initialize!

# Section 6.6 api_key + my security paranoia + Railscasts 087
APP_CONFIG = YAML.load_file("#{Rails.root}/config/myconfig.yml")