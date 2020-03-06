class Player < ActiveRecord:: Base
    has_many :drafts
    has_many :coaches, through: :drafts
end