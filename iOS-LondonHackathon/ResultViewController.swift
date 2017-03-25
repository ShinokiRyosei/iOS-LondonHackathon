//
//  ViewController.swift
//  iOS-LondonHackathon
//
//  Created by 荒川陸 on 2017/03/25.
//  Copyright © 2017年 Riku Arakawa. All rights reserved.
//

import UIKit
import Koloda

class ResultViewController: UIViewController {
    
    @IBOutlet weak var kolodaView: KolodaView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        kolodaView.dataSource = self
        kolodaView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ResultViewController: KolodaViewDelegate {
    
    func koloda(_ koloda: KolodaView, didSwipeCardAt index: Int, in direction: SwipeResultDirection) {
        
        if direction == .left {

        } else if direction == .right {
            Comment.demoComments[index].isHelpful = true
        }
    }
    
    func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
        performSegue(withIdentifier: "toComment", sender: self)
        print("run out of cards")
    }
}

extension ResultViewController: KolodaViewDataSource {
    
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {

        return Comment.demoComments.count
    }
    
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        
        let view = Bundle.main.loadNibNamed("KolodaCardView", owner: self, options: nil)?.first as! KolodaCardView
        view.configure(comment: Comment.demoComments[index])
        return view
    }
    
    func koloda(_ koloda: KolodaView, viewForCardOverlayAt index: Int) -> OverlayView? {
        
        return Bundle.main.loadNibNamed("KolodaOverlayView", owner: self, options: nil)?[0] as? OverlayView
    }
}

