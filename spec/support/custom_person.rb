# frozen_string_literal: true

class CustomPerson < ActiveRecord::Base
  zodiac_reader :dob, sign_id_attribute: :custom_sign_id
end
