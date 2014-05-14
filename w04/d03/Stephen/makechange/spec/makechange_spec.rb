#!/usr/bin/ruby
# @Author: stephenstanwood
# @Date:   2014-05-14 09:04:53
# @Last Modified by:   stephenstanwood
# @Last Modified time: 2014-05-14 09:16:19

require_relative "spec_helper.rb"
require_relative "../lib/makechange.rb"

describe "#makechange" do
  it "returns two quarters for 50 cents" do
    c = makechange(50)
    expect(c[:quarters]).to eq 2
  end

  it "returns 4 cents for 99 cents" do
    c = makechange(99)
    expect(c[:pennies]).to eq 4
  end

end
