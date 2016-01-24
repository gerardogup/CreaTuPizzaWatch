//
//  ResumenController.swift
//  CreaTuPizzaWatch
//
//  Created by Gerardo Guerra Pulido on 24/01/16.
//  Copyright © 2016 Gerardo Guerra Pulido. All rights reserved.
//

import WatchKit
import Foundation


class ResumenController: WKInterfaceController {

    @IBOutlet var lblTamano: WKInterfaceLabel!
    @IBOutlet var lblMasa: WKInterfaceLabel!
    @IBOutlet var lblQueso: WKInterfaceLabel!
    @IBOutlet var lblLabelIngredientes: WKInterfaceLabel!
    @IBOutlet var lblIngredientes: WKInterfaceLabel!
    @IBOutlet var lblMensaje: WKInterfaceLabel!
    @IBOutlet var btnConfirmar: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        //mostrar los valores de la orden
        lblTamano.setText(Pizza.tamano)
        lblMasa.setText(Pizza.masa)
        lblQueso.setText(Pizza.queso)
        lblIngredientes.setText("")
        lblLabelIngredientes.setText(String(Pizza.ingredientes.count) + " Ingredientes:")
        var ingredientesStr: String = ""
        for ingrediente in Pizza.ingredientes {
            if ingredientesStr != "" {
                ingredientesStr += "\n"
            }
            ingredientesStr += ingrediente
        }
        lblIngredientes.setText(ingredientesStr)
        
        
        //validar si se puede confirmar
        if Pizza.tamano == "No Seleccionado"
            || Pizza.masa == "No Seleccionado"
            || Pizza.queso == "No Seleccionado"
            || Pizza.ingredientes.count == 0
        {
            lblMensaje.setText("No es posible confirmar la orden sin completar la selección. Por favor regresa y completa tu orden.")
            lblMensaje.setTextColor(UIColor.redColor())
            btnConfirmar.setEnabled(false)
        } else {
            lblMensaje.setText("")
            btnConfirmar.setEnabled(true)
        }

        super.willActivate()
    }
    
    @IBAction func confirmarOrden() {
        lblMensaje.setText("¡Gracias por tu orden. En 20 minutos estará lista tu pizza!")
        lblMensaje.setTextColor(UIColor(red: 65/255, green: 168/255, blue: 30/255, alpha: 1))
        btnConfirmar.setHidden(true)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
