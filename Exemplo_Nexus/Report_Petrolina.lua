--[[
Report for Municipios
Teste de importação de arquivos para a aplicação
este arquivo deve conter o conteúdo do report do município Petrolina
]]--

Petrolina = {
		historia = "<center><h2>História</h2></center><div class=well>Originariamente era denominada 'Passagem de Juazeiro' pois era caminho para a vizinha cidade de Juazeiro, na margem oposta do Rio São Francisco no Estado da Bahia. A passagem servia como ponto de apoio do desenvolvimento da zona sertaneja do Estado, com vias de acesso para os Estados do Piauí, Ceará, Bahia, Minas Gerais, Rio de Janeiro e São Paulo. Por isso, Petrolina é cognominada Encruzilhada do Progresso, por ser passagem obrigatória para o norte e via de escoamento para o Centro Sul do País. (Fonte: OLIVEIRA, 2007).<br>O grande visionário de Petrolina foi o bispo Dom Malan. Dom Malan era italiano de nascimento, e veio para a cidade em 15 de agosto de 1924. Construiu a Catedral, o Palácio Diocesano, os Colégios Nossa Senhora Auxiliadora e Dom Bosco, e o Hospital Dom Malan.<br>Há versões em que o nome da cidade foi em homenagem ao então Imperador Dom Pedro II e sua esposa Dona Leopoldina. Outra história menciona a existência de uma pedra linda que havia na margem do rio, pedreira da qual foi retirada matéria-prima para a construção de um dos maiores monumentos históricos da cidade, a Igreja Catedral. O escritor Santana Padilha deixou escrito em seu livro Pedro e Lina que o nome da cidade se daria pelo fato de os dois primeiros moradores se chamarem Pedro e Lina e na ocasião do seu casamento o Frei Henrique, de sotaque italiano, ao pronunciar seus nomes fez-se ouvir Petrolina.</div>",
	mapa = "<center><iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d125951.21687869188!2d-40.6013875!3d-9.4235486!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x773704375177ee1%3A0x463421047bfe87cf!2sPrefeitura%20Municipal%20de%20Petrolina!5e0!3m2!1spt-BR!2sbr!4v1589514661982!5m2!1spt-BR!2sbr\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe></center>"
	}


-- Tabela de caracteristicas do município
Caracteristicas = {
	class = "table-bordered",
	title = {"<h2>Caracteristicas do territorio</h2>"},

	td = {
			{
			"<b>Área</b><sup>[2018]</sup><br>4.561,870 Km",
			"<b>População</b><sup>[2019]</sup><br>349.145 hab.",
			"<b>Densidade demográfica</b><br>64,44 hab/Km²",
			"<b>Escolarização</b><sup>6 a 14 anos</sup><br>97%"
			},

			{
			"<b>IDHM</b><sup>[2010]</sup><br>0,697",
			"<b>Ano de  instalação</b><br>1870",
			"<b>Microregião</b><br>Petrolina",
			"<b>Mesorregião</b><br>São Francisco Pernabucano",
			},
		} -- fecha td

	} -- fecha caracteristicas



-- Gráfico de indicadores IDH
IDHM = {
	class = "line",
	id = 0, -- madatory start at zero
	title = { "<b>IDHM</b> Índice de desenvolvimento humano municipal"},
	th = { -- Título das colunas
		"", --madatory null
		"1991",
		"2000",
		"2010",
		}, --end th
	td = {
			{
			"IDHM",
			0.471,
			0.580,
			0.697,
			},

		} -- end td
	} -- end IDHM



-- Gráfico de indicadores Mortalidade infantil
Mortalidade = {
	class = "bar",
	id = 1, -- madatory start at zero
	title = { "Mortalidade Infantil - óbitos por mil nascidos vivo "},
	th = { -- Título das colunas
		"", --madatory null
		"2006",
		"2007",
		"2008",
		"2009",
		"2010",
		"2011",
		"2012",
		"2013",
		"2014",
		"2015",
		"2016",
		"2017",

		}, --end th
	td = {
			{
			"Mortalidade",
			25.28,
			22.17,
			20.90,
			19.49,
			17.19,
			19.30,
			14.59,
			16.10,
			15.43,
			16.38,
			17.78,
			15.39,
			},

		} -- end td
	} -- end IDHM

