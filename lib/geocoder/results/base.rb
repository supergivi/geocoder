module Geocoder
  module Result
    class Base
      attr_accessor :data

      ##
      # Takes a hash of result data from a parsed Google result document.
      #
      def initialize(data)
        @data = data
      end

      ##
      # A string in the given format.
      #
      def address(format = :full)
        fail
      end

      ##
      # A two-element array: [lat, lon].
      #
      def coordinates
        [@data['latitude'].to_f, @data['longitude'].to_f]
      end

      def latitude
        coordinates[0]
      end

      def longitude
        coordinates[1]
      end

      def country
        fail
      end

      def country_code
        fail
      end
    end
  end
end
