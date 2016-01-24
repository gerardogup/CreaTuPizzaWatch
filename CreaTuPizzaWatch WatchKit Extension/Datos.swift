//
//  Datos.swift
//  CreaTuPizzaWatch
//
//  Created by Gerardo Guerra Pulido on 23/01/16.
//  Copyright © 2016 Gerardo Guerra Pulido. All rights reserved.
//

import Foundation

class Pizza {
    static let opcionesDeTamano: [String] = [
        "No Seleccionado",
        "Chica",
        "Mediana",
        "Grande"
    ]
    static let opcionesDeMasa: [String] = [
        "No Seleccionado",
        "Delgada",
        "Crujiente",
        "Gruesa"
    ]
    static let opcionesDeQueso: [String] = [
        "No Seleccionado",
        "Mozarela",
        "Cheddar",
        "Parmesano",
        "Sin Queso"
    ]
    static let opcionesDeIngredientes: [String] = [
        "Aceituna",
        "Anchoa",
        "Cebolla",
        "Jamón",
        "Pavo",
        "Pepperoni",
        "Pimiento",
        "Piña",
        "Salami",
        "Salchicha"
    ]
    
    static var tamano: String = ""
    static var masa: String = ""
    static var queso: String = ""
    static var ingredientes: [String] = []
}
