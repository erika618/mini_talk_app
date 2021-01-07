class MessagesController < ApplicationController
  def new
    # 保存されているメッセージを全て表示したいため
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.new(text: params[:message][:text])
  end
end