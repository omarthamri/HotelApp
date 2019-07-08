//
//  CityCollectionViewCell.swift
//  HotelApp
//
//  Created by Omar Thamri on 08/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class CityCollectionViewCell: UICollectionViewCell {
    
    let cityImage: UIImageView = {
        let ci = UIImageView()
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
    }()
    
    let cityName: UILabel = {
       let cn = UILabel()
        cn.translatesAutoresizingMaskIntoConstraints = false
        cn.textColor = UIColor.darkGray
        cn.textAlignment = .center
        return cn
    }()
    
    var city: City? {
        didSet {
            if let imageName = city?.imageName {
                cityImage.image =  UIImage(named: imageName)
            }
            if let name = city?.name {
                cityName.text = name
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(cityImage)
        addSubview(cityName)
    }
    
    func setupConstraints() {
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":cityImage]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(80)]-10-[v1(20)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":cityImage,"v1":cityName]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":cityName]))
    }
    
}
