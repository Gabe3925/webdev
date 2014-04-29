class FortuneCookie

	def initialize
		@wrapped = true

	def wrapped?
		return @wrapped
	end

	def unwrap! 
		@wrapped = false
	end

	def cracked?
		return @cracked
	end

	def crack!
		if wrapped?
			return false
		else
		@cracked = true
	end

end
