# クライアントとサーバーを結び付けるためのファイル
class MessageChannel < ApplicationCable::Channel
  def subscribed
    # サーバーとクライアントを関連付けるメソッド
    stream_from 'message_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
