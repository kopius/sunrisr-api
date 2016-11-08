class MorningsController < ProtectedController
  before_action :set_morning, only: [:show, :update, :destroy]

  # GET /mornings
  # GET /mornings.json
  def index
    # @mornings = Morning.all
    @mornings = current_user.mornings

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
    @morning = current_user.mornings.build(morning_params)

    if @morning.save
      affirmations = current_user.affirmations
      affirmations.each do |affirmation|
        MorningAffirmation.create(
          completed: false,
          morning_id: @morning.id,
          affirmation_id: affirmation.id
        ).save
      end

      render json: @morning,
             status: :created,
             location: @morning
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
    @morning = current_user.mornings.find(params[:id])
  end

  def morning_params
    { user_id: current_user.id }
  end
end
