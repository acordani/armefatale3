class Order < ApplicationRecord
  belongs_to :city
  belongs_to :user
  belongs_to :citysearch
end
