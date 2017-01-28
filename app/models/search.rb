class Search < ApplicationRecord
  has_many :user_searches
  validates_uniqueness_of :search

  def self.related_searches(search)
    where('search LIKE ?', "#{search}%")
      .order('user_searches_count DESC')
      #.pluck(:search, :user_searches_count)
  end

  def self.get_by_prhase(search_phrase)
    select(:id)
      .find_by(search: search_phrase)
      .id
  end
end
