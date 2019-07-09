//
//  RecommandedHotelView.swift
//  HotelApp
//
//  Created by Omar Thamri on 08/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class RecommandedHotelView: UIView {
    
    let recommendedCellId = "recommendedCellId"
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
    
    lazy var recommendedHotelCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
       let rhcv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        rhcv.translatesAutoresizingMaskIntoConstraints = false
        rhcv.delegate = self
        rhcv.dataSource = self
        rhcv.backgroundColor = UIColor.white
        return rhcv
    }()
    
    let recommendedHotels = [Hotel(name: "DZH Health Resort Club",imageName: "DZH_Health_Resort_Club",price:40),Hotel(name: "Best Western Bowery Hanbee Hotel",imageName: "Best_Western_Bowery_Hanbee_Hotel",price:220),Hotel(name: "Hotel Paris Louvre Opera",imageName: "Hotel_Paris_Louvre_Opera",price:170)]
    
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
        addSubview(recommendedHotelCollectionView)
        recommendedHotelCollectionView.register(RecommandedHotelCollectionViewCell.self, forCellWithReuseIdentifier: recommendedCellId)
    }
    
    func setupConstraints() {
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":recommendedHotelLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(30)]-20-[v1]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":recommendedHotelLabel,"v1":recommendedHotelCollectionView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v0(100)]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":ViewMoreLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(30)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":ViewMoreLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":recommendedHotelCollectionView]))
    }
    
    
    
}

extension RecommandedHotelView: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: recommendedCellId, for: indexPath) as! RecommandedHotelCollectionViewCell
        cell.hotel = recommendedHotels[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 200)
    }
    
}
