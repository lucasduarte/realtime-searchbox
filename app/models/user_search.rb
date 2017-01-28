class UserSearch < ApplicationRecord
  belongs_to :search, counter_cache: true

  def self.search(search_phrase)

    search = Search.new(search: search_phrase)

    unless search.save
      search_id = Search.get_by_prhase(search_phrase)
      create(search_id: search_id)
    else
      create(search_id: search.id)
    end
  end
end
