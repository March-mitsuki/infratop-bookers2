class Book < ApplicationRecord
    # f_key
    belongs_to :user, foreign_key: 'user_id'

    validates :title, presence: true
    validates :body, presence: true, length: {
        maximum: 200
    }
end
