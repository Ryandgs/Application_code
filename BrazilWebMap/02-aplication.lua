

import("publish")

--[[Chama os link dos biomas no wiki ]]
links = {
    Amazonia           = "en.wikipedia.org/wiki/Amazon_biome",
    Caatinga           = "en.wikipedia.org/wiki/Caatinga",
    Cerrado            = "en.wikipedia.org/wiki/Cerrado",
    Pampa              = "en.wikipedia.org/wiki/Pampas",
    Pantanal           = "en.wikipedia.org/wiki/Pantanal",
    ["Mata Atlantica"] = "en.wikipedia.org/wiki/Atlantic_Forest"
}-- fecha linnks


Application{
    project     = "meuprojeto.tview",
    title       = "Brasil Application - Cristiano Teste",
    description = "Pequena aplicação com dados relacionados do Brasil",
    clean       = true,
    output      = "BrazilWebMap-Cristiano",

    biomes = View{
        select      = "name",
        color       = "Set2",
        description = "Biomas do Brasil - IBGE",
        epsg = 29191,

        --[[ Inicia o report ]]
        report = function(cell)
            local mreport = Report{
                title = cell.name,  -- "name" is an attribute of object
                author = "IBGE"
            }

            mreport:addImage(filePath("biomes/"..cell.name..".jpg", "publish"))

            -- chama os link declarados no inicio do código
            mreport:addText("For more information, please visit "..link(links[cell.name], "here")..".")


            return mreport

        end -- fecha Report

    },-- fecha biomes

    states = View{
        color       = "red",
        description = "Estados Brasileiros - IBGE",
        epsg = 29191,
    }-- fecha states

}-- fecha application

