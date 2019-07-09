//
//  CardView.swift
//  HotelApp
//
//  Created by Omar Thamri on 09/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class CardView: UIView {
    
    let cardNumberLabel : UILabel = {
       let cnl = UILabel()
       cnl.translatesAutoresizingMaskIntoConstraints = false
       cnl.textColor = UIColor.white
       cnl.font = UIFont.systemFont(ofSize: 13)
       cnl.text = "Card Number"
       return cnl
    }()
    
    let cardNumberValueLabel : UILabel = {
        let cnvl = UILabel()
        cnvl.translatesAutoresizingMaskIntoConstraints = false
        cnvl.textColor = UIColor.white
        cnvl.font = UIFont.boldSystemFont(ofSize: 15)
        cnvl.text = "4444 4444 4444 4444"
        return cnvl
    }()
    
    let visaImage: UIImageView = {
       let vi = UIImageView()
        vi.image = UIImage(named: "visa_logo")
        vi.translatesAutoresizingMaskIntoConstraints = false
        vi.contentMode = .scaleToFill
        vi.clipsToBounds = true
        vi.tintColor = UIColor.white
        return vi
    }()
    
    let cardOwnerLabel : UILabel = {
        let cnl = UILabel()
        cnl.translatesAutoresizingMaskIntoConstraints = false
        cnl.textColor = UIColor.white
        cnl.font = UIFont.systemFont(ofSize: 13)
        cnl.text = "Card Owner"
        return cnl
    }()
    
    let cardOwnerValueLabel : UILabel = {
        let cnvl = UILabel()
        cnvl.translatesAutoresizingMaskIntoConstraints = false
        cnvl.textColor = UIColor.white
        cnvl.font = UIFont.boldSystemFont(ofSize: 15)
        cnvl.text = "Omar Thamri"
        return cnvl
    }()
    
    let expireLabel : UILabel = {
        let cnl = UILabel()
        cnl.translatesAutoresizingMaskIntoConstraints = false
        cnl.textColor = UIColor.white
        cnl.font = UIFont.systemFont(ofSize: 13)
        cnl.text = "Expire"
        return cnl
    }()
    
    let expireValueLabel : UILabel = {
        let cnvl = UILabel()
        cnvl.translatesAutoresizingMaskIntoConstraints = false
        cnvl.textColor = UIColor.white
        cnvl.font = UIFont.boldSystemFont(ofSize: 15)
        cnvl.text = "07/20"
        return cnvl
    }()
    
    let issuedLabel : UILabel = {
        let cnl = UILabel()
        cnl.translatesAutoresizingMaskIntoConstraints = false
        cnl.textColor = UIColor.white
        cnl.font = UIFont.systemFont(ofSize: 13)
        cnl.text = "Issued"
        return cnl
    }()
    
    let issuedValueLabel : UILabel = {
        let cnl = UILabel()
        cnl.translatesAutoresizingMaskIntoConstraints = false
        cnl.textColor = UIColor.white
        cnl.font = UIFont.boldSystemFont(ofSize: 15)
        cnl.text = "07/17"
        return cnl
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
        addSubview(cardNumberLabel)
        addSubview(visaImage)
        addSubview(cardNumberValueLabel)
        addSubview(cardOwnerLabel)
        addSubview(cardOwnerValueLabel)
        addSubview(expireLabel)
        addSubview(expireValueLabel)
        addSubview(issuedLabel)
        addSubview(issuedValueLabel)
    }
    
    func setupConstraints() {
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(100)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":cardNumberLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[v0(20)]-10-[v1(20)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":cardNumberLabel,"v1":cardNumberValueLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v0(40)]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":visaImage]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[v0(12)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":visaImage]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(300)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":cardNumberValueLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(100)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":cardOwnerLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(20)]-10-[v1(20)]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":cardOwnerLabel,"v1":cardOwnerValueLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(300)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":cardOwnerValueLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(20)]-10-[v1(20)]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":expireLabel,"v1":expireValueLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v1(60)]-20-[v0(60)]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":expireLabel,"v1":issuedLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v1(60)]-20-[v0(60)]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":expireValueLabel,"v1":issuedValueLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(20)]-10-[v1(20)]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":issuedLabel,"v1":issuedValueLabel]))
        
    }
    
}
