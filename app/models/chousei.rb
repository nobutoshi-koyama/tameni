class Chousei < ApplicationRecord
    has_many :syukkas
    accepts_nested_attributes_for :syukkas
end
