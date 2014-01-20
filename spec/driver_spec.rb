require 'spec_helper'

describe Selerki::Driver do

  context 'when no drivers present in the system' do

    before do
      Selerki::Driver.cache.driver = nil
    end

    it '.driver gives us webdriver' do
      wd = Selerki::Driver.driver
    end

    it 'asking for driver again we should get the same driver from cache and not new' do
      wd = Selerki::Driver.driver
      wd.should eq(Selerki::Driver.driver)
    end

  end

end