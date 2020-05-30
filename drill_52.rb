#railsには悪意のある攻撃に対してセキュリティーを高める仕組みが様々用意されています
#CSRFと呼ばれるサイトのなりすましによるクラッキングに対して、どのような対策が取られているか述べてください

#application.contorollerにデフォルトで以下が記述されている 
  protect_from_forgery with_exception
#これによりアプリで作られたフォームに対してトークンが発行され、正しいフォームからの通信なのかを判別することができる
  