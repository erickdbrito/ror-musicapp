class Playlist < ApplicationRecord
  validates_presence_of :name, :description
end
