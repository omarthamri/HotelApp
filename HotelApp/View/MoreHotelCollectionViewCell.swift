//
//  MoreHotelCollectionViewCell.swift
//  HotelApp
//
//  Created by Omar Thamri on 10/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class MoreHotelCollectionViewCell: UICollectionViewCell {
    
    let hotelImage: UIImageView = {
       let hi = UIImageView()
        hi.contentMode = .scaleAspectFill
        hi.clipsToBounds = true
        hi.translatesAutoresizingMaskIntoConstraints = false
        return hi
    }()
    
    let hotelNameLabel: UILabel = {
     let hnl = UILabel()
        hnl.text = "Hotel"
        hnl.textColor = UIColor.darkGray
        hnl.font = UIFont.boldSystemFont(ofSize: 14)
        hnl.translatesAutoresizingMaskIntoConstraints = false
        hnl.numberOfLines = 0
        hnl.lineBreakMode = .byWordWrapping
        hnl.sizeToFit()
        return hnl
    }()
    
    let roomLabel: UILabel = {
       let rl = UILabel()
        rl.translatesAutoresizingMaskIntoConstraints = false
        rl.text = "Special Room"
        rl.textColor = UIColor.darkGray
        rl.font = UIFont.systemFont(ofSize: 13)
        return rl
    }()
    let firstStarImageView: UIImageView = {
        let fsiv = UIImageView()
        fsiv.translatesAutoresizingMaskIntoConstraints = false
        fsiv.image = UIImage(named: "star")
        fsiv.contentMode = .scaleToFill
        fsiv.clipsToBounds = true
        return fsiv
    }()
    
    let secondStarImageView: UIImageView = {
        let fsiv = UIImageView()
        fsiv.translatesAutoresizingMaskIntoConstraints = false
        fsiv.image = UIImage(named: "star")
        fsiv.contentMode = .scaleToFill
        fsiv.clipsToBounds = true
        return fsiv
    }()
    
    let thirdStarImageView: UIImageView = {
        let fsiv = UIImageView()
        fsiv.translatesAutoresizingMaskIntoConstraints = false
        fsiv.image = UIImage(named: "star")
        fsiv.contentMode = .scaleToFill
        fsiv.clipsToBounds = true
        return fsiv
    }()
    
    let fourthStarImageView: UIImageView = {
        let fsiv = UIImageView()
        fsiv.translatesAutoresizingMaskIntoConstraints = false
        fsiv.image = UIImage(named: "star")
        fsiv.contentMode = .scaleToFill
        fsiv.clipsToBounds = true
        return fsiv
    }()
    
    let fiveStarImageView: UIImageView = {
        let fsiv = UIImageView()
        fsiv.translatesAutoresizingMaskIntoConstraints = false
        fsiv.image = UIImage(named: "star")
        fsiv.contentMode = .scaleToFill
        fsiv.clipsToBounds = true
        return fsiv
    }()
    
    let nightLabel: UILabel = {
        let rl = UILabel()
        rl.translatesAutoresizingMaskIntoConstraints = false
        rl.text = "1 night"
        rl.textColor = UIColor.darkGray
        rl.font = UIFont.systemFont(ofSize: 13)
        return rl
    }()
    
    let dateLabel: UILabel = {
        let rl = UILabel()
        rl.translatesAutoresizingMaskIntoConstraints = false
        rl.textColor = UIColor.darkGray
        rl.font = UIFont.systemFont(ofSize: 13)
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        rl.text = formatter.string(from: date)
        return rl
    }()
    
    let priceLabel: UILabel = {
        let rl = UILabel()
        rl.translatesAutoresizingMaskIntoConstraints = false
        rl.textColor = UIColor.darkGray
        rl.font = UIFont.boldSystemFont(ofSize: 16)
        rl.textColor = UIColor.orange
        return rl
    }()
    
    var hotel: Hotel? {
        didSet {
            if let imageName = hotel?.imageName {
                hotelImage.image = UIImage(named: imageName)
            }
            if let name = hotel?.name {
              hotelNameLabel.text = name
            }
            if let price = hotel?.price {
                priceLabel.text = "\(price)$"
            }
            if let numberOfStars = hotel?.number_of_stars {
                if numberOfStars == 3 {
                    fiveStarImageView.isHidden = true
                    fourthStarImageView.isHidden = true
                } else if numberOfStars == 4 {
                    fiveStarImageView.isHidden = true
                }
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
        addSubview(hotelImage)
        addSubview(roomLabel)
        addSubview(hotelNameLabel)
        addSubview(firstStarImageView)
        addSubview(secondStarImageView)
        addSubview(thirdStarImageView)
        addSubview(fourthStarImageView)
        addSubview(fiveStarImageView)
        addSubview(nightLabel)
        addSubview(dateLabel)
        addSubview(priceLabel)
    }
    
    func setupConstraints() {
        let widthvalue = (frame.width) / 2
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0(\(widthvalue))]-20-[v1(90)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":hotelImage,"v1":roomLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":hotelImage]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[v0(20)]-10-[v1(20)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":roomLabel,"v1":hotelNameLabel]))
        hotelNameLabel.leftAnchor.constraint(equalTo: roomLabel.leftAnchor).isActive = true
        hotelNameLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        firstStarImageView.leftAnchor.constraint(equalTo: roomLabel.leftAnchor).isActive = true
        firstStarImageView.widthAnchor.constraint(equalToConstant: 10).isActive = true
        secondStarImageView.leftAnchor.constraint(equalTo: firstStarImageView.rightAnchor,constant: 5).isActive = true
        secondStarImageView.widthAnchor.constraint(equalToConstant: 10).isActive = true
        thirdStarImageView.leftAnchor.constraint(equalTo: secondStarImageView.rightAnchor,constant: 5).isActive = true
        thirdStarImageView.widthAnchor.constraint(equalToConstant: 10).isActive = true
        fourthStarImageView.leftAnchor.constraint(equalTo: thirdStarImageView.rightAnchor,constant: 5).isActive = true
        fourthStarImageView.widthAnchor.constraint(equalToConstant: 10).isActive = true
        fiveStarImageView.leftAnchor.constraint(equalTo: fourthStarImageView.rightAnchor,constant: 5).isActive = true
        fiveStarImageView.widthAnchor.constraint(equalToConstant: 10).isActive = true
        firstStarImageView.topAnchor.constraint(equalTo: hotelNameLabel.bottomAnchor,constant: 10).isActive = true
        secondStarImageView.topAnchor.constraint(equalTo: firstStarImageView.topAnchor).isActive = true
        thirdStarImageView.topAnchor.constraint(equalTo: firstStarImageView.topAnchor).isActive = true
        fourthStarImageView.topAnchor.constraint(equalTo: firstStarImageView.topAnchor).isActive = true
        fiveStarImageView.topAnchor.constraint(equalTo: firstStarImageView.topAnchor).isActive = true
        firstStarImageView.heightAnchor.constraint(equalToConstant: 10).isActive = true
        secondStarImageView.heightAnchor.constraint(equalTo: firstStarImageView.heightAnchor).isActive = true
        thirdStarImageView.heightAnchor.constraint(equalTo: firstStarImageView.heightAnchor).isActive = true
        fourthStarImageView.heightAnchor.constraint(equalTo: firstStarImageView.heightAnchor).isActive = true
        fiveStarImageView.heightAnchor.constraint(equalTo: firstStarImageView.heightAnchor).isActive = true
        nightLabel.leftAnchor.constraint(equalTo: firstStarImageView.leftAnchor).isActive = true
        nightLabel.topAnchor.constraint(equalTo: firstStarImageView.bottomAnchor,constant: 10).isActive = true
        nightLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nightLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        dateLabel.leftAnchor.constraint(equalTo: firstStarImageView.leftAnchor).isActive = true
        dateLabel.topAnchor.constraint(equalTo: nightLabel.bottomAnchor,constant: 10).isActive = true
        dateLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        dateLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        priceLabel.leftAnchor.constraint(equalTo: firstStarImageView.leftAnchor).isActive = true
        priceLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor,constant: 10).isActive = true
        priceLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        priceLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
}
