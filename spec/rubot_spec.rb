require 'spec_helper'

describe Rubot do

	before(:each) do
    	@rubot = RobotToy.new
  	end

	it 'has a version number' do
		expect(Rubot::VERSION).not_to be nil
	end

  	it 'should report the correct position when requested 1' do
    	@rubot.place 0,0,Rubot::NORTH
    	@rubot.move

    	expect(@rubot.report).to_be {0,0,Rubot::NORTH}
  	end

  	it 'should report the correct position when requested 2' do
    	@rubot.place 0,0,Rubot::NORTH
    	@rubot.left

    	expect(@rubot.report).to_be {0,0,Rubot::WEST}
  	end

  	it 'should report the correct position when requested 3' do
    	@rubot.place 1,2,Rubot::EAST
    	@rubot.move
    	@rubot.move
    	@rubot.left
    	@rubot.move

    	expect(@rubot.report).to_be {3,3,Rubot::NORTH}
  	end
end
