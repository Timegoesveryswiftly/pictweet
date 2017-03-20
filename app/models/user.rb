class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # ▶︎ Database Authenticatable
  #データベースに保存されたパスワードが正しいかどうかの検証とを行ってくれます。また暗号化も同時に行うためセキュリティ面でも安心できます。
  # ▶︎ Omniauthable
  #twitter, facebookなど現代のwebサービスで必須なSNS認証を行うためのモジュールです。SNS認証をする場合このほかにもgemを追加する必要が出てくるので注意が必要です。
  # ▶︎ Confirmable
  # 登録後メールを送り、そのメールのURLをクリックすると本登録が完了するといったような仕組みを作ることが可能になります。
  # ▶︎ Recoverable
  # パスワードをリセットするためのモジュールです。
  # ▶︎ Registerable
  # 基本的にUser登録、編集、削除機能を作成することができます。
  # ▶︎ Rememberable
  # 20日間ログインしたままにすると言った、永続ログイン機能を作成することができます。ログイン画面の下の方にチェックボックスがあって、それをチェックすると永続ログインが有効化するといったような仕組みを作ることができます。
  # ▶︎ Trackable
  # サインイン回数、サインイン時間など、ユーザーの分析に必要なデータを保存しておくことができます。サービスが成長するにはユーザーの分析が不可欠なので、有用な機能ですね。
  # ▶︎ Timeoutable
  # 一定期間活動していないアカウントのログインを破棄する機能です。ログインしたままだとログイン情報がオンライン上に残ってしまい悪用されてしまう可能性もあります。セキュリティ面での向上を期待できる機能です。
  # ▶︎ Validatable
  # emailのフォーマットやパスワードの長さなど、一般的なバリデーションを追加してくれるモジュールです。
  # ▶︎ Lockable
  # ログインに何度も失敗すると、アカウントをロックすることができる機能です。こちらの機能もセキュリティ面で向上が期待できますね。
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tweets
end
