class SocailLinksController < ApplicationController
  before_action :set_socail_link, only: [:show, :edit, :update, :destroy]

  # GET /socail_links
  # GET /socail_links.json
  def index
    @socail_links = SocailLink.all
  end

  # GET /socail_links/1
  # GET /socail_links/1.json
  def show
  end

  # GET /socail_links/new
  def new
    @socail_link = SocailLink.new
  end

  # GET /socail_links/1/edit
  def edit
  end

  # POST /socail_links
  # POST /socail_links.json
  def create
    @socail_link = SocailLink.new(socail_link_params)

    respond_to do |format|
      if @socail_link.save
        format.html { redirect_to @socail_link, notice: 'Socail link was successfully created.' }
        format.json { render :show, status: :created, location: @socail_link }
      else
        format.html { render :new }
        format.json { render json: @socail_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socail_links/1
  # PATCH/PUT /socail_links/1.json
  def update
    respond_to do |format|
      if @socail_link.update(socail_link_params)
        format.html { redirect_to @socail_link, notice: 'Socail link was successfully updated.' }
        format.json { render :show, status: :ok, location: @socail_link }
      else
        format.html { render :edit }
        format.json { render json: @socail_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socail_links/1
  # DELETE /socail_links/1.json
  def destroy
    @socail_link.destroy
    respond_to do |format|
      format.html { redirect_to socail_links_url, notice: 'Socail link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socail_link
      @socail_link = SocailLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def socail_link_params
      params.require(:socail_link).permit(:name, :link)
    end
end
