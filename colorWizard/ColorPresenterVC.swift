//
// ColorPresenterVC.swift
//  colorWizard
//
//  Created by Adrian Thomas on 12/9/17.
//  Copyright © 2017 Adrian Thomas. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {

  @IBOutlet weak var colorNameLbl: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  func userDidChoose(color: UIColor, withName colorName: String) {
    view.backgroundColor = color
    colorNameLbl.text = colorName
  }
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "presentColorPickerVC" {
      guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
      colorPickerVC.delegate = self
    }
  }

}

