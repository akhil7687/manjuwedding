class HomeController < ApplicationController
  def index

    respond_to do |format|
      format.html
    end
  end

  def attenders
    respond_to do |format|
      format.html
    end
  end

  def mark_stat

    cookie_id = cookies[:visitor_cookie] || DateTime.now.strftime('%Q')
    cookies[:visitor_cookie] = { value: cookie_id, expires: 1.year }
    wd = WedAttender.where("cookie_id=?",cookie_id).take
    if wd.blank?
      wd = WedAttender.new
    end
    wd.att_name = params[:name]
    wd.status = params[:stat]
    wd.cookie_id = cookie_id
    wd.save

    cookies[:att_status] = { value: wd.status, expires: 1.year }

    respond_to do |format|
      format.js
    end
  end
end

