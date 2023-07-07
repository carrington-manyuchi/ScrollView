//
//  ViewController.swift
//  ScrollView
//
//  Created by DA MAC M1 157 on 2023/07/07.
//

import UIKit

class ViewController: UIViewController {
    
    private let myScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize = CGSize(width: 600, height: 300  )
        scrollView.contentOffset = CGPoint(x: 0, y: 0)
        return scrollView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

