# 第5回課題

## 1. EC2 上にサンプルアプリケーションをデプロイ
### 組み込みサーバーを使用した動作確認
 - 動作確認
 　![組み込みサーバー](/images/lecture05/puma_startweb.png)

### Webサーバー(Nginx)とAPサーバー(Puma)に分離して動作確認
 - EC2のセキュリティグループのインバウンドルールを80番ポート許可
 　![80ポートをインバウンドルール](/images/lecture05/ec2sg_in_allow80.png)
 - UnixSocketを使ったPumaの動作確認
 　![puma単体動作確認](/images/lecture05/puma_unixsocket_connect.png)
 - Nginx単体での起動を確認
 　![Nginx単体起動](/images/lecture05/nginx_start.png)
 - NginxとPumaをUnixSocketを通して連携してからサンプルアプリケーションの動作確認
 　![Nginxpuma連携](/images/lecture05/nginxpuma_connect.png)

## 2. ELB追加
### ALBの作成
   ![ALB概要](/images/lecture05/alb_create.png)

### セキュリティグループ
 - ELBのインバウンドルールは80番許可（EC2のセキュリティグループ構成と同じ）
   ![ELBインバウンドルール](/images/lecture05/alb_sg_allow80port.png)
 - EC2のインバウンドルールはELBからの通信を許可にする
   ![EC2インバウンドルール（ALB）](/images/lecture05/ec2_sg_allowalbsg.png)

### ALBから接続して動作確認
   ![ALBで起動](/images/lecture05/alb_ap_connect.png)

## 3. サンプルAPの画像保存先としてS3を追加
### EC2にアクセス権限があるS3バケットを作成
 - S3バケット作成
   ![s3バケット概要](/images/lecture05/s3_create.png)
 - アクセス権限をEC2に付与（S3へのアクセス権限を許可するIAMロールをEC2にアタッチ）
   ![IAMロールアタッチ](/images/lecture05/s3role_attachec2.png)

### S3に画像を保存
 - サンプルアプリケーションに画像を保存
   ![APに画像保存](/images/lecture05/s3_picture_save.png)
 - S3に上記画像が保存されていることを確認
   ![S3に画像保存](/images/lecture05/s3_bucket_picture.png)

## 4.aws構成図  
   ![aws環境構成図](/images/lecture05/diagram2.png)
   
## 5.感想
 - 設定ファイルを編集したらその設定を読み込ませるために再起動をすることが必要なことを学んだ。
 - 再起動をしなかったことで設定がうまくできているはずなのにエラーが出ることがあったため、いい学びになった。
 - また、設定ファイルの内容を理解するのに時間がかかった。