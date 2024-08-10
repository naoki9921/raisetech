require 'spec_helper'

# ポート番号80をlisten_portという変数に代入。以下のテスト項目でこのポート番号を使用
listen_port = 80

# rubyのバージョンが3.2.3であることを確認する
describe command('ruby -v') do
  its(:stdout) { should match 'ruby 3.2.3' }
end

# gemとしてbundlerのバージョン2.3.14がインストールされていることを確認する
describe package('bundler') do
  it { should be_installed.by('gem').with_version('2.3.14') }
end

# gemとしてrailsのバージョン7.1.3.2がインストールされていることを確認する
describe package('rails') do
  it { should be_installed.by('gem').with_version('7.1.3.2') }
end

# nodeのバージョンが17.9.1であることを確認する
describe command('node -v') do
  its(:stdout) { should match 'v17.9.1' }
end

# yarnのバージョンが1.22.19であることを確認する
describe command('yarn -v') do
  its(:stdout) { should match '1.22.19' }
end

# nginxがインストールされていることを確認する
describe package('nginx') do
  it { should be_installed }
end

# 80番ポートをlistenしていることを確認する
describe port(listen_port) do
  it { should be_listening }
end

# curlコマンドでhttpリクエストを飛ばし、返ってくるステータスコードが200(ok)であるか確認する
describe command('curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end
