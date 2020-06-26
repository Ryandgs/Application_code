--[[
Report for Municipios
Teste de importação de arquivos para a aplicação
este arquivo deve conter o conteúdo do report do município Queimadas
]]--


Queimadas = {
		historia = "<center><h2>História</h2></center><div class=well>Existiam por volta do ano de 1882, na região onde hoje se encontra a sede do município de Queimadas, duas casas de propriedades das famílias Tavares e Muniz.<br>As matas então existentes nas proximidades, proporcionavam excelente caça fazendo com que as pessoas para ali se deslocassem para suas caçadas de fins de semana. Para facilitar suas tarefas, ateavam fogo às macambiras, muito abundante na região. Estas depois de queimadas serviam de alimentação aos rebanhos. Daí a orígem do topônimo do município “Queimadas”.<br>Poucos anos depois, chegaram ao local, Manoel Lopes de Andrade e a família a Gonzaga, que iniciaram propriamente a povoação que viria a ser a Cidade de Quimadas.<br>Em 1888 foi construída sua primeira capela e em 1904 reformada, constituindo-se alguns anos mais tarde sua matriz.<br>João Lopes de Andrade, filho de Manoel Lopes de Andrade, foi o primeiro comerciante do lugar.</div>",
		mapa = "<center><iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d253222.88498570764!2d-36.06096259461517!3d-7.397791283238519!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1smunicipio%20de%20Queimadas!5e0!3m2!1spt-BR!2sbr!4v1589566316476!5m2!1spt-BR!2sbr\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe></center>",
	}



-- Tabela de caracteristicas do município
Caracteristicas = {
	class = "table-bordered",
	title = {"<h2>Caracteristicas do territorio</h2>"},
	td = {
			{
			"<b>Área</b><sup>[2018]</sup><br>402,923 Km",
			"<b>População</b><sup>[2019]</sup><br>43.967 hab.",
			"<b>Densidade demográfica</b><br>102,17 hab/Km²",
			"<b>Escolarização</b><sup>6 a 14 anos</sup><br>96,6%"
			},

			{
			"<b>IDHM</b><sup>[2010]</sup><br>0,608",
			"<b>Ano de  instalação</b><br>1870",
			"<b>Microregião</b><br>Campina Grande",
			"<b>Mesorregião</b><br>Agreste Paraibano",
			},
		} -- fecha td

	} -- fecha caracteristicas



-- Gráfico de indicadores IDH
IDHM = {
	class = "bar",
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
			0.297,
			0.431,
			0.608,
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
			8.79,
			20.58,
			20.55,
			15.23,
			21.21,
			10.69,
			16.37,
			12.68,
			14.37,
			10.91,
			6.75,
			25.30,
			},

		} -- end td
	} -- end IDHM
