# Special
Engine Sampleのユーザの特別ページを表示します。

## 使用法
インストール後、`http://localhost:3000/special`にアクセスしてください。

## インストール

`Gemfile`に以下を追加：

```ruby:Gemfile
gem 'special'
```

`config/routes.rb`に以下を追加：

```ruby:config/routes.rb
mount Special::Engine => 'special'
```

コンソールで以下を実行：
```bash
$ bundle
```

## 開発

SpecialはRailsエンジンですが、Engine SampleのSpecialページを表示するものであるため、test/dummyアプリにEngine Sampleの機能の一部を再現しています。そのために、Specialのセットアップの他に、test/dummyのセットアップも必要です。

### セットアップ

#### specialのセットアップ

```console
$ bundle install
```

#### test/dummyのセットアップ

```console
$ cd test/dummy
$ rails db:migrate
$ rails db:reset
```


### Engine Sample開発者向け

#### モデルの共有

Engine Sampleにおいて、下記モデルの属性に変更があった場合は速やかに `test/dummy` のモデルやマイグレーション、シードを更新してください。

- Project
- User
- Page

#### スタイルシート・Javascriptの共有

Engine Sampleにおいて、スタイルシートに変更があった場合は速やかに `test/dummy` のassetsを更新してください。

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
