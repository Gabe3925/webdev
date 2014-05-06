# Stephen Stanwood (stephen@stanwoodsolutions.com)

require 'spec_helper'
require_relative '../lib/word'

describe Word do

  describe "#original_word" do
    let(:word) { Word.new("bazinga") }

    it "returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end
  end

  describe "#piglatinize" do
    it "handles words that start with vowels correctly" do
      expect( Word.new("inbox").piglatinize ).to eq("inboxway")
    end

    it "handles words that start with consonants correctly" do
      expect( Word.new("glove").piglatinize ).to eq("oveglay")
    end

    it "handles words that start with y correctly" do
      expect( Word.new("yellow").piglatinize ).to eq("ellowyay")
    end

    it "handles words that contain a middle y correctly" do
      expect( Word.new("rhythm").piglatinize ).to eq("ythmrhay")
    end

    it "handles words that start with qu correctly" do
      expect( Word.new("queen").piglatinize ).to eq("eenquay")
    end

    it "handles words that start with squ correctly" do
      expect( Word.new("squeal").piglatinize ).to eq("ealsquay")
    end
  end
end
