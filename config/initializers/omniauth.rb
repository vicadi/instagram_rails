OmniAuth.config.logger = Rails.logger 

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :instagram, '175fd3736d0e46988a17cd2cbebd2a61', '00f172871c094a3a8def080c3d659142'
end