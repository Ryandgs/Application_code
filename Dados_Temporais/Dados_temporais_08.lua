--[[
    Teste de aplicação utilizando um SHP com dados temporais
    para exibição da tabela e gráfico.

    Teste das funções de tabela e gráfico
]]--


local content = {
		A = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ultricies et nisl non commodo. Maecenas malesuada odio id magna consectetur, vitae dapibus felis lobortis. In purus enim, porta nec posuere vel, luctus vel neque. Nullam ut ante mi. In nisl est, porta id sodales non, viverra vel odio. Morbi porttitor massa lectus, eu ultricies odio vulputate eget. Nulla in interdum sem. Ut accumsan ante et augue ullamcorper, at tincidunt mi congue. Integer mattis ex eget rutrum elementum. Donec urna dui, tristique sed quam eu, facilisis interdum leo. Integer malesuada nisl erat, et elementum diam faucibus in. Aenean pellentesque ligula ante, eu rutrum turpis feugiat iaculis. Nullam ac lacus et ante placerat imperdiet. Quisque eu lorem a leo sollicitudin porta vulputate in tortor. Nullam ac luctus sapien, et cursus erat. Etiam placerat, orci sed iaculis porta, nisl orci sodales velit, vel congue urna urna id nisi.",

		B = "Vestibulum hendrerit, ipsum eleifend mollis tempus, velit velit blandit augue, ultricies fringilla justo velit ut enim. Nam mattis, nisi id dignissim tempor, elit lorem ullamcorper purus, pellentesque consectetur magna dolor vitae elit. Sed sit amet aliquet enim. Nullam faucibus libero et vehicula facilisis. Fusce fermentum pretium mauris porta venenatis. Donec vulputate iaculis eros, et vestibulum dolor gravida in. Aenean fringilla quis quam volutpat iaculis. Nullam posuere quis libero ut sollicitudin. Nulla imperdiet ligula at hendrerit tempor.",

		C = "Nullam tincidunt justo metus, in ultricies tortor pharetra blandit. Nunc vel dignissim tellus. Etiam sit amet nulla convallis, auctor lacus id, consectetur magna. Ut ut ultrices ipsum. Curabitur sed leo quis ante venenatis ullamcorper. Phasellus vestibulum rhoncus sem quis commodo. Aliquam erat volutpat. Suspendisse lobortis, urna vel aliquam dignissim, lorem lorem pretium diam, a molestie neque orci ac nulla. Vestibulum laoreet lorem eleifend, maximus magna porta, ullamcorper elit. Aenean nec vulputate mi. Sed convallis scelerisque augue, sodales pretium elit tincidunt dapibus. Aenean semper tortor id sapien pretium pulvinar."
	}



import("gis")
import("publish")



Project{
	file	= "temporal-data.tview",
	clean	= true,
	dados	= "temporal-data.shp",
}


Application{
	base = "roadmap",
	--key = "AIzaSyA1coAth-Bo7m99rnxOm2oOBB88AmaSbOk",
	project	= "temporal-data.tview",
	title	= "Teste de dados Temporais",
	description = "Small application with some data",
	output	= "/Applications/MAMP/htdocs/Aplication/Dados_Temporais_08",



	dados = View{
		color = "RdYlGn",
		select  = "id_1",
		description = "Dados de teste",
		report = function(cell)
			local report = Report{
				title = cell.id_1,  --STRING
				author = "teste",
				print(cell.id_1),
			}

			------ Bloco de texto ---------
			report:addHeading("1 - Primeiro bloco de texto")
			report:addText(content.A)
			report:addSeparator()


			------ Creat Graphic -----------
			local GRAPHIC01 = {
				id = 0,
				title = { "Data of 01 "},
				th = { -- Título das colunas
						"Título",
						"Área01",
						"Área02",
						"Área03",
						"Área04",
						"Área05",
						"Área06",
						"Área07",
						"Área08",
						"Área09",
						"Área10",
					}, --end th
				td = {
						{ -- linha 2
						"dg dÁrea",
						cell.dg_darea06,
						cell.dg_darea07,
						cell.dg_darea08,
						cell.dg_darea09,
						cell.dg_darea10,
						cell.dg_darea11,
						cell.dg_darea12,
						cell.dg_darea13,
						cell.dg_darea14,
						cell.dg_darea15,
						},


						{ -- linha 3
						"d Área",
						cell.d_area02,
						cell.d_area03,
						cell.d_area04,
						cell.d_area05,
						cell.d_area06,
						cell.d_area07,
						cell.d_area08,
						cell.d_area09,
						cell.d_area10,
						cell.d_area11,
						},

						{ -- linha 4
						"mcwd",
						cell.mcwd06,
						cell.mcwd07,
						cell.mcwd08,
						cell.mcwd09,
						cell.mcwd10,
						cell.mcwd11,
						cell.mcwd12,
						cell.mcwd13,
						cell.mcwd14,
						cell.mcwd15,
						},

					} -- end td
				} -- end table
            report:addGraphic(GRAPHIC01)


			------ Bloco de texto ---------
			report:addHeading("1 - Bloco de texto")
			report:addText(content.A)
			report:addText(content.B)
			report:addImage("urbis_simulation_2025_baseline.PNG", "publish")
			report:addText(content.C)
			report:addSeparator()


			------ Creat Table -----------
			local TABLE01 = {
				title = { "Data of "..cell.id_1},
				th = { -- Título das colunas
						"Título",
						"Área01",
						"Área02",
						"Área03",
						"Área04",
						"Área05",
					}, --end th
				td = {
						{ -- linha 2
						"dg dÁrea",
						cell.dg_darea06,
						cell.dg_darea07,
						cell.dg_darea08,
						cell.dg_darea09,
						cell.dg_darea10,
						},
						{ -- linha 3
						"d Área",
						cell.d_area02,
						cell.d_area03,
						cell.d_area04,
						cell.d_area05,
						cell.d_area06,
						},
						{ -- linha 4
						"mcwd",
						cell.mcwd06,
						cell.mcwd07,
						cell.mcwd08,
						cell.mcwd09,
						cell.mcwd10,
						},
					} -- end td
				} -- end table

				report:addMatrix(TABLE01)
				------ End Creat Table -----------


			------ Bloco de texto ---------
			report:addHeading("2 - Bloco de texto")
			report:addText(content.A)
			report:addText(content.B)
			report:addText(content.C)
			report:addImage("urbis_simulation_2025_baseline.PNG", "publish")
			report:addImage("urbis_simulation_2025_baseline.PNG", "publish")
			report:addSeparator()

			------ Creat Table -----------
			local TABLE02 = {
				title = { "Data of "..cell.id_1},
				th = { -- Título das colunas
						"Título",
						"Área01",
						"Área02",
						"Área03",
						"Área04",
						"Área05",
					}, --end th
				td = {
						{ -- linha 2
						"dg dÁrea",
						cell.dg_darea06,
						cell.dg_darea07,
						cell.dg_darea08,
						cell.dg_darea09,
						cell.dg_darea10,
						},
						{ -- linha 3
						"d Área",
						cell.d_area02,
						cell.d_area03,
						cell.d_area04,
						cell.d_area05,
						cell.d_area06,
						},
						{ -- linha 4
						"mcwd",
						cell.mcwd06,
						cell.mcwd07,
						cell.mcwd08,
						cell.mcwd09,
						cell.mcwd10,
						},
					} -- end td
				} -- end table

				report:addMatrix(TABLE02)
				------ End Creat Table -----------


				------ Creat Graphic02 -----------
			local GRAPHIC02 = {
				title = { "Data of "..cell.id_1},
				th = { -- Título das colunas
						"Título",
						"Área01",
						"Área02",
						"Área03",
						"Área04",
						"Área05",
					}, --end th
				td = {
						{ -- linha 2
						"dg dÁrea",
						cell.dg_darea06,
						cell.dg_darea07,
						cell.dg_darea08,
						cell.dg_darea09,
						cell.dg_darea10,
						},
						{ -- linha 3
						"d Área",
						cell.d_area02,
						cell.d_area03,
						cell.d_area04,
						cell.d_area05,
						cell.d_area06,
						},
						{ -- linha 4
						"mcwd",
						cell.mcwd06,
						cell.mcwd07,
						cell.mcwd08,
						cell.mcwd09,
						cell.mcwd10,
						},
					} -- end td
				} -- end table

				report:addGraphic(GRAPHIC02)
				------ End Creat Table -----------


			------ Bloco de texto ---------
			report:addHeading("3 - Bloco de texto")
			report:addText(content.A)
			report:addImage("urbis_simulation_2025_baseline.PNG", "publish")
			report:addText(content.B)
			report:addText(content.C)


			return report
		end
	},



}