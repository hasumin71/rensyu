#新アプを作成
rails new sample-app -d mysql
#authorsテーブルがある
rails g scaffold author name:string
#booksテーブルがある #・authorsとbooksは１対多のアソシエーションが組まれている
rails g scaffold book name:string author:references
#authorsテーブルのレコードを削除すると、関連するbooksテーブルのレコードも同時に削除される
class Author < ApplicationRecord
  has_many :books ,dependent: :destroy
end
