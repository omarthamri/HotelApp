//
//  RecommandedHotelCollectionViewCell.swift
//  HotelApp
//
//  Created by Omar Thamri on 09/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class RecommandedHotelCollectionViewCell: UICollectionViewCell {
    
    var hotel: Hotel? {
        didSet {
            if let imageName = hotel?.imageName {
            recommendedHotelImageView.image = UIImage(named: imageName)
            }
            if let name = hotel?.name {
            recommendedHotelNameLabel.text = name
            }
            if let price = hotel?.price {
                priceLabel.text = "\(price)$"
            }
        }
    }
    
    let recommendedHotelImageView: UIImageView = {
        let recommendedHotelImageView = UIImageView()
        recommendedHotelImageView.contentMode = .scaleAspectFill
        recommendedHotelImageView.clipsToBounds = true
        recommendedHotelImageView.translatesAutoresizingMaskIntoConstraints = false
        return recommendedHotelImageView
    }()
    
    let recommendedHotelNameLabel: UILabel = {
       let rhnl = UILabel()
        rhnl.translatesAutoresizingMaskIntoConstraints = false
        rhnl.textColor = UIColor.white
        rhnl.font = UIFont.boldSystemFont(ofSize: 16)
        return rhnl
    }()
    
    let priceLabel: UILabel = {
        let rhnl = UILabel()
        rhnl.translatesAutoresizingMaskIntoConstraints = false
        rhnl.textColor = UIColor.white
        rhnl.font = UIFont.systemFont(ofSize: 14)
        return rhnl
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
        addSubview(recommendedHotelImageView)
        addSubview(recommendedHotelNameLabel)
        addSubview(priceLabel)
    }
    
    func setupConstraints() {
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":recommendedHotelImageView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":recommendedHotelImageView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":recommendedHotelNameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(20)]-5-[v1(20)]-15-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":recommendedHotelNameLabel,"v1":priceLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":priceLabel]))
    }
    
}
