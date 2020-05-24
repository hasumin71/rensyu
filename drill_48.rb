class Impression < ActiveRecord::Base
  VALID_YOUTUBE_URL_REGEX = ???
  validates :url, presence: true, format: { with: VALID_YOUTUBE_URL_REGEX }
end

#2行目のvalidationを完成させてください。ただし条件は、「youtube」という文字が投稿された文字列に含まれていることを確かめることとします。
VALID_YOUTUBE_URL_REGEX = /\A.*youtube.*\z/ #/は正規表現をする時に形式。#\Aは文字列の先頭,\zは文字列の末尾を意味する。 #.はなんの文字でも良い一文字を表現している。 #*は直前の文字が一文字以上連続するという良い意味。
validates :text, presence: true, format: { with: VALID_YOUTUBE_URL_REGEX }
（補足）

