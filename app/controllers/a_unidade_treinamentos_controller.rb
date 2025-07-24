# frozen_string_literal: true
class AUnidadeTreinamentosController < ApplicationController
  before_action :set_a_unidade_treinamento, only: %i[show edit update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = AUnidadeTreinamento.ransack(params[:q])
    @pagy, @a_unidade_treinamentos = pagy(@q.result)
  end

  def new
    @a_unidade_treinamento = AUnidadeTreinamento.new
  end

  def edit
  end

  def create
    @a_unidade_treinamento = AUnidadeTreinamento.new(a_unidade_treinamento_params)

    if @a_unidade_treinamento.save
      redirect_to a_unidade_treinamentos_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @a_unidade_treinamento.update(a_unidade_treinamento_params)
      redirect_to a_unidade_treinamentos_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @a_unidade_treinamento.destroy
      redirect_to a_unidade_treinamentos_url, notice: t('messages.deleted_successfully')
    else
      redirect_to a_unidade_treinamentos_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_a_unidade_treinamento
    @a_unidade_treinamento = AUnidadeTreinamento.find_by(id: params[:id])
    return redirect_to a_unidade_treinamentos_path, alert: t('messages.not_found') unless @a_unidade_treinamento
  end

  def a_unidade_treinamento_params
    permitted_attributes = AUnidadeTreinamento.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:a_unidade_treinamento).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to a_unidade_treinamentos_path, alert: t('messages.not_found')
  end
end
