#Auth for Twitter. Currently Hardcoded because I have no sense of security.

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "B2aXeJEdC1nSrO4H6g9Q", "EH3JlbMyM5EWeWySQmX1lE2C271VTrRmsIv2jNlWcw" 
end

