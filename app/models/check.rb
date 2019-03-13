class Check < ApplicationRecord
  belongs_to :memo
  belongs_to :user
  validates_uniqueness_of :memo_id, scope: :user_id
end
