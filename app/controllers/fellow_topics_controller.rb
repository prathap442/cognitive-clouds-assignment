class FellowTopicsController < ApplicationController
  before_action :set_fellow_topic, only: [:show, :edit, :update, :destroy]

  # GET /fellow_topics
  # GET /fellow_topics.json
  def index
    @fellow_topics = FellowTopic.all
  end

  # GET /fellow_topics/1
  # GET /fellow_topics/1.json
  def show
  end

  # GET /fellow_topics/new
  def new
    @fellow_topic = FellowTopic.new
  end

  # GET /fellow_topics/1/edit
  def edit
  end

  # POST /fellow_topics
  # POST /fellow_topics.json
  def create
    @fellow_topic = FellowTopic.new(fellow_topic_params)

    respond_to do |format|
      if @fellow_topic.save
        format.html { redirect_to @fellow_topic, notice: 'Fellow topic was successfully created.' }
        format.json { render :show, status: :created, location: @fellow_topic }
      else
        format.html { render :new }
        format.json { render json: @fellow_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fellow_topics/1
  # PATCH/PUT /fellow_topics/1.json
  def update
    respond_to do |format|
      if @fellow_topic.update(fellow_topic_params)
        format.html { redirect_to @fellow_topic, notice: 'Fellow topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @fellow_topic }
      else
        format.html { render :edit }
        format.json { render json: @fellow_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fellow_topics/1
  # DELETE /fellow_topics/1.json
  def destroy
    @fellow_topic.destroy
    respond_to do |format|
      format.html { redirect_to fellow_topics_url, notice: 'Fellow topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def fellow_topic_chainer
    user_id = params[:user_id]
    topic_id = params[:topic_id]
    ft = FellowTopic.new(user_id: user_id, topic_id: topic_id)
    if(ft.save)
      render json: {msg: "successful", errors: ft.errors.full_messages, response: ft.attributes}.to_json
    else
      render json: {msg: "unsuccessful", errors: ft.errors.full_messages, response: ft.attributes}.to_json
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fellow_topic
      @fellow_topic = FellowTopic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fellow_topic_params
      params.require(:fellow_topic).permit(:user_id, :topic_id)
    end
end
