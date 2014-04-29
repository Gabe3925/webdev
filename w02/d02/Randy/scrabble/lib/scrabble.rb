class ScrabbleWord

	def initialize(word)
		@word = word
		@letter_values = {a: 1, b: 3, c: 3, d: 2, e: 1,
		  f: 4, g: 2, h: 4, i: 1, j: 8,
		  k: 5, l: 1, m: 3, n: 1, o: 1,
		  p: 3, q: 10, r: 1, s: 1, t: 1,
		  u: 1, v: 4, w: 4, x: 8, y: 4,
		  z: 10}
	end

	def word
		return @word.downcase
	end

	def letter_values
		return @letter_values
	end
#Returns the numeric score
	def score
		  point_values = word.chars.map {|letter|
		  	letter_values[letter.to_sym]}
#Sums the array of score numers
		   point_values.reduce(:+)
	end

	def multiplier_score(multiplier)

		return score*multiplier
	end
end

banana = ScrabbleWord.new("banana")

puts banana.score

puts banana.multiplier_score(3)



