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
  @IBOutlet weak var currencyTextField: UITextField!

  @IBAction func disMissKeyboard(_ sender: Any) {
    currencyTextField.resignFirstResponder()
//    currencyTextField.keyboardType = .numbersAndPunctuation
  }

  var pickerData: [String] = .init()
  //  var pickerData2: [String] = []
  //  var pickerDarta3 = [String]()

  override func viewDidLoad() {
    super.viewDidLoad()
    //connect the data
    pickerData = ["$", "€", "£", "¥", "₽", "₨"]
  }

}

//MARK: Extensions
extension CurrencyViewController : UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate  {

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  /// return of numberOfComponents (headerDoc
  public func numberOfComponents(in pickerView: UIPickerView) -> Int {
    1
  }

  public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    pickerData.count
  }

  public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    pickerData[row]
  }

  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
}
