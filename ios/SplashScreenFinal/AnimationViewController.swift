
import UIKit
import Lottie

@objc class AnimationViewController: UIViewController {

  

//  @IBOutlet weak var BottomAnimationView: UIView!
  @IBOutlet var ContainerView: UIView!
  @IBOutlet weak var TopAnimationView: UIView!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    let imageView = AnimationView()

      let topLottie =  AnimationView(name: "whole_splash")

         let aspect =  414/896
    self.aspectConstraint = NSLayoutConstraint(item: self.TopAnimationView, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.TopAnimationView, attribute: NSLayoutConstraint.Attribute.height, multiplier: CGFloat(aspect), constant: 1.2)


//    let topLottie =  AnimationView(name: "whole_splash")
    TopAnimationView.contentMode = .scaleToFill
    self.TopAnimationView.addSubview(topLottie)
    topLottie.frame = self.TopAnimationView.bounds
    topLottie.animationSpeed = 1
//    topLottie.loopMode = .loop
    topLottie.play()
    
//    Bottom animation codes
//    let bottomLottie =  AnimationView(name: "br_band")
//    BottomAnimationView.contentMode = .scaleAspectFill
//    self.BottomAnimationView.addSubview(bottomLottie)
//    bottomLottie.frame = self.BottomAnimationView.bounds
//    bottomLottie.animationSpeed = 1
////    bottomLottie.loopMode = .loop
//    bottomLottie.play()

    }

  var aspectConstraint: NSLayoutConstraint? {

  willSet {

      if((aspectConstraint) != nil) {
          self.TopAnimationView.removeConstraint(self.aspectConstraint!)
      }
  }

  didSet {

      if(aspectConstraint != nil) {
          self.TopAnimationView.addConstraint(self.aspectConstraint!)
      }

  }
  }


}
