#
# create_table "subs", force: :cascade do |t|
#   t.string   "title",        null: false
#   t.text     "description",  null: false
#   t.integer  "moderator_id", null: false
#   t.datetime "created_at"
#   t.datetime "updated_at"
# end

class Sub < ActiveRecord::Base
  validates :title, :description, :moderator_id, presence: true

  has_many :posts

  belongs_to :moderator,
  foreign_key: :moderator_id,
  class_name: :User

  
end
