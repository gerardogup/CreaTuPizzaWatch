//
//  TamanoController.swift
//  CreaTuPizzaWatch
//
//  Created by Gerardo Guerra Pulido on 24/01/16.
//  Copyright © 2016 Gerardo Guerra Pulido. All rights reserved.
//

import WatchKit
import Foundation


class TamanoController: WKInterfaceController {

    @IBOutlet var ipTamano: WKInterfacePicker!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let pickerItems: [WKPickerItem] = Pizza.opcionesDeTamano.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            return pickerItem
        }
        ipTamano.setItems(pickerItems)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        if Pizza.tamano != "" {
            ipTamano.setSelectedItemIndex(Pizza.opcionesDeTamano.indexOf(Pizza.tamano)!)
        }
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func seleccionarTamano(value: Int) {
        Pizza.tamano = Pizza.opcionesDeTamano[value]
    }
}
