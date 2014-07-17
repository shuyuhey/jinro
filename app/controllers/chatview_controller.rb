# coding: utf-8

class ChatviewController < ApplicationController
  before_filter :login_required

  def index
    @current_user  = session[:name]
    render 'chat/index'
  end

  def login_required
    if session[:name] == nil then
      redirect_to :controller =>'jinro', :action =>'index'
    end
  end
end
