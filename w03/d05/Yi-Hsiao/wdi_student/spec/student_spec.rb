require "spec_helper"
require_relative "../lib/student"

describe Student do
  let(:student) { Student.new("Yi-Hsiao") }

  describe "::new" do
    it "has a name" do
      expect(student.name).to eq("Yi-Hsiao")
    end

    it "starts with no knowledge" do
      expect(student.knowledge_level).to eq(0)
    end

    it "starts at full energy (100 points)" do
      expect(student.energy_level).to eq(100)
    end
  end

  describe "#code" do
    context "when a student codes once" do
      before { student.code }

      it "adds 1 knowledge point for every 20 points in your energy level" do
        expect(student.knowledge_level).to eq(5)
      end

      it "deducts 20 points from the energy pool" do
        expect(student.energy_level).to eq(80)
      end
    end

    context "when a student codes five times non-stop" do
      before { 5.times {student.code} }

      it "adds 15 knowledge points, e.g. (5pts + 4pts + 3pts + 2pts + 1pt)" do
        expect(student.knowledge_level).to eq(15)
      end

      it "uses up all the student's energy" do
        expect(student.energy_level).to eq(0)
      end

      it "does not gain anymore knowledge points on consecutive coding sessions" do
        student.code
        expect(student.knowledge_level).to eq(15)
      end

      it "dies if it codes with 0 energy" do
        student.code
        expect(student.alive?).to be(false)
      end
    end
  end

  describe "#rest" do
    it "adds 30 energy points up to the maximum of 100" do
      student.code
      student.rest
      expect(student.energy_level).to eq(100)
    end

    it "adds 60 energy points, if a student with 40 energy points rests twice" do
      3.times { student.code }
      2.times { student.rest }
      expect(student.energy_level).to eq(100)
    end
  end
end
