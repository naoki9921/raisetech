# 第6回授業課題

## AWSの利用記録をCloudTrailのイベント履歴から探し出す（選んだイベントの内容を３つ取り上げる）
### イベント名：StopInstances
 ![event](/images/lecture06/event.png)
### 含まれている内容3つをピックアップ
- "event Time":"2024-07-06T03:18:26z" 
- "eventSource":"ec2.amazonaws.com"  
- "eventName": "StopInstances"  
### イベントレコード
  ![eventrecord](/images/lecture06/eventrecord.png)

## CloudWatchアラームを使ってALBのアラームを設定しメール通知を確認
対象およびメトリクス：ALB/UnhealtyHostCount  
閾値およびアクション：60 秒あたりに 1 以上/E メール通知（Amazon SNS を利用)
### アラームとアクションを設定した状態で動作確認
  - OKの状態
  ![ok](/images/lecture06/ok.png)
  - Railsアプリ起動状態  時：OK状態のメールが届く
  ![ok_email](/images/lecture06/ok_email.png)
  - アラームの状態
  ![alarm](/images/lecture06/alarm.png)
  - Railsアプリ停止状態 の時：Alarm状態のメールが届く
  ![alarm_email](/images/lecture06/alarm_email.png)


## AWS利用料の見積作成  
 - 見積は[こちら](https://calculator.aws/#/estimate?id=e9c714ca69410ac0994f9b7c33056100b5aa0c3e)

## 現在の利用料金の確認
 - 今月の請求の概要
 ![cost](/images/lecture06/cost.png)
 - 内訳
 ![pricelist](/images/lecture06/pricelist.png)
 - サービス別料金表から、EC2に"free tire"の表記があることを確認
 - EC2の使用は無料利用枠に収まっている
 ![ec2_cost](/images/lecture06/ec2_cost.png)

## 感想
 - 第5回の課題をやっているときにも思ったが、ログの大切さを学ぶことができた。
 - コスト管理はあまり気にしていなかったが、これからはどれくらい料金が発生していて、どのサービスで料金が発生しているのかを機にかけようと思う。
 - VPCの料金が発生している原因はパブリックIPv4アドレスの使用によるもので、これはVPCで起動されたリソースに関連付けられているため、料金が発生していることがわかった。
