# frozen_string_literal: true

class LitePerson < ActiveRecord::Base
  zodiac_reader :dob
end
