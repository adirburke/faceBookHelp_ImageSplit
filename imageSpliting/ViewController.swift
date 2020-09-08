//
//  ViewController.swift
//  imageSpliting
//
//  Created by Adir Burke on 8/9/20.
//  Copyright © 2020 WorkDesk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView :  UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.backgroundColor = .blue
        iv.image = UIImage(named: "image")
        return iv
    }()
    
    let splitView1 :  UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.backgroundColor = .blue
        return iv
    }()

    let splitView2 :  UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.backgroundColor = .green
        return iv
    }()
    let splitView3 :  UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.backgroundColor = .purple
        return iv
    }()
    let splitView4 :  UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.backgroundColor = .orange
        return iv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array = [ splitView1, splitView2, splitView3, splitView4]
        view.addSubview(imageView)
        view.addSubview(splitView1)
        view.addSubview(splitView2)
        view.addSubview(splitView3)
        view.addSubview(splitView4)
       
        imageView.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.centerXAnchor, multiplier: 0).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 400).isActive = true
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        
        
        splitView1.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: -25).isActive = true
        splitView1.heightAnchor.constraint(equalToConstant: 400).isActive = true
        splitView1.widthAnchor.constraint(equalToConstant: 100).isActive = true
        splitView1.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50).isActive = true
        
        splitView2.leadingAnchor.constraint(equalTo: splitView1.trailingAnchor, constant: 25).isActive = true
        splitView2.heightAnchor.constraint(equalToConstant: 400).isActive = true
        splitView2.widthAnchor.constraint(equalToConstant: 100).isActive = true
        splitView2.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50).isActive = true
        
        splitView3.leadingAnchor.constraint(equalTo: splitView2.trailingAnchor, constant: 25).isActive = true
        splitView3.heightAnchor.constraint(equalToConstant: 400).isActive = true
        splitView3.widthAnchor.constraint(equalToConstant: 100).isActive = true
        splitView3.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50).isActive = true
        
        splitView4.leadingAnchor.constraint(equalTo: splitView3.trailingAnchor, constant: 25).isActive = true
        splitView4.heightAnchor.constraint(equalToConstant: 400).isActive = true
        splitView4.widthAnchor.constraint(equalToConstant: 100).isActive = true
        splitView4.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50).isActive = true
        
        for (i,v) in array.enumerated() {
            guard let cgImage = imageView.image?.cgImage else { continue}
            guard let cropped = cgImage.cropping(to: .init(x: i*100, y: 0, width: 100, height: 400)) else { continue}
            v.image = UIImage(cgImage: cropped)
            
        }
        
        // Do any additional setup after loading the view.
    }


}

