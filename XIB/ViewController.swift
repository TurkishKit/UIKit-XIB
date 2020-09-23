//
//  ViewController.swift
//  XIB
//
//  Created by Can Balkaya on 9/17/20.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let productView = Bundle.main.loadNibNamed("\(ProductView.self)", owner: self, options: nil)?.first as? ProductView {
            self.view.addSubview(productView)
            
            productView.translatesAutoresizingMaskIntoConstraints = false
            productView.productImage.image = UIImage(named: "iPhone 11")
            productView.productTitle.text = "iPhone 11"
            productView.productDescription.text = "Kullanım konusunda hiçbir karışıklığa yer vermeden tonlarca yetenekle donatılmış çığır açıcı üçlü kamera sistemi. Pil ömrü konusunda eşi benzeri görülmemiş büyüklükte bir adım."
            
            NSLayoutConstraint.activate([
                productView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                productView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 200),
                productView.widthAnchor.constraint(equalToConstant: 414),
                productView.heightAnchor.constraint(equalToConstant: 240)
            ])
        }
    }
}
