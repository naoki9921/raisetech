## 第11回課題
### 課題内容
**SeverSpecのテストが成功すること**
* サンプルコードを使ってSeverspecのテストを稼働させる
* [サンプルコード](https://github.com/MasatoshiMizumoto/raisetech_documents/tree/main/aws/samples/serverspec)
* [公式 doc](https://serverspec.org/)


### 実施内容
1. テスト項目作成
- ツリー情報<br>
![ツリー情報](/images/lecture11/Tree.png) 

- テストコードを変更
- 「sample_spec.rb」を以下の通り変更
- before(default)<br>
![sample_spec_rbデフォルト](/images/lecture11/Test_File_Default.png)
- after<br>
![sample_spec_rbアフター](/images/lecture11/Test_File.png)<br>


2. テスト実行
- `rake spec`でテストを実行<br>
▼結果：成功<br>
![Test成功画面](/images/lecture11/Test_success.png)<br>

3. テスト失敗事例
- 以下のようにテストが失敗した<br>
![Test失敗画面](/images/lecture11/Test_failure.png)

- ポート80番でのリッスンができていない<br>
原因：Nginx（Webサーバ）が起動していなかった<br>
　　　RDSを起動していなかった<br>
　　　ポート80でリッスンするプロセスが存在しないため、テストが失敗した<br>
解決方法：Nginx（Webサーバ）を起動することで解決<br>
　　　　　RDSを起動することで解決<br>

* ループバックアドレスで返答が返ってこない<br>
原因：Puma（APサーバ）が起動していなかった<br>
　　　RDSを起動していなかった<br>
　　　Puma（APサーバ）を起動していなかったため、サイトを表示できていなかった<br>
![Nginxエラー表示画面](/images/lecture11/Nginx.png)<br>
解決方法：Puma（APサーバ）を起動することで解決<br>
　　　　　RDSを起動することで解決<br>


### 感想
* テストの項目によって書き方が異なることを学んだ。（インストール確認とバージョン確認など）
* バージョン確認を2種類の方法でテスト項目を作成することで1つだけでなく、2つの記載の仕方を学ぶことができた。
* 数回、テストが失敗したが失敗し、解決してを繰り返すことでより知識を深めることができた。
