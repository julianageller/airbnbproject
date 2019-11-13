class Booking < ApplicationRecord
  belongs_to :coder
  belongs_to :user, class_name: 'User'
end
