//
//  InterfaceController.swift
//  CreaTuPizzaWatch WatchKit Extension
//
//  Created by Gerardo Guerra Pulido on 23/01/16.
//  Copyright © 2016 Gerardo Guerra Pulido. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        Pizza.tamano = "No Seleccionado"
        Pizza.masa = "No Seleccionado"
        Pizza.queso = "No Seleccionado"
        super.didDeactivate()
    }

}
