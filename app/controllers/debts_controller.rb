class DebtsController < ApplicationController
  # POST /debts.json
  def create
    @debt = Debt.new(debt_params)

    if @debt.save
      render :show, status: :created, location: @debt
    else
      render json: @debt.errors, status: :unprocessable_entity
    end
  end

  private

  def debt_params
    params.require(:debt).permit(:amount, :amount, :debtor, :creditor)
  end
end
