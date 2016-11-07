class AffirmationsController < ProtectedController
  before_action :set_affirmation, only: [:show, :update, :destroy]

  # GET /affirmations
  # GET /affirmations.json
  def index
    # @affirmations = Affirmation.all
    @affirmations = current_user.affirmations

    render json: @affirmations
  end

  # GET /affirmations/1
  # GET /affirmations/1.json
  def show
    render json: @affirmation
  end

  # POST /affirmations
  # POST /affirmations.json
  def create
    @affirmation = current_user.affirmations.build(affirmation_params)

    if @affirmation.save
      render json: @affirmation, status: :created, location: @affirmation
    else
      render json: @affirmation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /affirmations/1
  # PATCH/PUT /affirmations/1.json
  def update
    @affirmation = Affirmation.find(params[:id])

    if @affirmation.update(affirmation_params)
      head :no_content
    else
      render json: @affirmation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /affirmations/1
  # DELETE /affirmations/1.json
  def destroy
    @affirmation.destroy

    head :no_content
  end

  private

  def set_affirmation
    @affirmation = current_user.affirmations.find(params[:id])
  end

  def affirmation_params
    params.require(:affirmation).permit(:prompt, :response, :user_id)
  end
end
