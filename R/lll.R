
#Criar projeto do portfolio
usethis::create_package("portfolioEduardoBenHur")

#Definir usuário do github
usethis::use_git_config(user.name = "DuhBenhur", user.email = "eduardo.benhur@gmail.com")

#Criar token para conexão com o github
usethis::create_github_token()

#Inserir ou trocar o token do Github (É necessário ter o git instalado)
gitcreds::gitcreds_set()

#Chamar o git para utilização (vai aparecer a aba ao na região do Environment)
usethis::use_git()

#Criar repositório no github
usethis::use_github()

#Transformar o repositório do github em uma page
usethis::use_github_pages("master", "/docs")


#Criação de um arquivo oculto doidão que preciso pesquisar pra que serve
#list.files(all.files = T) Para verificar se o arquivo foi criado
file.create(".nojekyll")
#list.files(all.files = T) Para verificar se o arquivo foi criado

#Criar o Blog
distill::create_blog(".", "Portfolio Eduardo Ben-Hur", gh_pages = TRUE)


distill::create_post("Análise da base Rais")

distill::create_post("Análise da base Rais Real")
