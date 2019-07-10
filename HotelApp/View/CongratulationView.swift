//
//  CongratulationView.swift
//  HotelApp
//
//  Created by Omar Thamri on 10/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class CongratulationView: UIView {
    
    let congratulationImageView: UIImageView = {
       let civ = UIImageView()
        civ.tintColor = UIColor.white
        civ.image = UIImage(named: "like")
        civ.contentMode = .scaleToFill
        civ.translatesAutoresizingMaskIntoConstraints = false
        return civ
    }()
    
    let circledView: UIView = {
       let cv = UIView()
        cv.backgroundColor = UIColor.init(white: 0.8, alpha: 1)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.layer.masksToBounds = true
        cv.layer.cornerRadius = 40
        return cv
    }()
    
    let congratulationLabel: UILabel = {
        let cl = UILabel()
        cl.text = "Congratulation"
        cl.textColor = UIColor.white
        cl.font = UIFont.boldSystemFont(ofSize: 25)
        cl.translatesAutoresizingMaskIntoConstraints = false
        cl.textAlignment = .center
        return cl
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = UIColor.orange
       /* addSubview(circledView)
        circledView.addSubview(congratulationImageView)
        addSubview(congratulationLabel)*/
    }
    
    func setupConstraints() {
        /* circledView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        circledView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-50-[v0(80)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":circledView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(40)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":congratulationImageView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[v0(40)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":congratulationImageView]))
        congratulationLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        congratulationLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        congratulationLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        congratulationLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true*/
    }
    
    
}
