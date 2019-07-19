# frozen_string_literal: true

# SendsmsController
class SendSmsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @send_sm = SendSms.all
  end

  def new
    @send_sm = SendSms.new
  end

  def create
    @send_sm = SendSms.new
    @send_sm.sms = params[:send_sms][:sms]
    return unless @send_sm.save

    message = "Welcome to twilio '#{@send_sm.sms}'"
    TwilioTextMessenger.new(message).call
  end
end
