# frozen_string_literal: true

# TwilioTextMessenger service
class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    account_sid = Rails.application.secrets.twilio_account_sid
    auth_token = Rails.application.secrets.twilio_auth_token
    from=  Rails.application.secrets.from_phone_number
    to =  Rails.application.secrets.to_phone_number
    client = Twilio::REST::Client.new(account_sid, auth_token)
    client.messages.create(
      from: from,
      to: to,
      body: message
    )
  end
end


