require 'singleton'

module Selerki

  module Driver

    class << self

      # current driver for talking to the browser
      def driver
        cache.driver
      end

      # private
      def cache
        Cache.instance
      end
    end

    private

    # Private Cache were we store drivers once started.
    class Cache
      include Singleton
      attr_accessor :driver

      def driver
        @driver ||= start
      end

      def start
        Selenium::WebDriver.for :chrome
      end
    end
  end

end
