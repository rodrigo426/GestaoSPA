class ReportsController < ApplicationController
  def index
  end
  def therapist
  @search = Cashier.search(params[:q])
	@cashiers = @search.result


  respond_to do |format|
      format.html

      format.pdf { render pdf: "therapist",
        header: {center: "COMPANY NAME"},
        footer: { center: "[page] of [topage]" }
      }
    end

    #def search
    #  therapist
    #  render :therapist
    #end


  end

  def Entrada
    @search = Cashier.search(params[:q])
    @cashiers = @search.result
  end

  def entrada_julio
    @search = Cashier.search(params[:q])
    @cashiers = @search.result
  end

  def despesas
    @search = Event.search(params[:q])
    @events = @search.result
  end

  def despesas_terapeuta
    @search = Event.search(params[:q])
    @events = @search.result
  end

  def produtos
    @search = ProductMovement.search(params[:q])
    @product_movements = @search.result
  end
end
