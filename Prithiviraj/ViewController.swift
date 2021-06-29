//
//  ViewController.swift
//  Prithiviraj
//
//  Created by DCS on 19/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 25
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(MoveToAddress), for: .touchUpInside)
        return button
        
    }()
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "SuperSnacks Cafe"
        label.backgroundColor = .clear
        label.textAlignment = .center
        label.highlightedTextColor = .white
        label.textColor = .white
        label.font = .systemFont(ofSize:30)
        return label
    }()
    
    private let myLabel1:UILabel = {
        let label = UILabel()
        label.text = "Welcome to the our cafe"
        label.backgroundColor = .clear
        label.textAlignment = .center
        label.highlightedTextColor = .white
        label.textColor = .white
        label.font = .systemFont(ofSize:20)
        return label
    }()
    private let myTextView:UITextView = {
        let textView = UITextView()
        textView.text = "Enter YOur Address"
        textView.textAlignment = .center
        textView.backgroundColor = .white
        textView.layer.cornerRadius = 25
        textView.textColor = .black
        textView.font = .systemFont(ofSize:20)
        return textView
    }()
    private let myPageControl:UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 4
        pageControl.currentPage = 1
        pageControl.addTarget(self, action: #selector(pgctr), for: .valueChanged)
        return pageControl
        
    }()
    private let myProgressView:UIProgressView = {
        let progressView = UIProgressView()
        progressView.setProgress(0.0, animated: true)
        return progressView
    }()
    private let myTextFieldFname:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter First Name"
        textField.textAlignment = .center
        
        textField.layer.cornerRadius = 25
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.font = .systemFont(ofSize:20)
        return textField
    }()
    private let myTextFieldLname:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Second Name"
        textField.textAlignment = .center
        
        textField.layer.cornerRadius = 25
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.font = .systemFont(ofSize:20)
        return textField
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myButton)
        view.addSubview(myTextFieldFname)
        view.addSubview(myTextFieldLname)
        view.addSubview(myTextView)
        view.addSubview(myLabel)
        view.addSubview(myLabel1)
        view.addSubview(myPageControl)
        view.addSubview(myProgressView)
        self.view.backgroundColor = UIColor(patternImage:   UIImage(named: "bg11.jpg")!)
    }
    
    @objc private func MoveToAddress() {
        print("next page->address")
        let vc = AddressVC()
        navigationController?.pushViewController(vc, animated: false)
    }
    
    @objc func pgctr() {
        print(myPageControl.currentPage)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myTextFieldFname.frame = CGRect(x: 40, y: view.height/2+90, width: view.width-80, height: 60)
        myTextFieldLname.frame = CGRect(x: 40, y: view.height/2+180, width: view.width-80, height: 60)
        myProgressView.frame = CGRect(x: 40, y: view.height/2+320, width: view.width-80, height: 60)
        myTextView.frame = CGRect(x: 40, y: view.height/2+250, width: view.width-80, height: 80)
        myButton.frame = CGRect(x: 40, y: view.height+210, width: view.width-80, height: 60)
        myLabel.frame = CGRect(x: 40, y: view.height-170, width: view.width-80, height: 60)
        myLabel1.frame = CGRect(x: 40, y: view.height-240, width: view.width-80, height: 60)
        myPageControl.frame = CGRect(x: 40, y: view.height/2+200, width: view.width-80, height: 60)
        
    }


}

