//
//  ViewController.swift
//  projeto
//
//  Created by Student on 12/12/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logoOutlet: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoOutlet.image = UIImage(named: "logo")
       /*
        let d1:UIImage = UIImage(named: "destaque1")!
        destaque1Outlet.maskCircle(anyImage: d1)
        
        let d2:UIImage = UIImage(named: "destaque2")!
        destaque2Outlet.maskCircle(anyImage: d2)
        
        let d3:UIImage = UIImage(named: "destaque3")!
        destaque3Outlet.maskCircle(anyImage: d3)
        
        let d4:UIImage = UIImage(named: "destaque4")!
        destaque4Outlet.maskCircle(anyImage: d4)
 */
    }


}
/*
extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print("Teste")
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionView{
        
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
}
*/

extension UIImageView {
  public func maskCircle(anyImage: UIImage) {
    self.contentMode = UIView.ContentMode.scaleAspectFill
    self.layer.cornerRadius = self.frame.height / 2
    self.layer.masksToBounds = false
    self.clipsToBounds = true

   // make square(* must to make circle),
   // resize(reduce the kilobyte) and
   // fix rotation.
   self.image = anyImage
  }
}

