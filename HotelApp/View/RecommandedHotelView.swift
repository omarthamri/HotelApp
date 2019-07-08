//
//  RecommandedHotelView.swift
//  HotelApp
//
//  Created by Omar Thamri on 08/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class RecommandedHotelView: UIView {
    
    let recommendedHotelLabel: UILabel = {
       let rhv = UILabel()
        rhv.text = "Recommended Hotels"
        rhv.textColor = UIColor.darkGray
        rhv.translatesAutoresizingMaskIntoConstraints = false
        rhv.font = UIFont.boldSystemFont(ofSize: 16)
        return rhv
    }()
    
    let ViewMoreLabel: UILabel = {
        let vml = UILabel()
        vml.text = "View More"
        vml.textColor = UIColor.darkGray
        vml.translatesAutoresizingMaskIntoConstraints = false
        vml.font = UIFont.systemFont(ofSize: 13)
        vml.textAlignment = .right
        return vml
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
        addSubview(recommendedHotelLabel)
        addSubview(ViewMoreLabel)
    }
    
    func setupConstraints() {
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":recommendedHotelLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(30)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":recommendedHotelLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v0(100)]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":ViewMoreLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(30)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":ViewMoreLabel]))
    }
    
}
