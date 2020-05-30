#routes.rbでは、resourcesを使ってルーティングを定義することをお伝えしてきました。
#ところで、resourcesの代わりにresourceを使ってルーティングを定義することもできます。
#resourceを利用した際に生成されるルーティングについて、resourcesを用いた場合との主な違いを2点、説明してください。

○id付きのパスが生成されない、show,editアクションの実行にidが必要ない場合に有効
○indexアクション用のルーティングが生成されない