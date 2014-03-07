class ClientsController < ApplicationController
  # GET /clients
  # GET /clients.json
  
  def index
    if (Client.where(:email => current_user.email).exists?)
      @client = Client.find_by_email(current_user.email)
      #@journals = @client.journals.order("created_at").last
      @weights = @client.journals.find(:all,:select=>"weight").map(&:weight)
    else
      redirect_to :action => "new"
    end
  end

  def admin
    @clients = Client.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clients }
    end
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
    @client = Client.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @client }
    end
  end

  # GET /clients/new
  # GET /clients/new.json
  def new
    @client = Client.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @client }
    end
  end

  # GET /clients/1/edit
  def edit
    @client = Client.find_by_email(current_user.email)
    #@client = Client.find(params[:id])
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(params[:client])
    @client.email = current_user.email

    respond_to do |format|
      if @client.save
        format.html { redirect_to '/', notice: 'Your profile was successfully created. Thank you!' }
        format.json { render json: @client, status: :created, location: @client }
      else
        format.html { render action: "new" }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clients/1
  # PUT /clients/1.json
  def update
    @client = Client.find(params[:id])
    @client.email = current_user.email

    respond_to do |format|
      if @client.update_attributes(params[:client])
        format.html { redirect_to '/', notice: 'Your profile has been updated. Thanks!' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    respond_to do |format|
      format.html { redirect_to clients_url }
      format.json { head :no_content }
    end
  end
end
