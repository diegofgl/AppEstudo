//
//  LoginView.swift
//  AppEstudo
//
//  Created by Diego Rodrigues on 29/11/23.
//

import UIKit

protocol HomeScreenProtocol: AnyObject {
    func tappedButton(text: String)
}

class LoginView: UIView {
    
    private weak var delegate: HomeScreenProtocol?
    
    public func setDelegate(delegate: HomeScreenProtocol) {
        self.delegate = delegate
    }
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign In"
        label.textColor = .orange
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    lazy var nameTextField: UITextField = {
     let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .lightGray
        textField.placeholder = ""
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Name"
        label.textColor = .yellow
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    lazy var emailTextField: UITextField = {
     let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .lightGray
        textField.placeholder = ""
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        label.textColor = .yellow
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
     let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .lightGray
        textField.placeholder = ""
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password"
        label.textColor = .yellow
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "arrow.right")
        image.tintColor = UIColor.yellow
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var accountButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Or sign up with social account", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.orange, for: .normal)
       return button
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign In", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.setTitleColor(.black, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.backgroundColor = .orange
        button.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
       return button
    }()
    
    @objc public func tappedButton() {
        let text = nameTextField.text ?? ""
        delegate?.tappedButton(text: text)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    private func addElements() {
        addSubview(titleLabel)
        addSubview(nameTextField)
        addSubview(nameLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(emailLabel)
        addSubview(passwordLabel)
        addSubview(imageView)
        addSubview(accountButton)
        addSubview(button)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            nameLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 60),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            nameTextField.heightAnchor.constraint(equalToConstant: 60),
            
            emailLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 5),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),

            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant:5),
            passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),

            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 60),
            
            imageView.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            imageView.heightAnchor.constraint(equalToConstant: 20),
            
            //accountButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            accountButton.trailingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: -5),
            accountButton.centerYAnchor.constraint(equalTo: imageView.centerYAnchor),
            
            button.topAnchor.constraint(equalTo: accountButton.bottomAnchor, constant: 50),
            button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            button.heightAnchor.constraint(equalToConstant: 60),
    
        ])
    }
}
