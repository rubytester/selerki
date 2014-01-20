module Selerki
  module Driver
    def self.start
      Selenium::WebDriver.for :chrome
    end

  end
end
