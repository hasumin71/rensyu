①product.rbにメソッドadd_taxを追加してください。このメソッド内で、ユーザーの入力値に8%を加算してください。
②上記の条件メソッドを使用し、上の条件を満たすようコードを書き換えてください。

class Product < ApplicationRecord
  def add_tax
    self.price = (price * 1.08).round
  end
end

def create
  @product = Product.new(product_params)
  @product.add_tax

  respond_to do |format|
    if @product.save
      format.html { redirect_to @product, notice: 'Product was successfully created.' }
      format.json { render :show, status: :created, location: @product }
    else
      format.html { render :new }
      format.json { render json: @product.errors, status: :unprocessable_entity }
    end
  end
end

＜補足＞
・モデルのファイル内にメソッドを記述することで、モデルクラスのインスタンスに対してメソッドを追加できます。
この場合、product.rbにメソッドを書けば、Productクラスのインスタンスである@productに対して、@product.add_taxの様にメソッドを使うことができます。

・クラス内でセッターを使う場合（priceに値を代入する場合）は、selfを省略することができません。そのためself.price = という記述の仕方になります。ゲッターを使う場合（priceの値を参照する場合）はselfは省略可能のため、price * 1.08 という書き方ができます。