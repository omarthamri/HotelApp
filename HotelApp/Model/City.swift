//
//  City.swift
//  HotelApp
//
//  Created by Omar Thamri on 08/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class City: NSObject {
    var name: String?
    var imageName: String?
    
     init(name: String?,imageName: String?) {
        super.init()
        self.name = name
        self.imageName = imageName
    }

}
