# frozen_string_literal: true

require 'funtimes'
require 'i18n'
I18n.config.load_path += Dir.glob(File.expand_path('locales', __dir__) + '/*.yml')

require 'zodiac/finder'

module Zodiac
  def self.each_sign(&block)
    Finder::SIGN_IDS.each(&block)
  end
end

require 'zodiac/date'
require 'zodiac/activerecord'
