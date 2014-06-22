class Restroom
	attr_reader :queue
	attr_reader :facilities

	def initialize(facilities_per_restroom=3)
		@queue = []
		@facilities = []
		facilities_per_restroom.rimes{ @facilities << Facility.new }
	end
	def enter(person)
		unoccupies_facility = @facilities.find{ |facility| not facility.occupied?}
		if unoccupies_facility
			unoccupies_facility.occupy person
		else
			@queue << person
		end
	end	
	def tick
		@facilities.each{|f| f.tick}
	end
end