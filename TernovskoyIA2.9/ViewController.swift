//
//  ViewController.swift
//  TernovskoyIA2.9
//
//  Created by Илья Терновской on 16.04.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }

    @IBAction func animationButton(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.curve = animation.curve
        animationView.animate()

        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
}

