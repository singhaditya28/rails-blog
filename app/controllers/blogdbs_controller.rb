class BlogdbsController < ApplicationController
  before_action :set_blogdb, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /blogdbs or /blogdbs.json
  def index
    @blogdbs = Blogdb.all
  end

  # GET /blogdbs/1 or /blogdbs/1.json
  def show
  end

  # GET /blogdbs/new
  def new
    @blogdb = Blogdb.new
    @blogdb1 = Blogdb.new
  end

  # GET /blogdbs/1/edit
  def edit
  end

  # POST /blogdbs or /blogdbs.json
  def create
    @blogdb = Blogdb.new(blogdb_params)
    @blogdb1 = Blogdb.new(blogdb_params1)

    respond_to do |format|
      if @blogdb.save 
        format.html { redirect_to blogdb_url(@blogdb), notice: "Blogdb was successfully created." }
        format.json { render :show, status: :created, location: @blogdb }

      elsif @blogdb1.save
        format.html { redirect_to blogdb_url(@blogdb1), notice: "Blogdb was successfully created." }
        
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blogdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogdbs/1 or /blogdbs/1.json
  def update
    respond_to do |format|
      if @blogdb.update(blogdb_params)
        format.html { redirect_to blogdb_url(@blogdb), notice: "Blogdb was successfully updated." }
        format.json { render :show, status: :ok, location: @blogdb }
      elsif @blogdb1.update(blogdb_params1)
        format.html { redirect_to blogdb_url(@blogdb1), notice: "Blogdb was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blogdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogdbs/1 or /blogdbs/1.json
  def destroy
    @blogdb.destroy

    respond_to do |format|
      format.html { redirect_to blogdbs_url, notice: "Blogdb was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogdb
      @blogdb = Blogdb.find(params[:id])
      @blogdb1 = Blogdb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blogdb_params
      # params.require(:blogdb).permit(:username, :content)
      params.permit(:username, :content)
      # params.permit_all_parameters = true
      # {:username,
      # :content}  
      # print(:username, :content)
      # {:username => username,
      #   :content => content}
      # json = params.require(:blogdb)
      # {
      #   username: JSON.parse(json).permit(:username, :content)
      #   # content: JSON.parse(json).permit(:content)
      # }
    end

    def blogdb_params1
      params.require(:blogdb).permit(:username, :content)
    end
end
