//
//  CustomControls.swift
//  demo
//
//  Created by Francisco Ocampo Romero on 26/08/16.
//  Copyright © 2016 coldhandslabs. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CustomText : UITextField {
  
  let container = UIImageView()
  
  @IBInspectable var image : String? {
    didSet { self.container.image = UIImage(named: image!) }
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    prepareTextField()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    prepareTextField()
  }
  
  override func textRectForBounds(bounds: CGRect) -> CGRect {
    var thisBounds = bounds
    thisBounds.size.width -= 110.0
    thisBounds.origin.x += 55.0
    return thisBounds
  }
  
  override func editingRectForBounds(bounds: CGRect) -> CGRect {
    var thisBounds = bounds
    thisBounds.size.width -= 110.0
    thisBounds.origin.x += 55.0
    return thisBounds
  }
  
  func prepareTextField() {
    self.layer.cornerRadius = frame.height / 2
    self.layer.borderWidth = 1
    self.layer.borderColor = UIColor.grayColor().CGColor
    self.textAlignment = .Center
    self.layoutMargins = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 40)
    
    self.container.frame = CGRectMake(6, 5, 40, frame.height - 10)
    
    self.addSubview(container)
  }
}


@IBDesignable class CustomTextTwoImages : UITextField {
  
  let container1 = UIImageView()
  let container2 = UIImageView()
  
  @IBInspectable var image1 : String? {
    didSet { self.container1.image = UIImage(named: image1!) }
  }
  @IBInspectable var image2 : String? {
    didSet { self.container2.image = UIImage(named: image2!) }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    prepareTextField()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    prepareTextField()
  }
  
  override func textRectForBounds(bounds: CGRect) -> CGRect {
    var thisBounds = bounds
    thisBounds.size.width -= 110.0
    thisBounds.origin.x += 55.0
    return thisBounds
  }
  
  override func editingRectForBounds(bounds: CGRect) -> CGRect {
    var thisBounds = bounds
    thisBounds.size.width -= 110.0
    thisBounds.origin.x += 55.0
    return thisBounds
  }
  
  func prepareTextField()  {
    layer.cornerRadius = frame.height / 2
    layer.borderWidth = 1
    layer.borderColor = UIColor.grayColor().CGColor
    textAlignment = .Center
    layoutMargins = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 40)

    container1.frame = CGRectMake(6, 5, 40, frame.height - 10)
    container2.frame = CGRectMake(frame.width - 46, 5, 40, frame.height - 10)
    
    self.addSubview(container1)
    self.addSubview(container2)
  }
}