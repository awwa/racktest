require 'rubygems'
class Precure
	def initialize
		@precure = {
			1=>{:name=>"tsubomi", :precure=>"blossom"},
			2=>{:name=>"erica", :precure=>"marine"},
			3=>{:name=>"itsuki", :precure=>"sunshine"},
			4=>{:name=>"yuri", :precure=>"moonlight"},
		}
	end

	def find(id)
		@precure.fetch(id.to_i, false)
	end
end
