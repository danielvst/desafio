class ProjetosController < ApplicationController
  def index
    @projetos = Projeto.all
  end

  def show
    @projeto = Projeto.find(params[:id])
  end

  def new 
    @projeto = Projeto.new
    @atividade = @projeto.atividades
  end 
  
  def create
    @projeto = Projeto.new(projeto_params)

    if @projeto.save
      redirect_to @projeto
    else
      render :new
    end
  end
  
  def edit
    @projeto = Projeto.find(params[:id])
  end

  def update 
    @projeto = Projeto.find(params[:id])

    if @projeto.update(projeto_params)
      redirect_to @projeto
    else
      render :edit
    end
  end

  def destroy 
    @projeto = Projeto.find(params[:id])
    @projeto.destroy
    redirect_to root_path
  end

  private
  def projeto_params
    params.require(:projeto).permit(:nome, :datainicio, :datafim)
  end

end
