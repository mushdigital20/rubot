require "rubot/version"

class Rubot

	NORTH = 'NORTH'
	WEST = 'WEST'
	EAST = 'EAST'
	SOUTH = 'SOUTH'
	X_SIZE = 5
	Y_SIZE = 5

	def place(x,y,f)
		@x = x
		@y = y
		@f = f
	end

	def move
		case @f
		when NORTH
			@y += 1 if @y < Y_SIZE 
		when WEST
			@x -= 1 if @x > 0
		when EAST
			@x += 1 if @x < X_SIZE
		when SOUTH
			@y -= 1 if @y > 0
		end
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
