# == Schema Information
#
# Table name: posts
#
#  id        :integer          not null, primary key
#  title     :string           not null
#  author_id :integer          not null
#  url       :string
#  content   :text
#  sub_id    :integer          not null
#

class Post < ActiveRecord::Base
  validates :title, :author_id, :sub_id, presence: true

  belongs_to :sub

  belongs_to :author,
  foreign_key: :author_id,
  class_name: :User

end
