require 'spec_helper'
require_relative '../lib/word'

describe Word do

  describe "#original_word" do
    let(:word) { Word.new("bazinga") }

    it "has returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end
  end #end original_word


  describe "#pig_latinize" do
    context "when the word begins with a vowel" do
    let(:word) { Word.new("elf") }

    it "puts 'way' on the end of a vowel-initialed word" do
      expect( word.pig_latinize ).to eq("elfway")
    end
  end #end context vowel

    context "when word begins with a consonant" do
    let(:word) { Word.new("bam") }

    it "moves first letter to the end and adds 'ay'" do
      expect( word.pig_latinize ).to eq("ambay")
    end
    end #end context consonant
  end #end pig_latinize
end
