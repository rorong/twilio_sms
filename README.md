# Twilio SMS API

 Twilio sms is a form for sending the sms and send to a phone number.It is designed to simplify for sending sms which contain the message to a desired phone number.
 This project aims at sending the sms to a desired phone number.

# Prerequisites:

You will need the following things properly installed on your computer.
 ruby -v 2.5.1
 rails -v Rails 5.2.3

# Installation:

 To install using Bundler grab the latest stable version put it in gemfile:
 gem 'twilio-ruby', '~> 5.25.1'

 Then run 'bundle install'

 To manually install twilio-ruby via Rubygems simply gem install:
 gem install twilio-ruby -v 5.25.1

 Then run 'bundle'

# Getting Started

Go to "https://www.twilio.com" register on twilio for free.Once you have registerd you will have the  ACCOUNT SID,AUTH TOKEN and twilio phone number registered.

# Setup Work
 create a file app/services/twillio_text_messangers.rb and now add the account account_sid ,auth_token in it.
 Here is an example how:

require 'twilio-ruby'

Put your own credentials here
account_sid = 'ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
auth_token = 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'
twilio_phone_number = '+91xxxxxxxxxx'

Set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new (account_sid, auth_token)

# Send an SMS

@client.api.account.messages.create(
  from: '+1xxxxxxxxx',
  to: '+1xxxxxxxxxxxxx',
  body: 'message'
)

 You have to give twilio phone number, you also have to enter receiver phone number and in body you have your message.

Running / Development:
rails s

# Install for Ubuntu and Mac
Ubuntu
