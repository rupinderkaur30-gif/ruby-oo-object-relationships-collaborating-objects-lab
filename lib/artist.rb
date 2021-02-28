class Artist
    attr_accessor :name , :song
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
    @songs << song
    song.artist = self
    end
    
    
    def self.find_or_create_by_name(artist_name)
        find_artist = self.all.find {|artist| artist.name == artist_name} || new_artist = self.new(artist_name)
         #binding.pry

        end
    
     
    def print_songs
      @songs.each do |song|
        puts song.name
      end
    end  
end