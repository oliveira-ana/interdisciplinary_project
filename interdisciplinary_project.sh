PS3='Olá, Escolha uma opção: '
options=("Verificar atualizações do sistema" "Mostrar atualizações do sistema" "Instalar atualizações do sistema" "Limpar o sistema" "Remover pacotes não necessários" "Sair")
select select in "${options[@]}"
do
    case $select in
        "Verificar atualizações do sistema")
            echo "Verificando atualizações do sistema..."
            sudo apt-get update
            ;;
        "Mostrar atualizações do sistema")
            echo "Mostrar atualizações do sistema"
            sudo apt list --upgradable
            ;;
        "Instalar atualizações do sistema")
            echo "Instalando atualizações do sistema..."
            sudo apt upgrade -y
            ;;
        "Limpar o sistema")
            echo "Limpeza de sistema (lembrando que os pacotes deletados não vão para lixeira, são limpos definitivamente)"
            sudo apt clean
            ;;
        "Remover pacotes não necessários")
            echo "Removendo pacotes não utilizados..."
            sudo apt autoclean
            ;;
        "Sair")
            break
            ;;
        *) echo "Opção $REPLY inválida, tente novamente!"
    esac
done