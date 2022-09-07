## infratop-bookers2
infratop-internのためのbookers2の作成repoです

## 使用方法
まずはこのrepoをlocalにcloneして作業ディレクトリに入ります
```bash
$ git clone https://github.com/March-mitsuki/infratop-bookers2.git

$ cd infratop-bookers2
```
rails7からActiveStorageのデフォルト画像処理ライブラリーがvipsになったため、installしてない場合はまずinstallします
```bash
# macOSを使っているならbrew経由でinstallするのは一番楽です
% brew install vips

# debian系のlinuxを使っているのならaptでinstallできます
$ sudo apt install libvips
```
windowsや他系のlinuxを使っている場合はお手数ですがご自身で調べていただけると幸いです。

これで環境準備終わりましたので、あとはいつも通りにやれば行けると思います。
```bash
# 依頼項目のinstall
$ bundle install
$ yarn install

# dev serverの起動
$ rails db:migrate
$ rails s

# RSpec test
$ rails db:migrate RAILS_ENV=test
$ bundle exec rspec spec/ --format documentation
```

## 開発環境
* rbenv version
    * 1.1.1

* ruby version
    * 3.1.2p20

* rails version
    * 7.0.3.1

* OS info
    * ubuntu 20.04 LTS
