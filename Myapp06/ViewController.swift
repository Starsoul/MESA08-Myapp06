//
//  ViewController.swift
//  Myapp06
//
//  Created by 江宗益 on 2017/9/19.
//  Copyright © 2017年 江宗益. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imgs:[UIImage] = []
    
    @IBOutlet weak var imgView: UIImageView!
    
    
    @IBAction func test1(_ sender: Any) {
        imgView.contentMode = .scaleToFill
        imgView.image = UIImage(named: "01.png")
    }
    
    
    @IBAction func test2(_ sender: Any) {
        imgView.contentMode = .scaleAspectFit
    }
    
    
    
    @IBAction func test7(_ sender: Any) {
    }
    @IBAction func test3(_ sender: Any) {
        imgView.contentMode = .scaleAspectFill
    }

    @IBAction func test4(_ sender: Any) {
        imgView.animationDuration = 3
        imgView.animationImages = imgs
//        imgView.animationRepeatCount = 4
        imgView.startAnimating()
        
    }
    
    @IBAction func test5(_ sender: Any) {
        imgView.stopAnimating()
        imgView.image = imgs[Int(arc4random_uniform(3))]
    }
    
    
    @IBAction func test6(_ sender: Any) {
        imgView.isHidden = !imgView.isHidden
    }
    
    
    @IBAction func test8(_ sender: Any) {
        let myBty = UIButton(type: .system)
        myBty.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        myBty.setTitle("我是按鈕", for: .normal)
        myBty.addTarget(self, action: #selector(test4(_:)), for: UIControlEvents.touchUpInside)
        myBty.addTarget(self, action: #selector(test2(_:)), for: UIControlEvents.touchUpInside)
        
        view.addSubview(myBty)
        
    }
    
    func onClick(_ : Any){
        print("OK")
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imgs += [UIImage(named:"01.png")!]
        imgs.append(UIImage(named:"02.jpg")!)
        imgs += [UIImage(named:"03.jpg")!]
        imgs += [UIImage(named:"04.jpeg")!]
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

