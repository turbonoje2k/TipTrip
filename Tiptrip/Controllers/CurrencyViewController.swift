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
  @IBOutlet var disMissKeyboard: UITapGestureRecognizer!

  @IBAction func dismissKeyboard(_ sender: Any) {
    currencyTextField.resignFirstResponder()
  }
  
  @IBAction func changeCurrencyButton(_ sender: Any) {
    //prendre la valeur de currencyTextField + 
    // faire la requete API
    //renvoyer le resultat dans currencyResult

    //    NetworkManager.getData()
  }



  var pickerData: [String] = .init()
  let apiKey = Bundle.main.object(forInfoDictionaryKey: "currencyAPIKey") as? String

  override func viewDidLoad() {
    super.viewDidLoad()

    guard let key = apiKey, !key.isEmpty else {
      print("API Key does not exist")
      return
    }
    print("REST API KEY:", key)

    pickerData = ["$", "€", "£", "¥", "₽", "₨"]
    self.hideKeyboardWhenTappedAround()
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    currencyTextField.keyboardType = .numbersAndPunctuation
  }

  @objc func keyboardWillShow(notification: NSNotification) {
    if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
      if self.view.frame.origin.y == 0 {
        self.view.frame.origin.y -= keyboardSize.height
      }
    }
  }

  @objc func keyboardWillHide(notification: NSNotification) {
    if self.view.frame.origin.y != 0 {
      self.view.frame.origin.y = 0
    }
  }
}

//MARK: Extensions
extension CurrencyViewController : UIPickerViewDelegate, UIPickerViewDataSource  {

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  public func numberOfComponents(in pickerView: UIPickerView) -> Int {
    1
  }

  public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    pickerData.count
  }

  public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    pickerData[row]
  }
}
