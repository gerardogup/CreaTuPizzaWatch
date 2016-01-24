//
//  QuesoController.swift
//  CreaTuPizzaWatch
//
//  Created by Gerardo Guerra Pulido on 24/01/16.
//  Copyright © 2016 Gerardo Guerra Pulido. All rights reserved.
//

import WatchKit
import Foundation


class QuesoController: WKInterfaceController {

    @IBOutlet var ipQueso: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let pickerItems: [WKPickerItem] = Pizza.opcionesDeQueso.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            return pickerItem
        }
        ipQueso.setItems(pickerItems)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        if Pizza.queso != "" {
            ipQueso.setSelectedItemIndex(Pizza.opcionesDeQueso.indexOf(Pizza.queso)!)
        }
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func seleccionarQueso(value: Int) {
        Pizza.queso = Pizza.opcionesDeQueso[value]

    }
}
