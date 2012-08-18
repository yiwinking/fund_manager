# -*- encoding: utf-8 -*-
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
      redirect_to billing_records_path, notice: '记账记录成功创建！'
    else
      render :new
    end
  end

  def edit
    @record = current_user.billing_records.find(params[:id])
  end

  def update
    @record = current_user.billing_records.find(params[:id])
    if @record.update_attributes(params[:billing_record])
      redirect_to billing_records_path, notice: '记账记录成功修改！'
    else
      render :edit
    end
  end

  def destroy
    @record = current_user.billing_records.find(params[:id])
    @record.destroy
    redirect_to billing_records_path, notice: '记账记录成功删除！'
  end
end
