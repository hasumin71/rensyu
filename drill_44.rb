#以下を説明してください
class Article < ActiveRecord::Base
  belongs_to :user, dependent: :destroy 
end

belongs_toはメソッドであり、:userが第一引数、dependent::destroyが第二引数となっている。
                                        第二引数の記述は{}を省略した形で、{dependent: :destroy }を表している。
●dependent: :destroyとは
  ↑を指定したクラスが消えた場合に、↑を設定したモデルが削除される。

#tweetsコントローラ内で、showアクションが定義されています。
#5行目から9行目までの、respond_toブロックは、どのような処理を行なっているか、自分の言葉で説明してください。
  tweets_controller.rb
  def index
    @tweets = Tweet.all
  
    respond_to do |format| #respond_toはコントローラー内で処理した結果を基本的にはhtml形式で返却したいが特定の呼び出しに対しては明示的にhtml以外の形式で
                          #返却したい場合に使用するメソッドです。例えば/tweets.jsonというurlでページを開いた場合、json形式で変数@tweetsの中身が展開されます。
      format.html # index.html.erb
      format.json { render json: @tweets }
      format.xml  { render xml:  @tweets }
      format.yaml { render text: @tweets.to_yaml }
    end
  end

  #answer
  #送られてきたリクエストによって、レスポンスを振り分けている。
  #例えば、/tweet、/tweet.jsonというurlでページを開いた場合,json形式で変数@tweetsの中身が展開されます。