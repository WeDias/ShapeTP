# ![logo](https://github.com/WeDias/ShapeTP/blob/master/Ignorar/Img/logo.png)

## ![fatec](https://github.com/WeDias/ShapeTP/blob/master/Ignorar/Img/fatec0.png)
Projeto fruto de uma parceria entre a Fatec São José dos Campos - Jessen Vidal e uma Empresa, que visa dar aos alunos a experiência de trabalhar com uma Empresa e um caso real, desenvolvendo um software que resolva um problema proposto.

## ![Obj](https://github.com/WeDias/ShapeTP/blob/master/Ignorar/Img/Obj1.png)
Desenvolver uma aplicação web "mini-ETL" que converta arquivos em formato Shapefile para banco de dados PostgreSQL/PostGIS e que faça tambem o caminho inverso, ou seja buscar no banco de dados e devolver ao usuario um arquivo shapefile. Atualmente, é utilizado uma aplicação paga para tal operação, dai a necessidade e reduzir custos com um "mini-ETL" personalizado, que seja pensado para as necessidades especificas desta empresa.

## ![shp](https://github.com/WeDias/ShapeTP/blob/master/Ignorar/Img/shp.png)
É um formato de arquivo usado para armazenar dados geoespaciais em forma de vetor, utilizado por sistemas de informações geograficas, conhecidos como SIG. Descrevem geometrias: pontos, linhas e poligonos. 

## ![post](https://github.com/WeDias/ShapeTP/blob/master/Ignorar/Img/Post.png)
O PostGIS é uma extensão espacial gratuita e de código fonte livre. Sua construção é feita sobre o PostgreSQL, que permite o uso de objetos GIS (Sistemas de Informação Geográfica) ser armazenado em banco de dados

## ![etl](https://github.com/WeDias/ShapeTP/blob/master/Ignorar/Img/etl.png)
Processo de Extração(Extraction), Transformação(Transform) e Carregamento(Load) utilizado para combinar dados de diferentes fontes.

## ![solu](https://github.com/WeDias/ShapeTP/blob/master/Ignorar/Img/Solu.png)
GIF demonstrando o funcionamento da solução desenvolvida. Clique nas imagens para visualizar com o tamanho original.

### Convertendo Shapefile para PostgreSQL/PostGIS
![ShapeToPost](https://github.com/WeDias/ShapeTP/blob/master/Ignorar/Img/ShapeToPost.gif)  
O GIF acima mostra a conversão de Shapefile para PostgreSQL/PostGIS em uma aplicação WEB local,
na parte esquerda do GIF se encontra a aplicação WEB onde o usário interage solicitando a conversão,
em seguida aparece uma tela onde o usuário escolhe quais Shapefiles ele deseja converter para o banco de dados,
após a seleção o processo é iniciado, finalizando é mostrado uma imagem ao usuário de sucesso, caso a operação seja
bem sucedida, caso contrário retorna uma imagem de erro. No lado direito do GIF é mostrado o banco de dados demonstrando
que a conversão realmente foi bem sucedida, criando novas tabelas a partir dos arquivos Shapefile. Após todo este processo
é aberto pelo usuário a ferramenta QGIS para visualizar os dados armazenados nas tabelas após o processo de conversão para demonstrar, também,
que a conversão foi bem sucedida.

### Convertendo PostgreSQL/PostGIS para Shapefile
![PostToShape](https://github.com/WeDias/ShapeTP/blob/master/Ignorar/Img/PostToShape.gif)
O GIF acima mostra a conversão de PostgreSQL/PostGIS para Shapefile em uma aplicação WEB local,
na parte esquerda do GIF se encontra a aplicação WEB onde o usário interage selecionando uma tabela e solicitando a conversão,
em seguida aparece uma tela onde o usuário escolhe onde deseja salvar os arquivos convertidos e o nome deles. Na parte inferior da
direita e mostrado o local onde o usuário escolheu para salvar os arquivos. No canto superior da direita é mostrado o banco de dados
com as tabelas disponíveis. Após converter as tabelas desejadas o usuário abre a ferramenta QGIS para visualizar o resultado da
conversão.

### Desenvolvimento
A aplicação WEB foi desenvolvida utilizando Java WEB e Apache Tomcat. 
Para o código HTML, CSS e Javascript foi utilizando a ferramenta Nicepage
para desenvolver uma interface amigável de forma simples e rápida.
Os conversores foram desenvolvidos em Java integrando com as próprias ferramentas de conversão
já existentes da extensão PostGIS do banco de dados PostgreSQL.  
Obs.: CSS/HTML/Javascript gerados automaticamente pela ferramenta apenas para personalização do site.

### Diagrama de caso de uso
![diagrama](https://github.com/WeDias/ShapeTP/blob/master/Ignorar/Img/Diagrama%20de%20caso%20de%20uso.png)  

## ![util](https://github.com/WeDias/ShapeTP/blob/master/Ignorar/Img/Util.png)
###### ShapeTP
* [Código fonte](https://github.com/WeDias/ShapeTP/tree/master/C%C3%B3digo/ShapeTP)
* [Backlog](https://github.com/WeDias/ShapeTP/blob/master/Documenta%C3%A7%C3%A3o/Backlog.pdf)
* [User Story](https://github.com/WeDias/ShapeTP/blob/master/Documenta%C3%A7%C3%A3o/User_story.pdf)
* [Diagrama de caso de uso](https://github.com/WeDias/ShapeTP/blob/master/Documenta%C3%A7%C3%A3o/Diagrama%20de%20caso%20de%20uso.pdf)  
###### Gestão de projetos
* [Termo de abertura de projeto](https://github.com/WeDias/ShapeTP/blob/master/Documenta%C3%A7%C3%A3o/TermoDeAberturaDeProjeto.pdf)
* [Declaracao de escopo](https://github.com/WeDias/ShapeTP/blob/master/Documenta%C3%A7%C3%A3o/DeclaracaoDeEscopo.pdf)
* [Dicionário EAP](https://github.com/WeDias/ShapeTP/blob/master/Documenta%C3%A7%C3%A3o/DicionarioEAP.pdf)
* [Cronograma](https://github.com/WeDias/ShapeTP/blob/master/Documenta%C3%A7%C3%A3o/Cronograma.pdf)
* [Plano de gerenciamento de cronograma](https://github.com/WeDias/ShapeTP/blob/master/Documenta%C3%A7%C3%A3o/Plano%20de%20gerenciamento%20de%20cronograma.pdf)

## ![time](https://github.com/WeDias/ShapeTP/blob/master/Ignorar/Img/time.png)
* [Euclides Rezende](https://www.linkedin.com/in/euclides-rezende-0940458/) - Product Owner
* [Natalia Biscaro](https://www.linkedin.com/in/nataliabiscaro/?originalSubdomain=br) - Scrum Master
* [Denis Lima](https://www.linkedin.com/in/denis-f-lima/) - Dev Team
* [Israel Augusto](https://github.com/IsraelAugusto0110) - Dev Team
* [Sandro de Araujo](https://github.com/shaka20100) - Dev Team
* [Wesley Dias](https://www.linkedin.com/in/wesley-dias-bba3a11b2/) - Dev Team
