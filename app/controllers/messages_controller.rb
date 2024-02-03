class MessagesController < ApplicationController
  before_action :set_chat, only: %i[create]
  
  def create
    chat.messages.create(message_params.merge({ user: current_user }))

    render partial: "messages/form"
  end

  private

    def set_chat
      @chat = Chat.find(params[:chat_id])
    end

    def message_params
      params.require(:message).permit(:content)
    end
end
