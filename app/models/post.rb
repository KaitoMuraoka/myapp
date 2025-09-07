class Post < ApplicationRecord
  # 一意性, ユニークである(タイトルが他のと被らない)
  validates :title, presence: true, length: { maximum: 10 }, uniqueness: true # 空文字は禁止、最大文字数10文字、ユニークである
  validates :body, presence: true, length: { minimum: 5 }
end
