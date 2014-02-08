current_dir = File.dirname(__FILE__)

node_name                "thadamski"
chef_server_url          "https://api.opscode.com/organizations/verifract"

# Logging
log_level                :info
log_location             STDOUT

# Caching
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )

# Security
client_key               "#{current_dir}/thadamski.pem"
validation_key           "#{current_dir}/verifract-validator.pem"
validation_client_name   "verifract-validator"

# Cookbooks
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright      "Verifract, LLC"
cookbook_license        "apachev2"
cookbook_email          "tadamski@rzsoftware.com"
