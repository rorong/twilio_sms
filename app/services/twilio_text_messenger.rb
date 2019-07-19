# frozen_string_literal: true

# TwilioTextMessenger service
class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    binding.pry
    account_sid = Rails.application.secrets.twilio_account_sid
    auth_token = Rails.application.secrets.twilio_auth_token
    client = Twilio::REST::Client.new(account_sid, auth_token)
    client.messages.create(
      from: 19_167_133_582,
      to: '+917060519836',
      body: message
    )
  end
end


