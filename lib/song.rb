require 'pry'
require_relative './concerns/memorable.rb'
require_relative './concerns/findable.rb'
require_relative './concerns/paramable.rb'
require_relative './concerns/init.rb'

class Song
  extend Memorable
  extend Findable
  include Paramable
  include Init

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
