class AtividadesController < ApplicationController
    def new 
        @atividade = Atividade.new
    end 

    def create
        @atividade = Atividade.new(atividade_params)
        @atividade.projeto_id = params[:projeto_id]
        if @atividade.save
            redirect_to projetos_path()+"/"+@atividade.projeto_id.to_s
        else
            render :new
        end
    end

    def edit
        @atividade = Atividade.find(params[:id])
    end

    def update 
        @atividade = Atividade.find(params[:id])

        if @atividade.update(atividade_params)
            redirect_to projetos_path()+"/"+@atividade.projeto_id.to_s
        else
            render :edit
        end
    end

    def destroy 
        @atividade = Atividade.find(params[:id])
        @atividade.destroy
        redirect_to projetos_path()+"/"+@atividade.projeto_id.to_s
    end

    private
    def atividade_params
        params.require(:atividade).permit(:nome, :datainicio, :datafim, :finalizada)
    end
end
