Apipie.configure do |config|
  config.app_name                 = "Medirectory"
  config.api_base_url             = "/"
  config.doc_base_url             = "/docs/api"
  # set true/false for default validation
  config.validate                 = false
  # where is your API defined?
  config.api_controllers_matcher  = "#{Rails.root}/app/controllers/**/*.rb"
  config.default_version          = "1.0"
  config.app_info                 = "A pilot project for a provider directory."
  config.namespaced_resources     = true
end
