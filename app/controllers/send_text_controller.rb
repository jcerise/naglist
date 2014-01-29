class SendTextController < ApplicationController
	def index
	end

	def send_text_message
		number_to_send_to = "19703797908"

		@twilio_client = Twilio::REST::Client.new Settings.twilio_sid, Settings.twilio_token

		@twilio_client.account.sms.messages.create(
			:from => "+1#{Settings.twilio_phone_number}",
			:to => number_to_send_to,
			:body => "This is a test message from NagList. It was sent to #{Settings.number_to_send_to}"
		)
	end


end