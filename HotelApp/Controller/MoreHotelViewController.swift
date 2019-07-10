//
//  MoreHotelViewController.swift
//  HotelApp
//
//  Created by Omar Thamri on 10/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class MoreHotelViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupView()
    }
    
    func setupView() {
        view.backgroundColor = UIColor.white
    }
    
    func setupNavigationBar() {
        navigationItem.title = "Recommended Hotels"
    }
    
}
