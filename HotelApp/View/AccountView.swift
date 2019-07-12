//
//  AccountView.swift
//  HotelApp
//
//  Created by Omar Thamri on 12/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class AccountView: UIView, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    
    var profileImgView : UIImageView = {
       let piv = UIImageView()
        piv.image = UIImage(named: "no-profil")
        piv.contentMode = .scaleToFill
        piv.clipsToBounds = true
        piv.translatesAutoresizingMaskIntoConstraints = false
        return piv
    }()
    
    lazy var cameraImgView: UIImageView = {
        let civ = UIImageView()
        civ.image = UIImage(named: "camera")
        civ.tintColor = UIColor.white
        civ.contentMode = .scaleToFill
        civ.clipsToBounds = true
        civ.translatesAutoresizingMaskIntoConstraints = false
        let imgTapped = UITapGestureRecognizer(target: self, action: #selector(cameraImgTapped))
        civ.isUserInteractionEnabled = true
        civ.addGestureRecognizer(imgTapped)
        return civ
    }()
    
    let fullNameLabel: UILabel = {
        let cnl = UILabel()
        cnl.textColor = UIColor.darkGray
        cnl.text = "Full Name"
        cnl.font = UIFont.systemFont(ofSize: 13)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let fullNameTf: UITextField = {
        let cnl = UITextField()
        cnl.textColor = UIColor.darkGray
        cnl.text = "Omar Thamri"
        cnl.borderStyle = .none
        cnl.font = UIFont.boldSystemFont(ofSize: 15)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let fullNameView: UIView = {
        let cnv = UIView()
        cnv.backgroundColor = UIColor.init(white: 0.9, alpha: 1)
        cnv.translatesAutoresizingMaskIntoConstraints = false
        return cnv
    }()
    
    let mailLabel: UILabel = {
        let cnl = UILabel()
        cnl.textColor = UIColor.darkGray
        cnl.text = "Email"
        cnl.font = UIFont.systemFont(ofSize: 13)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let mailTf: UITextField = {
        let cnl = UITextField()
        cnl.textColor = UIColor.darkGray
        cnl.text = "omarthamri@develop.com"
        cnl.borderStyle = .none
        cnl.font = UIFont.boldSystemFont(ofSize: 15)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let mailView: UIView = {
        let cnv = UIView()
        cnv.backgroundColor = UIColor.init(white: 0.9, alpha: 1)
        cnv.translatesAutoresizingMaskIntoConstraints = false
        return cnv
    }()
    
    let phoneLabel: UILabel = {
        let cnl = UILabel()
        cnl.textColor = UIColor.darkGray
        cnl.text = "Phone Number"
        cnl.font = UIFont.systemFont(ofSize: 13)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let phoneTf: UITextField = {
        let cnl = UITextField()
        cnl.textColor = UIColor.darkGray
        cnl.text = "53 615 510"
        cnl.borderStyle = .none
        cnl.font = UIFont.boldSystemFont(ofSize: 15)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let phoneView: UIView = {
        let cnv = UIView()
        cnv.backgroundColor = UIColor.init(white: 0.9, alpha: 1)
        cnv.translatesAutoresizingMaskIntoConstraints = false
        return cnv
    }()
    
    let cityLabel: UILabel = {
        let cnl = UILabel()
        cnl.textColor = UIColor.darkGray
        cnl.text = "City"
        cnl.font = UIFont.systemFont(ofSize: 13)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let cityTf: UITextField = {
        let cnl = UITextField()
        cnl.textColor = UIColor.darkGray
        cnl.text = "Tunis, Tunisia"
        cnl.borderStyle = .none
        cnl.font = UIFont.boldSystemFont(ofSize: 15)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let cityView: UIView = {
        let cnv = UIView()
        cnv.backgroundColor = UIColor.init(white: 0.9, alpha: 1)
        cnv.translatesAutoresizingMaskIntoConstraints = false
        return cnv
    }()
    
    let saveChangesButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save Changes", for: .normal)
        button.backgroundColor = UIColor.orange
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 30
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(saveChangeAction), for: .touchUpInside)
        return button
    }()
    
    lazy var imagePicker: UIImagePickerController = {
       let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .savedPhotosAlbum
        imagePicker.allowsEditing = false
        return imagePicker
    }()
    var accountViewController: AccountViewController?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(profileImgView)
        addSubview(cameraImgView)
        addSubview(fullNameLabel)
        addSubview(fullNameTf)
        addSubview(fullNameView)
        addSubview(mailLabel)
        addSubview(mailTf)
        addSubview(mailView)
        addSubview(phoneLabel)
        addSubview(phoneTf)
        addSubview(phoneView)
        addSubview(cityLabel)
        addSubview(cityTf)
        addSubview(cityView)
        addSubview(saveChangesButton)
    }
    
    func setupConstraints() {
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":profileImgView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(\((UIScreen.main.bounds.height - 64) / 3))]-30-[v1(20)]-10-[v2(20)]-5-[v3(2)]-20-[v4(20)]-10-[v5(20)]-5-[v6(2)]-20-[v7(20)]-10-[v8(20)]-5-[v9(2)]-20-[v10(20)]-10-[v11(20)]-5-[v12(2)]-30-[v13(60)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":profileImgView,"v1":fullNameLabel,"v2":fullNameTf,"v3":fullNameView,"v4":mailLabel,"v5":mailTf,"v6":mailView,"v7":phoneLabel,"v8":phoneTf,"v9":phoneView,"v10":cityLabel,"v11":cityTf,"v12":cityView,"v13":saveChangesButton]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(30)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":cameraImgView]))
        let distance = ((UIScreen.main.bounds.height - 64) / 3 ) - 55
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-\(distance)-[v0(30)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":cameraImgView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(150)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":fullNameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(150)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":fullNameTf]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":fullNameView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(150)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":mailLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(250)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":mailTf]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":mailView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(150)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":phoneLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(250)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":phoneTf]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":phoneView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(150)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":cityLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(250)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":cityTf]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":cityView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":saveChangesButton]))
        
    }
    
    @objc func cameraImgTapped() {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            accountViewController?.present(imagePicker, animated: true, completion: nil)
            
        }
    }
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!){
        accountViewController?.dismiss(animated: true, completion: { () -> Void in
        })
        profileImgView.image = image
    }
    
    @objc func saveChangeAction() {
        
    }
}
