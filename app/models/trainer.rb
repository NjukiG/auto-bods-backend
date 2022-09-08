class Trainer < ActiveRecord::Base
    has_many :members
    has_many :reviews, through: :members
end