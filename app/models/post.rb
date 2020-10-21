class Post < ApplicationRecord
    has_many :comments
    validates :title, presence: true,
                        length: {minimum: 5}
    validates :title, format: { with: /\D/, message: 'it cant be mumbers' }
end
