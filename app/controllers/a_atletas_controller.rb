# frozen_string_literal: true
class AAtletasController < ApplicationController
  before_action :set_a_atleta, only: %i[show edit update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = AAtleta.ransack(params[:q])
    @pagy, @a_atletas = pagy(@q.result)
  end

  def new
    @a_atleta = AAtleta.new
  end

  def edit
  end

  def create
    @a_atleta = AAtleta.new(a_atleta_params)

    if @a_atleta.save
      redirect_to a_atletas_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @a_atleta.update(a_atleta_params)
      redirect_to a_atletas_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @a_atleta.destroy
      redirect_to a_atletas_url, notice: t('messages.deleted_successfully')
    else
      redirect_to a_atletas_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_a_atleta
    @a_atleta = AAtleta.find_by(id: params[:id])
    return redirect_to a_atletas_path, alert: t('messages.not_found') unless @a_atleta
  end

  def a_atleta_params
    permitted_attributes = AAtleta.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:a_atleta).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to a_atletas_path, alert: t('messages.not_found')
  end
end
