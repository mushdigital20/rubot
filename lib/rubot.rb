require "rubot/version"

class Rubot

	NORTH = 'NORTH'
	WEST = 'WEST'
	EAST = 'EAST'
	SOUTH = 'SOUTH'

	def place(x,y,f)
		@x = x
		@y = y
		@f = f
	end

	def move
	end

	def left
		@f = case @f
		when NORTH
			WEST
		when WEST
			SOUTH
		when SOUTH
			EAST
		when EAST
			NORTH
		end
	end

	def right
		@f = case @f
		when NORTH
			EAST
		when WEST
			NORTH
		when SOUTH
			WEST
		when EAST
			SOUTH
		end
	end

	def report
		return "#{@x.to_s},#{@y.to_s},#{@f.to_s}"
	end
end
