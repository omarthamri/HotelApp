//
//  HotelDetailViewController.swift
//  HotelApp
//
//  Created by Omar Thamri on 09/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class HotelDetailViewController: UIViewController {
    
    var hotelImagesView: HotelImagesView = {
       let hiv = HotelImagesView()
        hiv.translatesAutoresizingMaskIntoConstraints = false
        return hiv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupView()
        setupConstraints()
    }
    
    func setupView() {
    view.backgroundColor = UIColor.white
    view.addSubview(hotelImagesView)
    }
    
    func setupNavigationBar() {
    navigationItem.title = "Hotel Details"
    }
    
    func setupConstraints() {
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":hotelImagesView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-74-[v0(\((view.frame.height - 74) / 2))]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":hotelImagesView]))
    }
}
