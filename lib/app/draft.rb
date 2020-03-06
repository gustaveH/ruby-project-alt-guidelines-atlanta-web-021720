class Draft < ActiveRecord:: Base
    belongs_to :coach
    belongs_to :player
end