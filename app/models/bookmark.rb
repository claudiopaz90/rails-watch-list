class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :moovie

  validates :comment, length: { minimun: 6 }, presence: true
  validates :movie_id, uniqueness: { scope: :list_id }
end
