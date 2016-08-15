class Comment < ApplicationRecord
  #validates :body, presence: true ,message:" sadsad"
  belongs_to :place
end
