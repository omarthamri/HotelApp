//
//  ViewController.swift
//  HotelApp
//
//  Created by Omar Thamri on 06/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var backgroundImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Hotel"))
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    func setupView() {
        navigationController?.navigationBar.isHidden = true
        view.addSubview(backgroundImage)
    }

    func setupConstraints() {
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":backgroundImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : backgroundImage]))
    }

}

