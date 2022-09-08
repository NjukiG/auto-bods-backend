class Package < ActiveRecord::Base
    has_many :members
end