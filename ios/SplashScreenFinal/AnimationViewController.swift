
import UIKit
import Lottie

@objc class AnimationViewController: UIViewController {

  

  @IBOutlet weak var BottomAnimationView: UIView!
  @IBOutlet weak var TopAnimationView: UIView!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    let topLottie =  AnimationView(name: "top_bands")
    TopAnimationView.contentMode = .scaleAspectFill
    self.TopAnimationView.addSubview(topLottie)
    topLottie.frame = self.TopAnimationView.bounds
    topLottie.animationSpeed = 1
//    topLottie.loopMode = .loop
    topLottie.play()
    
//    Bottom animation codes
    let bottomLottie =  AnimationView(name: "br_band")
    BottomAnimationView.contentMode = .scaleAspectFill
    self.BottomAnimationView.addSubview(bottomLottie)
    bottomLottie.frame = self.BottomAnimationView.bounds
    bottomLottie.animationSpeed = 1
//    bottomLottie.loopMode = .loop
    bottomLottie.play()

    }
    

}
