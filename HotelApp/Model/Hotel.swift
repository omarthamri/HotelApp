//
//  Hotel.swift
//  HotelApp
//
//  Created by Omar Thamri on 09/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class Hotel: NSObject {
    
    var name: String?
    var imageName: String?
    var price: Int?
    
    init(name: String?,imageName: String?,price: Int?) {
        super.init()
        self.name = name
        self.imageName = imageName
        self.price = price
    }
    
}
