#Railsで、定期的に実行したい処理は、lib/tasks以下のディレクトリに、rakeタスクを作成して処理を記述することが多いです。
#次のコードは、全てのユーザーに対して。ユーザーが入店したかどうかを管理する"enterd_flag"というカラムをfalseにするrakeタスクです。
#rakeタスクの使い方を確認した上で、下記のrakeタスクを、ターミナルから実行するためには、どのようなコマンドを実行すればいいか、答えてください。
lib/tasks/user_checker.rb

namespace :user do
  desc "ユーザーの入店情報をリセットする"
  task reset_entered_flag: :environment do
    User.update_all(entered_flag: false)
  end
end

#answer 
rake user:reset_entered_flag

(補足)
rake [namespeceの名前]:[taskの名前]のように記述して実行します。