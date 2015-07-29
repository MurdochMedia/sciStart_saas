class Contact < ActiveRecord::Base
    validates :name, presence: true
    validates :email, presnence: true
end