//  Datos.swift
//  ProjectTableView
//  Created by Moisés Abraham Vázquez Pérez on 07/09/22.

import Foundation

struct Datos {
    var datos1: String = ""
    var datos2: String = ""
    var datos3: String = ""
}

class Food {
    let arrFoodNames: [String] = ["EnsaladaConHongos","PechugaJardinera","Camarones","Sushi","PolloFrito","Salmon","Arrachera","PechugaYEnsalada","SushiSalmon","Albondigas"]

    let arrDescFood: [String] = ["Muy Fresca","Se sirve con pan","Pidelos a la diabla","Solo o empanizado","Pidelo con papas tambien","Directamente desde Japón","De la res mas brava","Se vale repetir","Este es un clasico","Pidelas con salsa bolognesa"]
}

class Paises {
    let arrCountryNames: [String] = ["Argentina", "Belgica", "Canada", "China", "Cuba", "Italia", "Japon", "Corea", "Mexico", "Venezuela" ,"Vaticano"]
}

class Music {
    let arrArtistas: [String] = ["Los Acosta","The Weekend","Daft Punk","Deadmau5","Franz Ferdinand","Post Malone","Gorillaz","DaftPunk","The Strokes","Empire of the Sun"]

    let arrAlbumName: [String] = ["CorazonesSolitarios","BlindingLights","Discovery","forLackOfABetterName","FranzFerdinand","HollywoodsBleeding","PlasticBeach","RAM","RoomOnFire","WalkingOnADream"]

    let arrSongs: [String] = ["Como una Novela","Blinding Lights","One More Time","Gosht Stuff","This Fire","Enemies","Stylo","Instant Crush","Reptillia","Walking on a Dream","","","",""]
}

class Electrodomesticos {
    let arrElectrodomesticos:[String] = [ "Cafetera","Batidora","Tostador","Extractor de jugos","Licuadora","Procesador de alimentos","Freidora de aire","Microondas","Sandwichera","Wafflera"]
    
    let arrPrecioElectrodomesticos:[Int] = [1000,800,590,1650,1200,3500,4500,5600,1200,1500]
}


class Extras {
    let arrExtras:[String] = ["Hummus","Pesto", "Aguacate", "Mayonesa", "Ranch"]
    
    let arrDescripcion:[String] = ["Mezcla de garbanzos cocidos con, tahina, ajo y zumo de limòn","Mezcla de aceite, zumo de limón y hojas de Albahaca", "Una pieza de aguacate", "Mayonesa de la casa", "Aderezo con mayonesa, crema y finas hierbas"]
    let arrPrecio:[String] = ["$27.00","$30.00", "$20.00", "$32.00", "$28.00"]
    
    let arrRank:[String] = ["4.7","3.0", "4.0", "4.7", "5.0"]
}
