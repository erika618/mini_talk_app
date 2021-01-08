class MessagesController < ApplicationController
  def new
    # 保存されているメッセージを全て表示したいため
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.new(text: params[:message][:text])
    if @message.save
      # broadcastを通して、'message_channel'に向けて@messageを送信する
      ActionCable.server.broadcast 'message_channel', content: @message
    end
  end
end
