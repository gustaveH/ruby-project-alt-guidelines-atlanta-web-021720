class Coach < ActiveRecord:: Base
    has_many :drafts
    has_many :players, through: :drafts
end