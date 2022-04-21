class Admin::StudentsController < ApplicationController
  before_action :authenticate_admin

  def index
    @list_students = Student.all
  end

  def edit
    @edit_student = Student.find(params[:id])
  end

  def update
    @edit_student = Student.find(params[:id])
    if @edit_student.update(ajoutter_credits)
      flash[:success] = "Les credits ont été ajoutté!"
    else
      flash[:erreur] = "Credits n'ont pas été ajoutté!"
      render 'edit'
    end
  end

  private
  def ajoutter_credits
    params.require(:student).permit(:credits)
  end

  def authenticate_admin
    unless current_user&.admin
      flash[:erreur] = "Vous n'êtes pas administrateur"
      redirect_to root_path
    end
  end

end
