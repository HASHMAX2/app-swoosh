//
//  BorderButton.swift
//  app-swoosh
//
//  Created by ali hashmi on 26/08/20.
//  Copyright © 2020 ali hashmi. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override  func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
