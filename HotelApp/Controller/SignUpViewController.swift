//
//  SignUpViewController.swift
//  HotelApp
//
//  Created by Omar Thamri on 06/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    var backgroundImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Hotel"))
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "HotelApp"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 36)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    func setupView() {
        view.addSubview(backgroundImage)
        view.addSubview(titleLabel)
    }
    
    func setupConstraints() {
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":backgroundImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : backgroundImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":titleLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-\(view.frame.height / 5.5)-[v0(36)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":titleLabel]))
    }

}
