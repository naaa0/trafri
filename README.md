# アプリケーション名
Trafri

# アプリケーション概要
1人でトレーニングする孤独感の解消、モチベーション維持を目的としたアプリケーション。
ユーザー同士でグループを作り、チャット機能で交流することができる。

# URL
https://trafri-38215.onrender.com

# テスト用アカウント
- Basic認証ID：admin
- Basic認証パスワード：6666
- ユーザー1（太郎）<br>
　メールアドレス：aaa@aaa
　パスワード：aaa111
- ユーザー2（次郎）<br>
　メールアドレス：bbb@bbb
　パスワード：bbb111

# 利用方法
## グループの作成
1.トップページのヘッダーから、ユーザーの新規登録を行う。<br>
2.ヘッダーのグループ作成ボタンからグループの作成を行う。(ログイン必須)

## グループ内でチャットを行う
1.トップページに列挙されているグループの中から任意のグループを選択し、詳細ページに遷移する。<br>
2.グループに入るボタンでチャットルームに入り、メッセージを送信する。

# アプリケーションを作成した背景
トレーニングにおいて一番大切なことは「継続すること」ですが、それはとても難しいことで大きな課題の一つです。
これはトレーニングジムに通う友人や私自身も感じていることであり、
Youtube等のSNSでも継続のコツを取り上げたコンテンツをよく見かけます。
この課題を分析した結果、「目標や情報を共有しあえる仲間を作りづらいことによるモチベーション低下」が真因の一つであると考えました。
真因を解決するために、トレーニー（トレーニングをしている人のこと）同士の交流を促進できるWebアプリケーションを開発することに決めました。

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/18P8wfx67tpnQg9IhPHOI53TaVYtmfwlvZPKY3vCvINk/edit?usp=sharing) 

# 実装した機能について
- ユーザーの登録機能
- グループ作成機能
[![Image from Gyazo](https://i.gyazo.com/3382a4a00dc2e54e097f79ea9f94847e.gif)](https://gyazo.com/3382a4a00dc2e54e097f79ea9f94847e)
- チャット機能
[![Image from Gyazo](https://i.gyazo.com/e35b7cceab506b77e99ea7fa9e3f4b5c.gif)](https://gyazo.com/e35b7cceab506b77e99ea7fa9e3f4b5c)

# 実装予定の機能
- フォロー機能
- 個人間のチャット機能
- 活動地域の絞り込み
- ユーザーの詳細画面
- メッセージの削除機能<br>
（その他追加機能は検討中）

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/a30053ff5be9b209778578a7bdce3747.png)](https://gyazo.com/a30053ff5be9b209778578a7bdce3747)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/ee47eb21188ed07d514d394191f0309d.png)](https://gyazo.com/ee47eb21188ed07d514d394191f0309d)

# 開発環境
- Ruby
- Ruby on Rails
- MySQL
- Github
- Render
- Visual Studio Code

# ローカルでの動作方法
以下のコマンドを順に実行。<br>
% git clone https://github.com/naaa0/trafri.git<br>
% cd trafri<br>
% bundle install<br>
% yarn install<br>

# 工夫したポイント
- ユーザーが近隣で仲間を見つけやすいように、グループの活動拠点を必ず記載させるようにした。
- 自身のメッセージを右サイドに、その他ユーザーのメッセージを左サイドに表示させることで、<br>
ユーザーが日頃使い慣れているであろうLINEと似たチャット画面になるようにした。
- ユーザーが使いやすいように極力シンプルなデザインになるよう心がけた。