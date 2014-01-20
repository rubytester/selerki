require 'spec_helper'

describe Selerki::View do

  it 'init with default driver' do
    view = Selerki::View.new
    view.driver.should eq(Selerki::Driver.driver)

  end
end