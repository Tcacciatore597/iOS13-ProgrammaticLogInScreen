//
//  ViewController.swift
//  ProgrammaticLogin
//
//  Created by Thomas Cacciatore on 3/27/20.
//  Copyright © 2020 Thomas Cacciatore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let textFieldHeight = 40
    let buttonHeight = 50
    let imageHeight = 300
    
    //Scroll View
    //  Content View ( UIView - Background)
    //      Top Image View (300)
    //      Stack View
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero) // will resize with Auto Layout
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize = self.view.frame.size
        scrollView.backgroundColor = .orange
        return scrollView
    }()
    
    lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = .yellow
        return contentView
    }()
    
    lazy var topImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "city-anthony-reungere")
        //imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var bottomView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    lazy var stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpViews()
        setUpConstraints()
        
    }

    func setUpViews() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(topImageView)
        contentView.addSubview(stackView)
        
        //Add all form elements to the StackView
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            
            
        
        ])
    }

}

