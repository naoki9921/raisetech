## 第4回課題
- VPC
![VPC](/images/VPC.png)

- EC2
![EC2](/images/EC2.png)

- EC2インバウンドルール
  ローカルPCとVPCのデフォルトDNSサーバのみ許可
![EC2 インバウンドルール](/images/EC2_インバウンドルール_修正後_1.png)

- RDS
![RDS](/images/RDS.png)

- RDSインバウンドルール
　EC2インスタンスのみ許可
![RDS インバウンドルール](/images/RDS_インバウンドルール.png)

- RDS接続確認
![RDS 接続確認](/images/RDS_接続確認.png)

- 感想
　今回の課題で一番苦戦したのは、EC2インスタンスにssh接続できなかったことである。
　接続できなかった理由としてはインターネットゲートウェイがアタッチできていなかったことが原因であった。
　今回のことでVPCはインターネットゲートウェイをアタッチすることが必須であることを学べた。