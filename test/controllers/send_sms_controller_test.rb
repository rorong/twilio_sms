# frozen_string_literal: true

require 'test_helper'

class SendSmsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get send_sms_index_url
    assert_response :success
  end

  test 'should get create' do
    get send_sms_create_url
    assert_response :success
  end
end
