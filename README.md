# RaiseTech AWSフルコース

##概要
- 2024/5月から受講開始
- 最終課題としてCI/CDパイプラインを用いたRailsアプリケーションのインフラストラクチャの自動構築と稼働の実施
- 学習記録の掲載

##インフラ構成図
![インフラ構成図](images/構成図.png)

##実施内容
1. AWS CloudFormationを使用して、VPC・EC2・RDS・ALB・S3を構築
2. Ansibleを用いて、Railsアプリケーション実行環境の自動構築
3. Serverspecを使用して、構築したサーバーの自動テストを実施
4. CircleCIを用いて、上記プロセスのパイプラインを構築と自動化

## 学習記録
|講座|課題|レポート|備考|
|:---|:---|:---|:---|
|第1回|AWSアカウントの作成<br>IAMユーザーの作成<br>ルートユーザーとIAMユーザーのMFA保護<br>IAMユーザーでBilling閲覧設定<br>Cloud9の作成|-|
|第2回|GitHubアカウントの作成<br>課題提出用リポジトリの作成とブランチ保護ルールの追加<br>Cloud9のGit設定変更|[lecture02.md](lecture02.md)|-|
|第3回|RailsサンプルアプリケーションをCloud9上でデプロイ<br>APサーバーの動作確認<br>DBサーバーの動作確認<br>Railsの構成管理ツールの確認<br>|[lecture03.md](lecture03.md)|-|
|第4回|VPCの作成<br>EC2の作成<br>RDSの作成<br>EC2からRDSに接続<br>|[lecture04.md](lecture04.md)|-|
|第5回|1. 組み込みサーバー（Puma）でRailsサンプルアプリをデプロイ<br>2. Webサーバー（Nginx）とAPサーバー（Unicorn）でデプロイ<br>3. ELB（ALB）の追加<br>4. S3の追加<br>5. 構成図の作成|[lecture05.md](lecture05.md)|-|
|第6回|CloudTrail（証跡）のイベント履歴確認<br>CloudWatch（監視・通知）アラームを使ったALBのアラーム設定<br>AWS利用料の見積書作成<br>AWSの請求とコスト管理から現在の利用料確認|[lecture06.md](lecture06.md)|-|
|第7回|第5回で構築した環境の脆弱性とその対策|[lecture07.md](lecture07.md)|-|
|第8回|課題なし<br>第5回課題のライブコーディング視聴-1|-|
|第9回|課題なし<br>第5回課題のライブコーディング視聴-2|-|
|第10回|第5回課題で構築した環境をCloudFormationで構築|[lecture10.md](lecture10.md)<br>[lecture10](lecture10)|-|
|第11回|ServerSpecによるインフラの自動テスト|[lecture11.md](lecture11.md)<br>[lecture11_spec.rb](lecture11/sample_spec.rb)|-|
|第12回|CI/CDツール CircleCIの使用|[lecture12.md](lecture12.md)|-|
|第13回|プロビジョニングツールとCI/CDツールの併用|実施中|CircleCIでCFn→ansible→ServerSpecのワークフローを回す|
|第14回|第13回課題のライブコーディング-1-|該当なし|-|
|第15回|第13回課題のライブコーディング-2-|該当なし|-|
|第16回|現場へ出ていくにあたって|該当なし|-|