//
//  CongratulationViewController.swift
//  HotelApp
//
//  Created by Omar Thamri on 10/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class CongratulationViewController: UIViewController {
    
    var backgroundImage: UIImageView = {
       var bi = UIImageView()
        bi.contentMode = .scaleToFill
        bi.clipsToBounds = true
        bi.image = UIImage(named: "congratulation")
        bi.translatesAutoresizingMaskIntoConstraints = false
        return bi
    }()
    
    let congratulationView : UIView = {
       let cv = UIView()
        cv.backgroundColor = UIColor.orange
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.alpha = 0.5
        return cv
    }()
    
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
        cv.backgroundColor = UIColor.init(white: 0.95, alpha: 0.5)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.layer.masksToBounds = true
        cv.layer.cornerRadius = 40
        return cv
    }()
    
    let circledViewOrange: UIView = {
        let cv = UIView()
        cv.backgroundColor = UIColor.orange
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.layer.masksToBounds = true
        cv.alpha = 0.5
        cv.layer.cornerRadius = 60
        return cv
    }()
    
    let congratulationLabel: UILabel = {
        let cl = UILabel()
        cl.text = "Congratulation"
        cl.textColor = UIColor.white
        cl.font = UIFont.systemFont(ofSize: 35)
        cl.translatesAutoresizingMaskIntoConstraints = false
        cl.textAlignment = .center
        return cl
    }()
    
    let congratulationDescription: UILabel = {
        let cl = UILabel()
        cl.text = "Your Payment is successful. Your booking is confirmed now. All details are sent on your provided mail"
        cl.textColor = UIColor.white
        cl.font = UIFont.systemFont(ofSize: 15)
        cl.translatesAutoresizingMaskIntoConstraints = false
        cl.textAlignment = .center
        cl.numberOfLines = 0
        cl.lineBreakMode = .byWordWrapping
        cl.sizeToFit()
        return cl
    }()
    
    let okButton: UIButton = {
        let button = UIButton()
        button.setTitle("Ok", for: .normal)
        button.backgroundColor = UIColor.clear
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 30
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.addTarget(self, action: #selector(okAction), for: .touchUpInside)
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    func setupView() {
        navigationController?.navigationBar.isHidden = true
        view.addSubview(backgroundImage)
        view.addSubview(circledViewOrange)
        view.addSubview(congratulationView)
        view.addSubview(circledView)
        view.addSubview(congratulationImageView)
        view.addSubview(congratulationLabel)
        view.addSubview(congratulationDescription)
        view.addSubview(okButton)
    }
    
    func setupConstraints() {
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":backgroundImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":backgroundImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-40-[v0]-40-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":congratulationView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-120-[v0]-120-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":congratulationView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-170-[v0(80)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":circledView]))
        circledView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        circledView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-150-[v0(120)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":circledViewOrange]))
        circledViewOrange.widthAnchor.constraint(equalToConstant: 120).isActive = true
        circledViewOrange.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-190-[v0(40)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":congratulationImageView]))
        congratulationImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        congratulationImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        congratulationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        congratulationLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -50).isActive = true
        congratulationLabel.widthAnchor.constraint(equalToConstant: 280).isActive = true
        congratulationLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        congratulationDescription.leftAnchor.constraint(equalTo: congratulationView.leftAnchor,constant: 20).isActive = true
        congratulationDescription.rightAnchor.constraint(equalTo: congratulationView.rightAnchor,constant: -20).isActive = true
        congratulationDescription.heightAnchor.constraint(equalToConstant: 200).isActive = true
        congratulationDescription.topAnchor.constraint(equalTo: congratulationLabel.topAnchor, constant: 5).isActive = true
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-120-[v0]-120-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":okButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(60)]-180-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":okButton]))
    }
    
    @objc func okAction() {
        
        let homeViewController = HomeViewController()
        navigationController?.pushViewController(homeViewController, animated: true)
        
    }
    
}
