#Auth for Twitter. Currently Hardcoded because I have no sense of security.

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "akZeVLUrNqzdDkev9Luo6g", "7t7hd4OMUiMzU3xl6K8Z3TMojJXnpHtJWAP7Sw2a8wM" #Hide on each github.
end

