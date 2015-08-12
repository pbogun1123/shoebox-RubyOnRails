class CBlogsController < ApplicationController
  # GET /c_blogs
  # GET /c_blogs.json
  def index
    @c_blogs = CBlog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @c_blogs }
    end
  end

  # GET /c_blogs/1
  # GET /c_blogs/1.json
  def show
    @c_blog = CBlog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @c_blog }
    end
  end

  # GET /c_blogs/new
  # GET /c_blogs/new.json
  def new
    @c_blog = CBlog.new
	@client_choice = Client.find(:all, :order => "C_LName").collect do |d| [d.C_LName + ", " + d.C_FName, d.id] end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @c_blog }
    end
  end

  # GET /c_blogs/1/edit
  def edit
    @c_blog = CBlog.find(params[:id])
	@client_choice = Client.find(:all, :order => "C_LName").collect do |d| [d.C_LName + ", " + d.C_FName, d.id] end
  end

  # POST /c_blogs
  # POST /c_blogs.json
  def create
    @c_blog = CBlog.new(params[:c_blog])

    respond_to do |format|
      if @c_blog.save
        format.html { redirect_to @c_blog, notice: 'A bew blog was successfully created.' }
        format.json { render json: @c_blog, status: :created, location: @c_blog }
      else
        format.html { render action: "new" }
        format.json { render json: @c_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /c_blogs/1
  # PUT /c_blogs/1.json
  def update
    @c_blog = CBlog.find(params[:id])

    respond_to do |format|
      if @c_blog.update_attributes(params[:c_blog])
        format.html { redirect_to @c_blog, notice: 'The blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @c_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_blogs/1
  # DELETE /c_blogs/1.json
  def destroy
    @c_blog = CBlog.find(params[:id])
    @c_blog.destroy

    respond_to do |format|
      format.html { redirect_to c_blogs_url }
      format.json { head :no_content }
    end
  end
end
