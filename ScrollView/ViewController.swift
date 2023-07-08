//
//  ViewController.swift
//  ScrollView
//
//  Created by DA MAC M1 157 on 2023/07/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var coolScrollView: UIScrollView!
    
    private let myScrollView: UIScrollView = {
        
        
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 60, width: 900, height: 300))
                                      
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        //scrollView.contentOffset = CGPoint(x: 0, y: 0)
        
      
        //scrollView.contentSize.width = CGFloat(900)
        //scrollView.contentSize.height =  CGFloat(300)
       // scrollView.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        scrollView.isScrollEnabled = true
        scrollView.backgroundColor = UIColor.red
        scrollView.isDirectionalLockEnabled = false
        scrollView.bounces = true
        scrollView.isPagingEnabled = true
        scrollView.isScrollEnabled = true
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.showsVerticalScrollIndicator = false
        scrollView.scrollIndicatorInsets = UIEdgeInsets.zero
        scrollView.indicatorStyle = .black
        scrollView.minimumZoomScale = 1
        scrollView.maximumZoomScale = 10
        scrollView.flashScrollIndicators()
        scrollView.bouncesZoom = true
        scrollView.scrollsToTop = true
        scrollView.clipsToBounds = false
        
        return scrollView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myScrollView)
        print(myScrollView)
    }
    
    
    private func configureConstraints() {
        
        let myScrollViewConstraints = [
            myScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            myScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            myScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            myScrollView.widthAnchor.constraint(equalToConstant: 900),
            myScrollView.bottomAnchor.constraint(equalTo: coolScrollView.topAnchor)
        ]
        
        
        NSLayoutConstraint.activate(myScrollViewConstraints)
    }
    
    

}

