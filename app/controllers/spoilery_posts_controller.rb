class SpoileryPostsController < OpenReadController
  before_action :set_spoilery_post, only: [:show, :update, :destroy]

  # GET /spoilery_posts
  # GET /spoilery_posts.json
  def index
    @spoilery_posts = SpoileryPost.all

    render json: @spoilery_posts
  end

  # GET /spoilery_posts/1
  # GET /spoilery_posts/1.json
  def show
    render json: @spoilery_post
  end

  # POST /spoilery_posts
  # POST /spoilery_posts.json
  def create
    # @spoilery_post = SpoileryPost.new(spoilery_post_params)
    @spoilery_post = current_user.spoilery_posts.build(spoilery_post_params)
# current_user.spoilery_posts.build instead of above SpoileryPost. add user has many

    if @spoilery_post.save
      render json: @spoilery_post, status: :created, location: @spoilery_post
    else
      render json: @spoilery_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spoilery_posts/1
  # PATCH/PUT /spoilery_posts/1.json
  def update
    # @spoilery_post = SpoileryPost.find(params[:id])
    @spoilery_post = current_user.spoilery_posts.find(params[:id])
    # current_user.spoilery_posts.find instead of above SpoileryPost. add user has many

    if @spoilery_post.update(spoilery_post_params)
      head :no_content
    else
      render json: @spoilery_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spoilery_posts/1
  # DELETE /spoilery_posts/1.json
  def destroy
    @spoilery_post.destroy

    head :no_content
  end

  private

    def set_spoilery_post
      @spoilery_post = SpoileryPost.find(params[:id])
    end

    def spoilery_post_params
      # params[:spoilery_post]
      params.require(:spoilery_post).permit(:title, :content, :game_id, :user_id)
    end
end
