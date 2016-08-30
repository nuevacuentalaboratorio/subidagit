class DashboardsController < ApplicationController

  def dashboard_1
    @skugraphs = Skugraph.all
     
    @ventaunidads = Ventaunidad.all

    @payments = Payment.all
  end

  def dashboard_2
  end



  def dashboard_3
    @extra_class = "sidebar-content"
  end

  def dashboard_4
    render :layout => "layout_2"
  end

  def dashboard_4_1
  end

  def dashboard_5
  end

  def channels
    @channels = Channel.all
  end

  def ventaunidads
   
  end

end
