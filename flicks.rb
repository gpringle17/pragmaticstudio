#method#

def weekday
	current_time= Time.new
	current_time.strftime("%A")
end

def movie_listing(title,rank=0)
	puts "#{weekday}: #{title.capitalize} has a rank of #{rank}."
end

puts movie_listing("goonies",8)
puts movie_listing("ghostbuster",9)
a_title="goldfinger"
puts movie_listing(a_title)

#class#

class Movie
	def initialize(title,rank)
		@title=title.capitalize
		@rank=rank
	end
	def thumbs_up
		@rank=@rank+1
	end
	def thumbs_down
		@rank=@rank-1
	end
	def to_s
		"#{@title} has a rank of #{@rank}"
	end
end
movie1=Movie.new("goonies",10)
puts movie1
movie1.thumbs_up
puts movie1
movie2=Movie.new("ghostbusters",9)
puts movie2
movie2.thumbs_down
puts movie2

#attributes#
#attr_reader :title, :rank
#attr_writer :title
#attr_accessor :title  
#arrays#
#array is ordered list of object references
#to make array make variable with brackets.
#array=['a','b','c']
# a is given spot 0, b spot 1, c spot 2
# you can call them using array[1] which would return "a"
#seats=[]
#seats=Array.new
#seats[0]='a'
#seats[1]='b'
#seats[2]='c'
#seats[4]='e'
#the blank spot 3 will be filled with nil
#seats.push('a')
#push method adds to the end slot.
#seats << 'a'
#<< is the append method and will add to the end of the array
#seats.size
#size method returns the current size of the array
#seats.pop
#pop method returns the last object in the array and removes it from the array.
#seats.empty?
#empty? states whether the array is empty or not
#movies.each do |m|
#	m thumbs_up
#	puts m
#end
# each method affect every element in the array with whatever action.

#Objects Interacting 
class Movie
end
	class Playlist
		def initialize(name)
			@name=name
			@movie=[]
		end
		def add_movie(movie)
			@movies<<movie
		end
		def play 
			puts "#{@name}'s playlist:"
			puts @movies
			@movies.each do |movie|
				movie.thumbs_up
				puts movie
			end
		end
	end


playlist1=Playlist.new("Kermit")
playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)
playlist1.play

#require_relative 'movie'
#this command will make the dependent class have access to the class that it is using
# if __FILE__ ==$0 (surround test code for classes with this to prevent running in main file)