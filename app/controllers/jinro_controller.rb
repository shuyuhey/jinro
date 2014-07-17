# coding: utf-8

class JinroController < ApplicationController
  def index
    render 'jinro/login'
  end

  def login
    session[:name] = params[:name]
  end
end
