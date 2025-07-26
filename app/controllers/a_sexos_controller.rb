# frozen_string_literal: true
class ASexosController < ApplicationController
  before_action :set_a_sexo, only: %i[show edit update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = ASexo.ransack(params[:q])
    @pagy, @a_sexos = pagy(@q.result)
  end

  def new
    @a_sexo = ASexo.new
  end

  def edit
  end

  def create
    @a_sexo = ASexo.new(a_sexo_params)

    if @a_sexo.save
      redirect_to a_sexos_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @a_sexo.update(a_sexo_params)
      redirect_to a_sexos_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @a_sexo.destroy
      redirect_to a_sexos_url, notice: t('messages.deleted_successfully')
    else
      redirect_to a_sexos_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_a_sexo
    @a_sexo = ASexo.find_by(id: params[:id])
    return redirect_to a_sexos_path, alert: t('messages.not_found') unless @a_sexo
  end

  def a_sexo_params
    permitted_attributes = ASexo.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:a_sexo).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to a_sexos_path, alert: t('messages.not_found')
  end
end
