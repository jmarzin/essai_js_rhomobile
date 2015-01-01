require 'rho/rhocontroller'
require 'helpers/browser_helper'

class Model001Controller < Rho::RhoController
  include BrowserHelper

  # GET /Model001
  def index
    @model001s = Model001.find(:all)
    render :back => '/app'
  end

  # GET /Model001/{1}
  def show
    @model001 = Model001.find(@params['id'])
    if @model001
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /Model001/new
  def new
    @model001 = Model001.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /Model001/{1}/edit
  def edit
    @model001 = Model001.find(@params['id'])
    if @model001
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /Model001/create
  def create
    @model001 = Model001.create(@params['model001'])
    redirect :action => :index
  end

  # POST /Model001/{1}/update
  def update
    @model001 = Model001.find(@params['id'])
    @model001.update_attributes(@params['model001']) if @model001
    redirect :action => :index
  end

  # POST /Model001/{1}/delete
  def delete
    @model001 = Model001.find(@params['id'])
    @model001.destroy if @model001
    redirect :action => :index  
  end
end
