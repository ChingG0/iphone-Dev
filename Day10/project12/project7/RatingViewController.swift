//
//  RatingViewController.swift
//  project12
//
//  Created by ching on 2022/2/20.
//

import UIKit

class RatingViewController: UIViewController {
    @IBOutlet var backgroundImageView:UIImageView!;
    @IBOutlet var askLabel: UILabel!;
    @IBOutlet var containerView:UIView!;
    @IBOutlet var cityImageView:UIImageView!;
    
    var city:City!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(city.city)
        let blurEffector = UIBlurEffect(style: .dark)
        let blurEffectorView = UIVisualEffectView(effect: blurEffector)
        blurEffectorView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectorView)
        
        cityImageView.image = UIImage(named: city.image)
        
        askLabel.text = "您曾經來過這裡嗎？給這個城市一個描述吧！"
        self.containerView.transform = CGAffineTransform(scaleX: 0, y: 0)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5) {
            self.containerView.transform = CGAffineTransform.identity
        }
    }
}
