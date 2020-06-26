# Aplicação Nexus


![img](https://github.com/CristianoAugustoChico/Application_code/blob/master/Exemplo_Nexus/Imagens/applicacao.png?raw=true)


A aplicação nexus ainda esta em desenvolvimento e vem sendo utilizada para realizar os testes de novas funcionalidades do [Pacote Publish].

## Funções
 - Graphic: onde são exibidos od dados de IDH e Mortalidade
 - Matrix: apresenta as principais informações de cada município


### Outros atributos

Devido a grande quantidade de informações contida na aplicação estaos utilizando o fundo **dofile**, que é nativa do Lua, bem similar ao *include* do PHP e tem como caracterisitca chamar um arquivo esterno para dentro a aplicação. 

> Observe que uma função **publish** não pode ser chamada dentro de um arquivo externo, nós podemos montar a sua estrutura no arquivo, mas devemos chamar a função dentro do documento raiz [Nexus_04.lua].

# Exemplos

## Arquivos externo - Report_Caatinga.lua 
No código abaixo temos uma função montada dentro de uma arquivo externo chamado [Report_Caatinga.lua]. Neste trecho temos também uma parte **video** com uma sintexa de *HTML* inbutido no código.

```sh
Caatinga = {
		A = "A caatinga ocupa uma área de cerca de 844.453 quilômetros quadrados, o equivalente a 11% do território nacional. Engloba os estados Alagoas, Bahia, Ceará, Maranhão, Pernambuco, Paraíba, Rio Grande do Norte, Piauí, Sergipe e o norte de Minas Gerais. Rico em biodiversidade, o bioma abriga 178 espécies de mamíferos, 591 de aves, 177 de répteis, 79 espécies de anfíbios, 241 de peixes e 221 abelhas. Cerca de 27 milhões de pessoas vivem na região, a maioria carente e dependente dos recursos do bioma para sobreviver. A caatinga tem um imenso potencial para a conservação de serviços ambientais, uso sustentável e bioprospecção que, se bem explorado, será decisivo para o desenvolvimento da região e do país. A biodiversidade da caatinga ampara diversas atividades econômicas voltadas para fins agrosilvopastoris e industriais, especialmente nos ramos farmacêutico, de cosméticos, químico e de alimentos.",

		B = "Apesar da sua importância, o bioma tem sido desmatado de forma acelerada, principalmente nos últimos anos, devido principalmente ao consumo de lenha nativa, explorada de forma ilegal e insustentável, para fins domésticos e indústrias, ao sobrepastoreio e a conversão para pastagens e agricultura. Frente ao avançado desmatamento que chega a 46% da área do bioma, segundo dados do Ministério do Meio Ambiente (MMA), o governo busca concretizar uma agenda de criação de mais unidades de conservação federais e estaduais no bioma, além de promover alternativas para o uso sustentável da sua biodiversidade.",

		C = "Em relação às Unidades de Conservação (UC´s) federais, em 2009 foi criado o Monumento Natural do Rio São Francisco, com 27 mil hectares, que engloba os estados de Alagoas, Bahia e Sergipe e, em 2010, o Parque Nacional das Confusões, no Piauí foi ampliado em 300 mil hectares, passando a ter 823.435,7 hectares. Em 2012 foi criado o Parque Nacional da Furna Feia, nos Municípios de Baraúna e Mossoró, no estado do Rio Grande do Norte, com 8.494 ha. Com estas novas unidades, a área protegida por unidades de conservação no bioma aumentou para cerca de 7,5%. Ainda assim, o bioma continuará como um dos menos protegidos do país, já que pouco mais de 1% destas unidades são de Proteção Integral. Ademais, grande parte das unidades de conservação do bioma, especialmente as Áreas de Proteção Ambiental – APAs, têm baixo nível de implementação.",

		Video = "<center><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_O4TXbfYPng\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></center>"

	}
```

**Onde:**
> **Caatinga** é uma tabela e dentro dela temos os **índices**: A, B, C e Video.

## Arquivo raiz - Nexus_04.lua

Agora dentro do arqivo raiz da aplicação é que devevos chamar a função que vai buscar as informação dentro da estrutura **Caatinga**.
Dentro o arquivo raiz **Nexus_04.lua** temos uma estrutura de `if` para identificar em qual *camada* da **View** será adicionado o conteúdo do Report.
O `if cell.name == 'Caatinga' then`, identifica a camada e adiciona o conteúdo do Report.

```
dofile("Report_Caatinga.lua")
report:addHeading("<h2>Conheça o Bioma</h2>")
report:addText(Caatinga.A)
```

**Onde:**
 - dofile: vai chamar o conteúdo do arquivo externo a raiz
 - report:addHeading: adiciona um atributo de Títilo (podemos utilizar HTML dentro)
 - report:addText(Caatinga.A): função de adicionar texto ao report vai buscar dentro da estrutura **Caating** pelo índice **A**.
 
Basicamente estamos informando ao Publish o seguinte: 
Vá buscar o arquivo **Report_Caatinga.lua**, e agora eu quero usar apenas o índice **A**. 


[Pacote Publish]: <https://github.com/TerraME/publish>
[Nexus_04.lua]: <https://github.com/CristianoAugustoChico/Application_code/blob/master/Exemplo_Nexus/Nexus_04.lua>
[Report_Caatinga.lua]: <https://github.com/CristianoAugustoChico/Application_code/blob/master/Exemplo_Nexus/Report_Caatinga.lua>
