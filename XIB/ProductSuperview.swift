//
//  ProductSuperview.swift
//  XIB
//
//  Created by Can Balkaya on 9/23/20.
//

import UIKit

@IBDesignable
class ProductSuperview: UIView {
    
    // MARK: - Life Cylce
    override func awakeFromNib() {
        super.awakeFromNib()
        
        addProductView()
    }

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        addProductView()
    }

    // MARK: - Functions
    func addProductView() {
        if let productView = Bundle.main.loadNibNamed("\(ProductView.self)", owner: self, options: nil)?.first as? ProductView {
            addSubview(productView)
            productView.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                productView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                productView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                productView.widthAnchor.constraint(equalTo: self.widthAnchor),
                productView.heightAnchor.constraint(equalTo: self.heightAnchor)
            ])
        }
    }
}
