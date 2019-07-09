//
//  HotelImageCollectionView.swift
//  HotelApp
//
//  Created by Omar Thamri on 09/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class HotelImageCollectionViewCell: UICollectionViewCell {
    
    let hotelImageView: UIImageView = {
        let hiv = UIImageView()
        hiv.translatesAutoresizingMaskIntoConstraints = false
        hiv.image = UIImage(named: "london")
        hiv.contentMode = .scaleAspectFill
        hiv.clipsToBounds = true
        hiv.backgroundColor = UIColor.red
        return hiv
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
        addSubview(hotelImageView)
        backgroundColor = UIColor.yellow
    }
    
    func setupConstraints() {
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":hotelImageView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":hotelImageView]))
    }
    
    
}
