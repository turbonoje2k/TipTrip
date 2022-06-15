//
//  CurrencyViewController.swift
//  Tiptrip
//
//  Created by noje on 18/05/2022.
//

import UIKit

class CurrencyViewController: UIViewController {

  @IBOutlet weak var currencyDevicePicker: UIPickerView!
  @IBOutlet weak var currencyResult: UILabel!
  @IBOutlet weak var changeCurrencyButton: UIButton!
  @IBOutlet weak var currencyResultDevicePicker: UIPickerView!

  var pickerData: [String] = [String]()

  override func viewDidLoad() {
    super.viewDidLoad()
    //connect the data


    pickerData = ["$", "€", "£", "¥", "₽", "₨"]

  }

  //MARK: Extensions
  extension CurrencyViewController : UIPickerViewDelegate, UIPickerViewDataSource  {

    override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
    }
    /// return of numberOfComponents (headerDoc
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
      1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
      pickerData.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
      pickerData[row]
    }
  }
}
