module ProjetosHelper
    def PercentualFinalizado(atividades)
        if atividades.nil? || atividades.empty?
            return 0
        end
        finalizadas = atividades.count{|a| a.finalizada}
        totais = atividades.length()
    
        return ('%.0f' % (finalizadas.fdiv(totais) * 100)).to_s + "%"
    end

    def Atrasado(atividades, datafimprojeto)
        if atividades.any?{|a| a.datafim > datafimprojeto}
            return "Sim"
        else
            return "Não"
        end
    end
end
