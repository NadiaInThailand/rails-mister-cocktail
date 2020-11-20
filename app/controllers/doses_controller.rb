class DosesController < ApplicationController

  before_action :find_cocktail_id, only: [:new, :create]

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])

    @dose = Dose.new(dose_params)

    @dose.cocktail = @cocktail
    @dose.save

    redirect_to @cocktail
  end

    def destroy
      @dose = Dose.find(params[:id])
      @cocktail = @dose.cocktail_id
      @dose.destroy

      redirect_to cocktail_path(@cocktail)
    end

  private

  def find_cocktail_id
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
