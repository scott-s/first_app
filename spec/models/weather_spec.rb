require 'spec_helper'

describe Weather do
  describe "#weather" do
    it "should return answer" do
      subject.weather.should eq 2
    end
  end

  describe "#football" do
    it "should return answer" do
      subject.football.should eq 1
    end
  end

  describe "#process_file" do
    it "should return answer" do
      subject.process_file("weather.dat", 1, 2).should eq 2
    end

    it "should return answer" do
      subject.process_file("football.dat", 6, 8).should eq 1
    end
  end

  describe "#process_line" do
    it "should return the difference between min and max" do
      subject.process_line(1, 2, "   1  88    59    74          53.8       0.00 F       280  9.6 270  17  1.6  93 23 1004.5").should eq 29
    end

    it "should return the difference between min and max" do
      subject.process_line(0, 2, "1 4 5 7 2 3").should eq 4
    end

    it "should handle tabs" do
      subject.process_line(0, 2, "  1    3 6 7 2 3").should eq 5
    end

    it "should return the difference between min and max" do
      subject.process_line(6, 8, "    1. Arsenal         38    26   9   3    79  -  36    87").should eq 43
    end
  end

  describe "#min" do
    it "returns last val if first val is nil" do
      subject.min(nil, 2).should eq 2
    end

    it "returns nil if both values are nil" do
      subject.min(nil, nil).should eq nil
    end

    it "returns first val if last val is nil" do
      subject.min(3, nil).should eq 3
    end

    it "returns first val if last val is nil" do
      subject.min(7, 5).should eq 5
    end

  it "returns first val if last val is nil" do
    subject.min(7, 5).should eq 5
  end

  end
end
