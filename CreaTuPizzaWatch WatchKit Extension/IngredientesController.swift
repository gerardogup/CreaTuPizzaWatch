//
//  IngredientesController.swift
//  CreaTuPizzaWatch
//
//  Created by Gerardo Guerra Pulido on 24/01/16.
//  Copyright © 2016 Gerardo Guerra Pulido. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {

    @IBOutlet var isAceituna: WKInterfaceSwitch!
    @IBOutlet var isAnchoa: WKInterfaceSwitch!
    @IBOutlet var isCebolla: WKInterfaceSwitch!
    @IBOutlet var isJamon: WKInterfaceSwitch!
    @IBOutlet var isPavo: WKInterfaceSwitch!
    @IBOutlet var isPepperoni: WKInterfaceSwitch!
    @IBOutlet var isPimiento: WKInterfaceSwitch!
    @IBOutlet var isPiña: WKInterfaceSwitch!
    @IBOutlet var isSalami: WKInterfaceSwitch!
    @IBOutlet var isSalchicha: WKInterfaceSwitch!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        for ingrediente in Pizza.ingredientes {
            switch ingrediente {
                case "Aceituna":
                    isAceituna.setOn(true)
                case "Anchoa":
                    isAnchoa.setOn(true)
                case "Cebolla":
                    isCebolla.setOn(true)
                case "Jamón":
                    isJamon.setOn(true)
                case "Pavo":
                    isPavo.setOn(true)
                case "Pepperoni":
                    isPepperoni.setOn(true)
                case "Pimiento":
                    isPimiento.setOn(true)
                case "Piña":
                    isPiña.setOn(true)
                case "Salami":
                    isSalami.setOn(true)
                default:
                    isSalchicha.setOn(true)
            }
        }
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func seleccionarAceituna(value: Bool) {
        if value {
            if Pizza.ingredientes.count < 5 {
                Pizza.ingredientes.append(Pizza.opcionesDeIngredientes[0])
            } else
            {
                isAceituna.setOn(false)
            }
        } else {
            Pizza.ingredientes.removeAtIndex(0)
        }
    }
    
    @IBAction func seleccionarAnchoa(value: Bool) {
        if value {
            if Pizza.ingredientes.count < 5 {
                Pizza.ingredientes.append(Pizza.opcionesDeIngredientes[1])
            } else
            {
                isAnchoa.setOn(false)
            }
        } else {
            Pizza.ingredientes.removeAtIndex(1)
        }
    }

    @IBAction func seleccionarCebolla(value: Bool) {
        if value {
            if Pizza.ingredientes.count < 5 {
                Pizza.ingredientes.append(Pizza.opcionesDeIngredientes[2])
            } else
            {
                isCebolla.setOn(false)
            }
        } else {
            Pizza.ingredientes.removeAtIndex(2)
        }
    }
    
    @IBAction func seleccionarJamon(value: Bool) {
        if value {
            if Pizza.ingredientes.count < 5 {
                Pizza.ingredientes.append(Pizza.opcionesDeIngredientes[3])
            } else
            {
                isJamon.setOn(false)
            }
        } else {
            Pizza.ingredientes.removeAtIndex(3)
        }
    }
    
    @IBAction func seleccionarPavo(value: Bool) {
        if value {
            if Pizza.ingredientes.count < 5 {
                Pizza.ingredientes.append(Pizza.opcionesDeIngredientes[4])
            } else
            {
                isPavo.setOn(false)
            }
        } else {
            Pizza.ingredientes.removeAtIndex(4)
        }
    }
    
    @IBAction func seleccionarPepperoni(value: Bool) {
        if value {
            if Pizza.ingredientes.count < 5 {
                Pizza.ingredientes.append(Pizza.opcionesDeIngredientes[5])
            } else
            {
                isPepperoni.setOn(false)
            }
        } else {
            Pizza.ingredientes.removeAtIndex(5)
        }
    }
    
    @IBAction func seleccionarPimiento(value: Bool) {
        if value {
            if Pizza.ingredientes.count < 5 {
                Pizza.ingredientes.append(Pizza.opcionesDeIngredientes[6])
            } else
            {
                isPimiento.setOn(false)
            }
        } else {
            Pizza.ingredientes.removeAtIndex(6)
        }
    }
    
    @IBAction func seleccionarPiña(value: Bool) {
        if value {
            if Pizza.ingredientes.count < 5 {
                Pizza.ingredientes.append(Pizza.opcionesDeIngredientes[7])
            } else
            {
                isPiña.setOn(false)
            }
        } else {
            Pizza.ingredientes.removeAtIndex(7)
        }
    }
    
    @IBAction func seleccionarSalami(value: Bool) {
        if value {
            if Pizza.ingredientes.count < 5 {
                Pizza.ingredientes.append(Pizza.opcionesDeIngredientes[8])
            } else
            {
                isSalami.setOn(false)
            }
        } else {
            Pizza.ingredientes.removeAtIndex(8)
        }
    }
    
    @IBAction func seleccionarSalchicha(value: Bool) {
        if value {
            if Pizza.ingredientes.count < 5 {
                Pizza.ingredientes.append(Pizza.opcionesDeIngredientes[9])
            }
            else
            {
                isSalchicha.setOn(false)
            }
        } else {
            Pizza.ingredientes.removeAtIndex(9)
        }
    }
    
}
