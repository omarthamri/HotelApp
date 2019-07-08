//
//  SignInViewController.swift
//  HotelApp
//
//  Created by Omar Thamri on 06/07/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
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
    
    
    
    let mailTf: UITextField = {
       let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Email Or Phone",
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
    
    let mailTfLine: TextFieldLineView = {
       let view = TextFieldLineView(frame: .zero)
        return view
    }()
    
    let passwordTfLine: TextFieldLineView = {
        let view = TextFieldLineView(frame: .zero)
        return view
    }()
    
    let signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.backgroundColor = UIColor.orange
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 30
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(signInAction), for: .touchUpInside)
        return button
    }()
    
    let ForgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Forgot Password?"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
     lazy var SignUpLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign Up"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        let labelTapped = UITapGestureRecognizer(target: self, action: #selector(signUpAction))
        label.isUserInteractionEnabled = true
        label.addGestureRecognizer(labelTapped)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints() 
    }
    
    @objc func signInAction() {
    let homeViewController = HomeViewController()
        navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    @objc func signUpAction() {
        let signUpViewController = SignUpViewController()
        navigationController?.pushViewController(signUpViewController, animated: true)
    }
    
    func setupView() {
        view.backgroundColor = UIColor.white
        view.addSubview(backgroundImage)
        view.addSubview(titleLabel)
        view.addSubview(mailTf)
        view.addSubview(mailTfLine)
        view.addSubview(passwordTf)
        view.addSubview(passwordTfLine)
        view.addSubview(signInButton)
        view.addSubview(ForgotPasswordLabel)
        view.addSubview(SignUpLabel)
    }
    
    func setupConstraints() {
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":backgroundImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : backgroundImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":titleLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-\(view.frame.height / 5.5)-[v0(36)]-90-[v1(44)]-0.1-[v2(1)]-30-[v3(44)]-0.1-[v4(1)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":titleLabel,"v1" : mailTf,"v2" : mailTfLine,"v3":passwordTf,"v4":passwordTfLine]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":mailTf]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":mailTfLine]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":passwordTf]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":passwordTfLine]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":signInButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(60)]-25-[v1(30)]-25-[v2(30)]-60-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : signInButton,"v1":ForgotPasswordLabel,"v2":SignUpLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":ForgotPasswordLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":SignUpLabel]))
    }

}
