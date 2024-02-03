class ChatsController < ApplicationController
  before_action :set_chat, only: %i[ show ]
  before_action :set_chats

  def index
  end

  def show
    render action: :index
  end

  private
    def set_chat
      @chat = Chat.find(params[:id])
    end

    def set_chats
      @chats = Chat.all
    end

    def chat_params
      params.require(:chat).permit(:name)
    end
end
