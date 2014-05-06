 require 'spec_helper'
require_relative '../lib/word'

describe Word do

  describe "#original_word" do
    let(:word) { Word.new("bazinga") }

    it "has returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end
  end

  describe "#piglatinize" do
    context "when the word begins with a vowel" do
      let(:word) { Word.new("egg") }
      it "returns the original word + 'way'" do
        expect( word.piglatinize ).to eq("eggway")
      end

    end

    context "when the word begins with a consonant" do
      let(:word) { Word.new("glove") }
      it "moves the first consonant cluster to the end of the word and appends 'ay'" do
        expect( word.piglatinize ).to eq("oveglay")
      end

      it "moves the first consonant to the end of the word and appends 'ay'" do
        word2 = Word.new("cap")
        expect( word2.piglatinize ).to eq("apcay")
      end
    end
  end

end
