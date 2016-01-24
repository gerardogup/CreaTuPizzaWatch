//
//  MasaController.swift
//  CreaTuPizzaWatch
//
//  Created by Gerardo Guerra Pulido on 24/01/16.
//  Copyright © 2016 Gerardo Guerra Pulido. All rights reserved.
//

import WatchKit
import Foundation


class MasaController: WKInterfaceController {
    
    @IBOutlet var ipMasa: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let pickerItems: [WKPickerItem] = Pizza.opcionesDeMasa.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            return pickerItem
        }
        ipMasa.setItems(pickerItems)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        if Pizza.masa != "" {
            ipMasa.setSelectedItemIndex(Pizza.opcionesDeMasa.indexOf(Pizza.masa)!)
        }
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func seleccionarMasa(value: Int) {
        Pizza.masa = Pizza.opcionesDeMasa[value]

    }
}
