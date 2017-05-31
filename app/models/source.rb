class Source < ActiveRecord::Base
  belongs_to :card
  belongs_to :author
end
