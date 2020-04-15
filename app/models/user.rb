class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def added_as_favourite(show)
    favourite_shows = self.favourite_show_ids
    favourite_shows << show.id
    self.update(favourite_show_ids: favourite_shows)
  end

  def removed_from_favourite(show)
    favourite_shows = self.favourite_show_ids
    favourite_shows.delete_at(favourite_shows.index(show.id))
    self.update(favourite_show_ids: favourite_shows)
  end
end
