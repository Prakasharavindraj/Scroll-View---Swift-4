//
//  ViewController.swift
//  Scroll View
//
//  Created by MobileTeam Ebiz on 16/08/18.
//  Copyright © 2018 MobileTeam Ebiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIScrollViewDelegate{

    @IBOutlet weak var mainscrollview: UIScrollView!
    var imagearry = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainscrollview.frame = view.frame
        self.mainscrollview.delegate = self
        self.mainscrollview.maximumZoomScale = 5.0
        self.mainscrollview.minimumZoomScale = 0.5
       mainscrollview.delegate = self
       imagearry = [#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img5"),#imageLiteral(resourceName: "img6")]
       
      
        
        for i in 0..<imagearry.count{
           
            var imageview = UIImageView()
            imageview.contentMode = .scaleAspectFit
            let xposition = self.view.frame.width * CGFloat(i)
            imageview.frame = CGRect(x: xposition, y: 0, width: self.mainscrollview.frame.width , height: self.mainscrollview.frame.height)
            mainscrollview.contentSize.width = self.mainscrollview.frame.width * CGFloat(i+1)
             imageview.image = imagearry[i]
       
            mainscrollview.addSubview(imageview)

        }
    }
    
  
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


