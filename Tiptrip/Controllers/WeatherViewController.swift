//
//  weatherViewController.swift
//  Tiptrip
//
//  Created by jonathan P on 18/05/2022.
//

import UIKit

class WeatherViewController: UIViewController {

  @IBOutlet weak var textFieldPosition: UITextField!
  @IBOutlet weak var climatConditions: UILabel!
  @IBOutlet weak var climatIcon: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()

  }
  @IBAction func dismissKeyboard(_ sender: Any) {
  }
  
}
