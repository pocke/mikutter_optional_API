mikutter_optional_API
=====================
license MIT  

mikutterから任意のAPIを叩きます。

##使い方
投稿ボックスにエンドポイントとオプションをJSONで記述して割り当てたショートカットキーを実行することで、任意のAPIを叩きます。  

##ex.
にゃーんと呟く  
`{ "API": "statuses/update", "status": "にゃーん" }`  
名前をにゃーんに変更する  
`{ "API": "account/update_profile", "name": "にゃーん" }`  
