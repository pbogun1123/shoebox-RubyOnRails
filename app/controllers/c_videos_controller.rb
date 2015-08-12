class CVideosController < ApplicationController
  # GET /c_videos
  # GET /c_videos.json
  def index
    @c_videos = CVideo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @c_videos }
    end
  end

  # GET /c_videos/1
  # GET /c_videos/1.json
  def show
    @c_video = CVideo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @c_video }
    end
  end

  # GET /c_videos/new
  # GET /c_videos/new.json
  def new
    @c_video = CVideo.new
	@client_choice = Client.find(:all, :order => "C_LName").collect do |d| [d.C_LName + ", " + d.C_FName, d.id] end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @c_video }
    end
  end

  # GET /c_videos/1/edit
  def edit
    @c_video = CVideo.find(params[:id])
	@client_choice = Client.find(:all, :order => "C_LName").collect do |d| [d.C_LName + ", " + d.C_FName, d.id] end
  end

  # POST /c_videos
  # POST /c_videos.json
  def create
    @c_video = CVideo.new(params[:c_video])

    respond_to do |format|
      if @c_video.save
        format.html { redirect_to @c_video, notice: 'A new video was successfully created.' }
        format.json { render json: @c_video, status: :created, location: @c_video }
      else
        format.html { render action: "new" }
        format.json { render json: @c_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /c_videos/1
  # PUT /c_videos/1.json
  def update
    @c_video = CVideo.find(params[:id])

    respond_to do |format|
      if @c_video.update_attributes(params[:c_video])
        format.html { redirect_to @c_video, notice: 'The video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @c_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_videos/1
  # DELETE /c_videos/1.json
  def destroy
    @c_video = CVideo.find(params[:id])
    @c_video.destroy

    respond_to do |format|
      format.html { redirect_to c_videos_url }
      format.json { head :no_content }
    end
  end
end
