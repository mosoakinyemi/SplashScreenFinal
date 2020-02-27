//
//  AnimationViewController.swift
//  SplashScreenFinal
//
//  Created by Moso's MacBook on 11/02/2020.
//  Copyright © 2020 Facebook. All rights reserved.
//

import UIKit
//import SwiftyGif

@objc class AnimationViewController: UIViewController {

  @IBOutlet var TopGif: UIImageView!
  @IBOutlet var BottomBands: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
      TopGif.loadGif(asset: "top_bands_final")

    }
    
//  override func viewDidAppear(_ animated: Bool) {
//      super.viewDidAppear(animated)
//      // You can also set it with an URL pointing to your gif
//  }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
