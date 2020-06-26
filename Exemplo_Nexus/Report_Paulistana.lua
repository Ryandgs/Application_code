--[[
Report for Municipios
Teste de importação de arquivos para a aplicação
este arquivo deve conter o conteúdo do report do município Paulistana
]]--



Paulistana = {

		historia = "<center><h2>História</h2></center><div class=well>O Município de Paulistana ter-se-ia originado de uma fazenda de criação de gado, fundada pelo bandeirante paulista Domingos Jorge Velho, por volta de 1663, dando-lhe o nome de Paulista, em homenagem a seus conterrâneos. Outros atribuem ao português Valério Coelho a fundação de uma fazenda de criação de gado, em princípio do ano de 1730, à qual deu o nome de Paulista, homenagem a sua mulher Dona Domiciana Vieira Martins, natural de São Paulo.<br>Inúmeros adventistas, vindos das províncias vizinhas, se estabeleceram nas imediações da fazenda que rapidamente cresceu, tornando-se, em pouco tempo, um núcleo populacional de relativa expressão.<br>Em virtude do crescente desenvolvimento da povoação, foi instituído um Juizado de Paz em 1829, e, em 1883, foi criada a Paróquia de Nossa Senhora dos Humildes, Padroeira da Cidade. No mesmo Ato foram estabelecidos os seus limites, ficando para o ano de 1888 sua instalação canônica.<br>Paulista adquiriu, também, a categoria de Cidade, no ano de 1938, e, em 1944 passou a chamar-se Paulistana, por força da legislação federal que proibia a duplicidade de topônimos.</div>",
		mapa = "<center><iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d15798.643354688145!2d-41.150415081924955!3d-8.135968214466788!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1smunicipio%20de%20paulistana!5e0!3m2!1spt-BR!2sbr!4v1589514783103!5m2!1spt-BR!2sbr\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe></center>",
	}


-- Tabela de caracteristicas do município
Caracteristicas = {
	class = "table-bordered",
	title = {"<h2>Caracteristicas do territorio</h2>"},

	td = {
			{
			"<b>Área</b><sup>[2018]</sup><br>1.941,393 Km",
			"<b>População</b><sup>[2019]</sup><br>20.523 hab.",
			"<b>Densidade demográfica</b><br>10,04 hab/Km²",
			"<b>Escolarização</b><sup>6 a 14 anos</sup><br>97,9%"
			},

			{
			"<b>IDHM</b><sup>[2010]</sup><br>0,600",
			"<b>Ano de  instalação</b><br>1938",
			"<b>Microregião</b><br>AltoMédio Canindé",
			"<b>Mesorregião</b><br>Sudeste Piauiense",
			},
		} -- fecha td
	} -- fecha caracteristicas


	-- Gráfico de indicadores IDH
IDHM = {
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
			0.283,
			0.396,
			0.600,
			},

		} -- end td
	} -- end IDHM


-- Gráfico de indicadores Mortalidade infantil
Mortalidade = {
	class = "bar",
	id = 1, -- madatory start at zero
	title = { "Mortalidade Infantil - óbitos por mil nascidos vivos"},
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
			11.87,
			16.99,
			15.79,
			28.41,
			27.36,
			17.91,
			22.01,
			16.95,
			27.52,
			25.57,
			15.11,
			20.29,
			},

		} -- end td
	} -- end IDHM