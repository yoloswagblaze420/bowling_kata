require "spec_helper"
require "BowlingGame"

describe Game do
  describe "#initialize" do
    it "can initialize Game" do
      yolo2 = Game.new()
      expect(yolo2.scores).to eq(0)
      expect(yolo2.try1).to eq(0)
      expect(yolo2.try2).to eq(0)
      expect(yolo2.frame).to eq(1)
    end
  end
  describe "#roll" do
    it "can roll" do
      yolo2 = Game.new()
      yolo2.roll(5)
      yolo2.roll(10)
      yolo2.roll(10)
      yolo2.roll(3)
    end
  end
  describe "score_array" do
    it "stores score array into class array" do
      yolo2 = Game.new()
      yolo2.score_array([10,8,1,2,8,5,4,10,10,10,5,5,10,10])
      expect(yolo2.attempts).to eq([10,8,1,2,8,5,4,10,10,10,5,5,10,10])
    end
  end
  describe"#score" do
    it "Can calculate all sorts of scores" do

        yolo2= Game.new()
        yolo2.score_array([9,1,6,3,10,8,2,6,3,10,10,10,8,2,9,1,5])
        expect(yolo2.score()).to eq(182)

        yolo2= Game.new()
        yolo2.score_array([10,8,1,2,8,5,4,10,10,10,5,5,10,10])
        expect(yolo2.score()).to eq(177)

        yolo2= Game.new()
        yolo2.score_array([7,2,9,0,9,0,9,0,9,1,9,1,10,10,8,0,7,1])
        expect(yolo2.score()).to eq(137)

        yolo2= Game.new()
        yolo2.score_array([0,6,9,1,10,6,3,7,1,9,0,5,5,10,7,3,7,0])
        expect(yolo2.score()).to eq(135)

        yolo2= Game.new()
        yolo2.score_array([10,10,10,10,10,10,10,10,10,10,10,10])
        expect(yolo2.score()).to eq(300)

        yolo2=Game.new()
        yolo2.score_array([9,0,3,7,6,1,3,7,8,1,5,5,0,10,8,0,7,3,8,2,8])
        expect(yolo2.score()).to eq(131)
  
        yolo2= Game.new()
        yolo2.score_array([9,0,3,5,6,1,3,6,8,1,5,3,2,5,8,0,7,1,8,1])
        expect(yolo2.score()).to eq(82)

        yolo2= Game.new()
        yolo2.score_array([10,3,7,6,1,10,10,10,2,8,9,0,7,3,10,10,10])
        expect(yolo2.score()).to eq(193)

        yolo2= Game.new()
        yolo2.score_array([8,1,10,6,2,10,8,2,10,9,1,9,0,9,1,10,10,10])
        expect(yolo2.score()).to eq(173)

        yolo2= Game.new()
        yolo2.score_array([10,7,3,10,6,4,10,8,2,10,7,3,8,0,8,0])
        expect(yolo2.score()).to eq(174)

        yolo2= Game.new()
        yolo2.score_array([10,9,0,9,1,8,1,6,4,6,3,8,2,7,3,6,4,10,6,1])
        expect(yolo2.score()).to eq(150)

    end
  end
end