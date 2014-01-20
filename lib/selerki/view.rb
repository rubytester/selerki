module Selerki
  class View
    attr_accessor :driver

    def initialize driver=Driver.driver
      @driver = driver
    end

  end
end