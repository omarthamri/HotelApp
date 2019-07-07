//
//  SignUpViewController.swift
//  HotelApp
//
//  Created by Omar Thamri on 06/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    var backgroundImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Hotel"))
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "HotelApp"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 36)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let fullNameTf: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Full Name",
                                                      attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        tf.borderStyle = .none
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let mailTf: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Email",
                                                      attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        tf.borderStyle = .none
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let phoneTf: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Phone Number",
                                                      attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        tf.borderStyle = .none
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let passwordTf: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Password",
                                                      attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        tf.borderStyle = .none
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let fullNameTfLine: TextFieldLineView = {
        let view = TextFieldLineView(frame: .zero)
        return view
    }()
    
    let phoneTfLine: TextFieldLineView = {
        let view = TextFieldLineView(frame: .zero)
        return view
    }()
    
    let mailTfLine: TextFieldLineView = {
        let view = TextFieldLineView(frame: .zero)
        return view
    }()
    
    let passwordTfLine: TextFieldLineView = {
        let view = TextFieldLineView(frame: .zero)
        return view
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = UIColor.orange
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 30
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(signUpAction), for: .touchUpInside)
        return button
    }()
    
    lazy var SignInLabel: UILabel = {
        let label = UILabel()
        label.text = "Already a Member? Sign In"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        let labelTapped = UITapGestureRecognizer(target: self, action: #selector(signInAction))
        label.isUserInteractionEnabled = true
        label.addGestureRecognizer(labelTapped)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    @objc func signUpAction() {
        saveUser()
    }
    
    @objc func signInAction() {
        let signInViewController = SignInViewController()
        navigationController?.pushViewController(signInViewController, animated: true)
    }
    
    func saveUser() {
        if  fullNameTf.text != "" && mailTf.text != "" && phoneTf.text != "" && passwordTf.text != "" {
        ApiService.sharedInstance.saveUser(user: User(full_name: fullNameTf.text, email: mailTf.text, phone_number: phoneTf.text, password: passwordTf.text))
        } else {
            self.displayAlert(title: "", message: "please complete all fields")
        }
    }
    
    func setupView() {
        view.addSubview(backgroundImage)
        view.addSubview(titleLabel)
        view.addSubview(mailTf)
        view.addSubview(mailTfLine)
        view.addSubview(passwordTf)
        view.addSubview(passwordTfLine)
        view.addSubview(fullNameTf)
        view.addSubview(fullNameTfLine)
        view.addSubview(phoneTf)
        view.addSubview(phoneTfLine)
        view.addSubview(signUpButton)
        view.addSubview(SignInLabel)
    }
    
    func setupConstraints() {
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":backgroundImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : backgroundImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":titleLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-\(view.frame.height / 5.5)-[v0(36)]-90-[v1(44)]-0.1-[v2(1)]-30-[v3(44)]-0.1-[v4(1)]-30-[v5(44)]-0.1-[v6(1)]-30-[v7(44)]-0.1-[v8(1)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":titleLabel,"v1" : fullNameTf,"v2" : fullNameTfLine,"v3":mailTf,"v4":mailTfLine,"v5":phoneTf,"v6":phoneTfLine,"v7":passwordTf,"v8":passwordTfLine]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":mailTf]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":mailTfLine]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":passwordTf]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":passwordTfLine]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":fullNameTf]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":fullNameTfLine]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":phoneTf]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":phoneTfLine]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":signUpButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(60)]-25-[v1(30)]-60-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": signUpButton,"v1":SignInLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":SignInLabel]))
    }

}
