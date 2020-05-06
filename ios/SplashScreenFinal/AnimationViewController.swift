
import UIKit
import Lottie

@objc class AnimationViewController: UIViewController {

    @IBOutlet var ContainerView: UIView!
  @IBOutlet weak var TopAnimationView: UIView!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    let topLottie =  AnimationView(name: "whole_splash")
    TopAnimationView.contentMode = .scaleAspectFill
    self.TopAnimationView.addSubview(topLottie)
    topLottie.frame = self.TopAnimationView.bounds
    topLottie.animationSpeed = 1
    topLottie.play()
    
    
    topLottie.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
        topLottie.leftAnchor.constraint(equalTo: self.view.leftAnchor),
        topLottie.rightAnchor.constraint(equalTo: self.view.rightAnchor),
        topLottie.topAnchor.constraint(equalTo: self.view.topAnchor),
        topLottie.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
    ])

    }


}
