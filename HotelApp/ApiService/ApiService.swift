//
//  ApiService.swift
//  HotelApp
//
//  Created by Omar Thamri on 07/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit
import CoreData

class ApiService: NSObject {
    
    static let sharedInstance = ApiService()
    
    func saveUser(user: User?) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Users", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        newUser.setValue("test test", forKey: "full_name")
        newUser.setValue("test@test.com", forKey: "email")
        newUser.setValue("123456789", forKey: "phone_number")
        newUser.setValue("test", forKey: "password")
        do {
            try context.save()
        } catch {
            print("Failed saving")
        }
    }
    
    
    
}
