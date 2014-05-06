require 'spec_helper'
require_relative '../lib/word'

describe Word do

  describe "#original_word" do
    let(:word) { Word.new("bazinga") }

    it "has returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end
  end

# Adds 'way' to words beginning with a vowel
  describe "#word_beginning_with_vowel" do
    let(:word) { Word.new("egg") }

    it "adds way to words beginning with a vowel" do
      expect( word.word_beginning_with_vowel ).to eq("eggway")
    end
  end

# Adds 'ay' to words that begin with a constant
  describe "#word_beginning_with_constant" do
    let(:word) { Word.new("duck") }

    it "adds ay to words beginning with a constant and drops the constant" do
      expect( word.word_beginning_with_constant ).to eq("uckday")
    end
  end
end
