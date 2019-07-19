# frozen_string_literal: true

class CreateSendSms < ActiveRecord::Migration[5.2]
  def change
    create_table :send_sms do |t|
      t.string :sms

      t.timestamps
    end
  end
end
