class ReceiveTextController < ActionController::Base

	def index
		message_body = params["Body"]
		from_number = params["From"]

		render 'process_sms.xml.erb', :locals => {:from_number => from_number}, :content_type => 'text/xml'
	end

end