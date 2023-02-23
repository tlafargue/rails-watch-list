class Movie < ApplicationRecord
  has_many :bookmarks

  before_destroy :ensure_no_bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  def ensure_no_bookmarks
    unless bookmarks.empty?
      raise ActiveRecord::InvalidForeignKey, 'Cannot delete movie with bookmarks.'
    end
  end
end
