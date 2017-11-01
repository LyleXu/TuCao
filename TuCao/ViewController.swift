//
//  ViewController.swift
//  TuCao
//
//  Created by GTCC on 10/25/17.
//  Copyright © 2017 CTC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        super.viewDidLoad()
        let frame = CGRect(x:0, y:20, width:view.bounds.width, height:view.bounds.width*0.6)
        let imageView = ["2.jpg","3.jpg","4.jpg"]
        
        let loopView = XHAdLoopView(frame: frame, images: imageView, autoPlay: true, delay: 3, isFromNet: false)
        loopView.delegate = self
        
        view.addSubview(loopView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : XHAdLoopViewDelegate {
    func adLoopView(adLoopView: XHAdLoopView, IconClick index: NSInteger) {
        print(index)
    }
}

