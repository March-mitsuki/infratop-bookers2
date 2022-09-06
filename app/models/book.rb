class Book < ApplicationRecord
    # f_key
    belongs_to :user, foreign_key: 'user_id'
end
