require 'pry'
require_relative './concerns/memorable'
require_relative './concerns/findable'
require_relative './concerns/paramable'
class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  $Artist = []

  def initialize
    $Artist<< self
  end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
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

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
