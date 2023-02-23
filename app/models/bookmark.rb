class Bookmark < ApplicationRecord
  belongs_to :movie, foreign_key: "movie_id"
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
end
