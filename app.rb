require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

# ここにコードを書こう

get '/' do
    erb :index
end

get '/answer/yes' do
    @message = 'すごい！正解です！！'
    @is_correct = true
    @bilson_img = '/get-method/public/img/maru_big.png'
    erb :answer
end

get '/answer/no' do
    @message = 'ざんねん！！もう一回チャレンジしてみよう！'
    @is_correct = false
    @bilson_img = '/get-method/public/img/maru_big.png'
    erb :answer
end