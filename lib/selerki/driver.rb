require 'singleton'

module Selerki

  module Driver

    class << self

      # current driver for talking to the browser
      def driver
        session.driver
      end

      # session singleton
      def session
        Session.instance
      end
    end

    private

    # Private Cache were we store drivers once started.
    class Session
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
