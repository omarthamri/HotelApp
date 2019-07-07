//
//  User.swift
//  HotelApp
//
//  Created by Omar Thamri on 07/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class User: NSObject {
    
    var full_name: String?
    var email: String?
    var phone_number: String?
    var password: String?
    
    init(full_name: String?,email: String?,phone_number: String?,password: String?) {
        super.init()
        self.full_name = full_name
        self.email = email
        self.phone_number = phone_number
        self.password = password
    }

}
