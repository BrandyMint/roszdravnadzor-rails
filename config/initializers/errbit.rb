if defined? Airbrake
  Airbrake.configure do |config|
    config.api_key = '948a0acd7a9cf0169d600d7628450bfe'
    config.host    = 'errbit.brandymint.ru'
    config.port    = 80
    config.secure  = config.port == 443
  end
end
