//
//  CongratulationViewController.swift
//  HotelApp
//
//  Created by Omar Thamri on 10/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class CongratulationViewController: UIViewController {
    
    var backgroundImage: UIImageView = {
       var bi = UIImageView()
        bi.contentMode = .scaleToFill
        bi.clipsToBounds = true
        bi.image = UIImage(named: "congratulation")
        bi.translatesAutoresizingMaskIntoConstraints = false
        return bi
    }()
    
    let congratulationView : CongratulationView = {
       let cv = CongratulationView()
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.alpha = 0.5
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    func setupView() {
        navigationController?.navigationBar.isHidden = true
        view.addSubview(backgroundImage)
        view.addSubview(congratulationView)
    }
    
    func setupConstraints() {
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":backgroundImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":backgroundImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-40-[v0]-40-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":congratulationView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-100-[v0]-100-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":congratulationView]))
    }
    
}
