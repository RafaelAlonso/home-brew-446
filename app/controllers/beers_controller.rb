class BeersController < ApplicationController

  # formulario para pegar infos sobre a nova beer
  def new
    @beer = Beer.new
  end

  # criar a beer com as infos que coletamos do form
  def create
    @beer = Beer.new(beer_params)
    @beer.user = current_user

    if @beer.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :volume, :unit_price)
  end
end
