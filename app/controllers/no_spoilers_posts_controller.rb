class NoSpoilersPostsController < OpenReadController
  before_action :set_no_spoilers_post, only: [:show, :update, :destroy]

  # GET /no_spoilers_posts
  # GET /no_spoilers_posts.json
  def index
    @no_spoilers_posts = NoSpoilersPost.all

    render json: @no_spoilers_posts
  end

  # GET /no_spoilers_posts/1
  # GET /no_spoilers_posts/1.json
  def show
    render json: @no_spoilers_post
  end

  # POST /no_spoilers_posts
  # POST /no_spoilers_posts.json
  def create
    @no_spoilers_post = NoSpoilersPost.new(no_spoilers_post_params)

    if @no_spoilers_post.save
      render json: @no_spoilers_post, status: :created, location: @no_spoilers_post
    else
      render json: @no_spoilers_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /no_spoilers_posts/1
  # PATCH/PUT /no_spoilers_posts/1.json
  def update
    @no_spoilers_post = NoSpoilersPost.find(params[:id])

    if @no_spoilers_post.update(no_spoilers_post_params)
      head :no_content
    else
      render json: @no_spoilers_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /no_spoilers_posts/1
  # DELETE /no_spoilers_posts/1.json
  def destroy
    @no_spoilers_post.destroy

    head :no_content
  end

  private

    def set_no_spoilers_post
      @no_spoilers_post = NoSpoilersPost.find(params[:id])
    end

    def no_spoilers_post_params
      # params[:no_spoilers_post]
      params.require(:no_spoilers_post).permit(:title, :content)
    end
end
