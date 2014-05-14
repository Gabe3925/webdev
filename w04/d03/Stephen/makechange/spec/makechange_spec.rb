#!/usr/bin/ruby
# @Author: stephenstanwood
# @Date:   2014-05-14 09:04:53
# @Last Modified by:   stephenstanwood
# @Last Modified time: 2014-05-14 09:25:35

require_relative "spec_helper.rb"
require_relative "../lib/makechange.rb"

describe "#makechange" do
  it "returns correct change for 50 cents" do
    c = makechange(50)
    expect(c[:quarters]).to eq 2
    expect(c[:dimes]).to eq 0
    expect(c[:nickels]).to eq 0
    expect(c[:pennies]).to eq 0
  end

  it "returns correct change for 99 cents" do
    c = makechange(99)
    expect(c[:quarters]).to eq 3
    expect(c[:dimes]).to eq 2
    expect(c[:nickels]).to eq 0
    expect(c[:pennies]).to eq 4
  end
end
