## 第4回課題
- VPC
![VPC](/images/lecture04/VPC.png)

- EC2
![EC2](/images/lecture04/EC2_修正後.png)

- EC2インバウンドルール
  ローカルPCのIPアドレスのみ許可
![EC2 インバウンドルール](/images/lecture04/EC2_インバウンドルール.png)

- RDS
![RDS](/images/lecture04/RDS.png)

- RDSインバウンドルール
　EC2インスタンスのみ許可
![RDS インバウンドルール](/images/lecture04/RDS_インバウンドルール.png)

- RDS接続確認
![RDS 接続確認](/images/lecture04/RDS_接続確認.png)

- 感想
　今回の課題で一番苦戦したのは、EC2インスタンスにssh接続できなかったことである。
　接続できなかった理由としてはインターネットゲートウェイがアタッチできていなかったことが原因であった。
　今回のことでVPCはインターネットゲートウェイをアタッチすることが必須であることを学べた。