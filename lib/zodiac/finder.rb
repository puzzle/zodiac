# frozen_string_literal: true

module Zodiac
  # false
  module Finder
    YEAR = 2012

    class << self
      def date_for(month, day)
        DateTime.new(YEAR, month, day)
      end

      def range_for(month_start, day_start, month_end, day_end)
        start = date_for(month_start, day_start)
        ending = date_for(month_end, day_end)
        SimpleRange.new(start, ending)
      end
    end

    # Source: WIKIPEDIA
    RANGES = {
      range_for(1,  1,  1,  20) => :capricorn,
      range_for(1,  21, 2,  19) => :aquarius,
      range_for(2,  20, 3,  20) => :pisces,
      range_for(3,  21, 4,  20) => :aries,
      range_for(4,  21, 5,  21) => :taurus,
      range_for(5,  22, 6,  21) => :gemini,
      range_for(6,  22, 7,  22) => :cancer,
      range_for(7,  23, 8,  22) => :leo,
      range_for(8,  23, 9,  23) => :virgo,
      range_for(9,  24, 10, 23) => :libra,
      range_for(10, 24, 11, 22) => :scorpio,
      range_for(11, 23, 12, 21) => :sagittarius,
      range_for(12, 22, 12, 31) => :capricorn
    }.freeze

    SIGN_IDS = {
      aries: 1,
      taurus: 2,
      gemini: 3,
      cancer: 4,
      leo: 5,
      virgo: 6,
      libra: 7,
      scorpio: 8,
      sagittarius: 9,
      capricorn: 10,
      aquarius: 11,
      pisces: 12
    }.freeze

    class << self
      def sign_for(date)
        I18n.t!("zodiac.#{sign_symbol_for date}")
      end

      def sign_id_for(date)
        SIGN_IDS[sign_symbol_for date]
      end

      def sign_symbol_for(date)
        RANGES.each do |range, sign|
          return sign if range.days.cover? date_for(date[:month], date[:day])
        end

        raise ArgumentError
      end
    end
  end
end
