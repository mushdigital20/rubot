require 'spec_helper'

describe Rubot do

	before(:each) do
    @rubot = Rubot.new
  end

	it 'has a version number' do
		expect(Rubot::VERSION).not_to be nil
	end

  	it 'should report the correct position when requested - Test 1' do
    	@rubot.place 0,0,Rubot::NORTH
    	@rubot.move

    	expect(@rubot.report).to eq '0,1,NORTH'
  	end

  	it 'should report the correct position when requested - Test 2' do
    	@rubot.place 0,0,Rubot::NORTH
    	@rubot.left

    	expect(@rubot.report).to eq '0,0,WEST'
  	end

  	it 'should report the correct position when requested - Test 3' do
    	@rubot.place 1,2,Rubot::EAST
    	@rubot.move
    	@rubot.move
    	@rubot.left
    	@rubot.move

    	expect(@rubot.report).to eq '3,3,NORTH'
  	end
end
