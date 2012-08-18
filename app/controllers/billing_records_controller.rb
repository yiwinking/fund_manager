class BillingRecordsController < ApplicationController
  def index
    @records = current_user.billing_records
  end

  def new
    @record = BillingRecord.new
  end

  def create
    @record = current_user.billing_records.new(params[:billing_record])
    if @record.save
      redirect_to billing_records_path, notice: 'Billing Record was successfully created.'
    else
      render :new
    end
  end
end
