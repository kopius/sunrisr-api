class MorningsController < ProtectedController
  before_action :set_morning, only: [:show, :update, :destroy]

  # GET /mornings
  # GET /mornings.json
  def index
    @mornings = Morning.all

    render json: @mornings
  end

  # GET /mornings/1
  # GET /mornings/1.json
  def show
    render json: @morning
  end

  # POST /mornings
  # POST /mornings.json
  def create
    @morning = Morning.new(morning_params)

    if @morning.save
      render json: @morning, status: :created, location: @morning
    else
      render json: @morning.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mornings/1
  # PATCH/PUT /mornings/1.json
  def update
    @morning = Morning.find(params[:id])

    if @morning.update(morning_params)
      head :no_content
    else
      render json: @morning.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mornings/1
  # DELETE /mornings/1.json
  def destroy
    @morning.destroy

    head :no_content
  end

  private

    def set_morning
      @morning = Morning.find(params[:id])
    end

    def morning_params
      params.require(:morning).permit(:completed_all, :user_id)
    end
end