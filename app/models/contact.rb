class Contact < ApplicationRecord
    validates :name, presence: true
    validates :info, presence: true, uniqueness: true, length: { maximum: 11 }
end
