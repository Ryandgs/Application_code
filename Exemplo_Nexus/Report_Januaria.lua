--[[
Report for Municipios
Teste de importação de arquivos para a aplicação
este arquivo deve conter o conteúdo do report do município Januária
]]--

Januaria = {
		historia = "<center><h2>História</h2></center><div class=well>História Reza a tradição local que, em 1761, andando Manuel de Borba Gato, genro de Fernão Dias, em fuga pelos sertões do São Francisco, após o incidente que resultou na morte de D. Henrique de Castel Branco, castelhano de nascimento e emissário real, teria atingido a região onde se ergueu o município. Sobre o desenvolvimento do povoado dessa data a 1811, quando foi declarado distrito, pouco se sabe.<br> Com relação ao topônimo atual, a tradição guarda a lenda de que ele se teria originado do nome de uma senhora Januária, em cuja casa os aventureiros da região aprazavam encontros. O nome dessa estalajadeira se teria estendido a todo o povoado; estudiosos, no entanto, afirmam ter sido o topônimo dado em homenagem à filha de <a href='https://pt.wikipedia.org/wiki/Pedro_I_do_Brasil' target='_blank'><b>D. Pedro I</b></a>, princesa Januária.</div>",
		mapa = "<center><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d492338.5206779254!2d-44.98333411157302!3d-15.40923439712372!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x755e7568b04c947%3A0xba33d9bc5f08070e!2sJanu%C3%A1ria%2C%20MG%2C%2039480-000!5e0!3m2!1spt-BR!2sbr!4v1589514427623!5m2!1spt-BR!2sbr\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe></center>",

	}




-- Tabela de caracteristicas do município
Caracteristicas = {
	class = "table-bordered",
	title = {"<h2>Caracteristicas do territorio</h2>"},

	td = {
			{
			"<b>Área</b><sup>[2018]</sup><br>6.661,588Km",
			"<b>População</b><sup>[2019]</sup><br>67.742 hab.",
			"<b>Densidade demográfica</b><br>9,83 hab/Km²",
			"<b>Escolarização</b><sup>6 a 14 anos</sup><br>96,4%"
			},

			{
			"<b>IDHM</b><sup>[2010]</sup><br>0,658",
			"<b>Ano de  instalação</b><br>1833",
			"<b>Microregião</b><br>Januária",
			"<b>Mesorregião</b><br>Norte de Minas",
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
			0.391,
			0.541,
			0.658,
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
			10.66,
			8.51,
			14.67,
			9.05,
			13.62,
			11.94,
			15.23,
			12.83,
			23.26,
			21.01,
			19.76,
			11.59,
			},

		} -- end td
	} -- end IDHM