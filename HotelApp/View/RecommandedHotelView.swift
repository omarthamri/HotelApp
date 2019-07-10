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
    
    var homeViewController: HomeViewController?
    
    lazy var ViewMoreLabel: UILabel = {
        let vml = UILabel()
        vml.text = "View More"
        vml.textColor = UIColor.darkGray
        vml.translatesAutoresizingMaskIntoConstraints = false
        vml.font = UIFont.systemFont(ofSize: 13)
        vml.textAlignment = .right
        let labelTapped = UITapGestureRecognizer(target: self, action: #selector(ViewMoreTapped))
        vml.isUserInteractionEnabled = true
        vml.addGestureRecognizer(labelTapped)
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
    
    let recommendedHotels = [Hotel(name: "DZH Health Resort Club",imageName: "DZH_Health_Resort_Club",price:40,number_of_stars: 3,hotel_description: "Featuring a restaurant and a 24-hour front desk, DZH Health Resort Club offers basic accommodations located 6.2 mi from Genting Highlands. Free WiFi is accessible throughout and free parking is provided. Fitted with air conditioning or fan-cooled, every room comes with a flat-screen TV The private bathroom has free toiletries and a hairdryer. Guests can enjoy a meal at the Chinese Restaurant, set above the fish pond. Guests also can experience the Chinese traditional Aye treatment at the Aye treatment center. "),Hotel(name: "Best Western Bowery Hanbee Hotel",imageName: "Best_Western_Bowery_Hanbee_Hotel",price:220,number_of_stars: 5, hotel_description: "Choose this completely non-smoking hotel in New York City, located next to the subway and major local attractions such as Canal Street, Chinatown and Little Italy. Welcome to the Best Western Bowery Hanbee Hotel, which offers exceptional customer service and accommodations at an affordable rate. This New York City hotel features well-appointed guest rooms and suites, each featuring cable satellite television with HBO® and free wireless high-speed Internet."),Hotel(name: "Hotel Paris Louvre Opera",imageName: "Hotel_Paris_Louvre_Opera",price:170,number_of_stars: 5, hotel_description: "The Paris Opera Louvre Hotel is an elegant establishment occupying a magnificent 17th-century building just a 5-minute walk from the famous Louvre Museum and Opéra Garnier. All rooms are air conditioned and soundproofed. Guests enjoy free Wi-Fi and a free minibar with free drinks and snacks.")]
    
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        homeViewController?.passedHotel = recommendedHotels[indexPath.item]
        homeViewController?.displayDetailHotel()
    }
    
    @objc func ViewMoreTapped() {
        homeViewController?.recommendedHotels = recommendedHotels
        homeViewController?.showMoreRecommendedHotels()
    }
    
}
