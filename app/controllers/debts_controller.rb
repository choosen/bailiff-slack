class DebtsController < ApplicationController
  # POST /debts.json
  def create
    return render json: {}, status: 403 unless valid_slack_token?
    # TODO: worker.perform_async(command_params.to_h)
    render json: { responce_type: 'in channel' }, status: :created
  end

  private

  def valid_slack_token?
    params[:token] == ENV['SLACK_SLASH_COMMAND_TOKEN']
  end

  def debt_params
    params.require(:debt).permit(:amount, :amount, :debtor, :creditor)
  end
end
