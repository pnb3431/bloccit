class Commentings < ActiveRecord::Base
 # #7
   belongs_to :commentable, polymorphic: true
end