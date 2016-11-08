class MorningAffirmationsController < ProtectedController
  before_action :set_morning_affirmation, only: [:show, :update, :destroy]

  # GET /morning_affirmations?morning_id=:morning_id
  def index
    @morning_affirmations = MorningAffirmation.where('morning_id = ?',
                                                     query_params[:morning_id])

    render json: @morning_affirmations
  end

  # GET /morning_affirmations/1
  # GET /morning_affirmations/1.json
  def show
    render json: @morning_affirmation
  end

  # POST /morning_affirmations
  # POST /morning_affirmations.json
  def create
    @morning_affirmation = MorningAffirmation.new(morning_affirmation_params)

    if @morning_affirmation.save
      render json: @morning_affirmation,
             status: :created,
             location: @morning_affirmation
    else
      render json: @morning_affirmation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /morning_affirmations/1
  # PATCH/PUT /morning_affirmations/1.json
  def update
    @morning_affirmation = MorningAffirmation.find(params[:id])

    if @morning_affirmation.update(morning_affirmation_params)
      head :no_content
    else
      render json: @morning_affirmation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /morning_affirmations/1
  # DELETE /morning_affirmations/1.json
  def destroy
    @morning_affirmation.destroy

    head :no_content
  end

  private

  def set_morning_affirmation
    # return the requested morning_affirmation only if it belongs to a morning
    # that belongs to current_user
    @morning_affirmation = MorningAffirmation.find(params[:id])
    morning_id = @morning_affirmation.morning_id

    if current_user.mornings.find(morning_id)
      return @morning_affirmation
    else
      return nil
    end
  end

  def morning_affirmation_params
    params.require(:morning_affirmation).permit(:completed,
                                                :morning_id,
                                                :affirmation_id)
  end

  def query_params
    params.permit(:morning_id)
  end
end
