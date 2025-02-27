require 'pry'
require_relative './concerns/memorable'
require_relative './concerns/findable'
require_relative './concerns/paramable'
class Artist
  attr_accessor :name
  attr_reader :songs
extend Memorable::ClassMethods
extend Findable
include Paramable
$Artist = []

  def initialize
    $Artist << self
    @songs = []
  end

  # def self.find_by_name(name)
  #   $Artist.detect{|a| a.name == name}
  # end

  def self.all
    $Artist
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
