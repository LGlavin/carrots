class Product < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :user

  rails_admin do 
    configure :user do 
      label 'juice'
   end
  end
end
