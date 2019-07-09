//
//  NightRoomView.swift
//  HotelApp
//
//  Created by Omar Thamri on 09/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class NightRoomView: UIView {
    
    let minusLabel: UILabel = {
       let ml = UILabel()
        ml.textAlignment = .center
        ml.textColor = UIColor.darkGray
        ml.translatesAutoresizingMaskIntoConstraints = false
        ml.font = UIFont.systemFont(ofSize: 13)
        ml.text = "-"
        return ml
    }()
    
    let plusLabel: UILabel = {
        let pl = UILabel()
        pl.textAlignment = .center
        pl.textColor = UIColor.darkGray
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.font = UIFont.systemFont(ofSize: 13)
        pl.text = "+"
        return pl
    }()
    
    let valueLabel: UILabel = {
        let pl = UILabel()
        pl.textAlignment = .center
        pl.textColor = UIColor.darkGray
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.font = UIFont.systemFont(ofSize: 13)
        pl.text = "1"
        return pl
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
        backgroundColor = UIColor.init(white: 0.95, alpha: 1)
        addSubview(minusLabel)
        addSubview(plusLabel)
        addSubview(valueLabel)
    }
    
    func setupConstraints() {
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0(20)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":minusLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":minusLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v0(20)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":plusLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":plusLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(20)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":valueLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":valueLabel]))
    }
    
}
