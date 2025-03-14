@echo off

git init

:: Inicializa o repositório git, se não for um repositório
git rev-parse --is-inside-work-tree >nul 2>&1
if errorlevel 1 (
    echo Não é um repositório Git. Inicializando o repositório...
    git init
)

:: Configurações globais do Git
git config --global user.name "Flamel007"
git config --global user.email "flamelblackdeath007@gmail.com"

:: Adiciona o repositório remoto (só executa se já não estiver adicionado)
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    git remote add origin "https://github.com/Flamel007/RepositorioRemotoNuvem.git"
)

:: Exibe mensagem de sucesso
echo Configuracoes do Git foram aplicadas com sucesso!
pause