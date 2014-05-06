require 'spec_helper'
require_relative '../lib/word'

describe Word do
  subject(:word) { Word.new(string) }

  describe "#original_word" do
    it "returns the original word" do
      expect(Word.new("bazinga").original_word).to eq("bazinga")
    end
  end

  describe "#pig_latin" do
    context "when a word begins with a consonant" do
      let(:string) { "banana" }

      it "moves the first consonant to the end and suffixes an -ay" do
        expect(word.pig_latin).to eq("ananabay")
      end
    end

    context "when a word begins with a consonant cluster" do
      let(:string) { "glove" }

      it "moves the first consecutive consonants to the end and suffixes an -ay" do
        expect(word.pig_latin).to eq("oveglay")
      end
    end

    context "when a word begins with a vowel" do
      let(:string) { "egg" }

      it "adds -ay to the end of the word" do
        expect(word.pig_latin).to eq("eggay")
      end
    end
  end
end
