# frozen_string_literal: true
class AZonaTreinamentosController < ApplicationController
  before_action :set_a_zona_treinamento, only: %i[show edit update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = AZonaTreinamento.ransack(params[:q])
    @pagy, @a_zona_treinamentos = pagy(@q.result)
  end

  def new
    @a_zona_treinamento = AZonaTreinamento.new
  end

  def edit
  end

  def create
    @a_zona_treinamento = AZonaTreinamento.new(a_zona_treinamento_params)

    if @a_zona_treinamento.save
      redirect_to a_zona_treinamentos_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @a_zona_treinamento.update(a_zona_treinamento_params)
      redirect_to a_zona_treinamentos_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @a_zona_treinamento.destroy
      redirect_to a_zona_treinamentos_url, notice: t('messages.deleted_successfully')
    else
      redirect_to a_zona_treinamentos_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_a_zona_treinamento
    @a_zona_treinamento = AZonaTreinamento.find_by(id: params[:id])
    return redirect_to a_zona_treinamentos_path, alert: t('messages.not_found') unless @a_zona_treinamento
  end

  def a_zona_treinamento_params
    permitted_attributes = AZonaTreinamento.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:a_zona_treinamento).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to a_zona_treinamentos_path, alert: t('messages.not_found')
  end
end
