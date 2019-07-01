# frozen_string_literal: true

class Person < ActiveRecord::Base
  zodiac_reader :dob
end
