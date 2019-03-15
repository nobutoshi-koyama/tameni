class Chousei < ApplicationRecord
    has_many :syukkas
    accepts_nested_attributes_for :syukkas, allow_destroy: true, reject_if: :all_blank
    
    
end
