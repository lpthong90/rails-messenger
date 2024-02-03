class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  attr_reader :chat
  alias current_chat chat

  helper_method :current_chat
end
