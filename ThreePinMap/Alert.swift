//
//  MapVC.swift
//  ThreePinMap
//
//  Created by Серик Абдиров on 12.01.2022.
//

import UIKit


extension UIViewController {
    
    func alertAddAdress(title: String, placeholder: String, completionHandler: @escaping (String) -> Void) {
        
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "Ok", style: .default) { (action) in
            
            let textFieldText = alertController.textFields?.first
            guard let text = textFieldText?.text else { return }
            completionHandler(text)
            
        }
        let alertCancel = UIAlertAction(title: "Отмена", style: .default) { (_) in
        }
        
        alertController.addTextField { (textField) in
            textField.placeholder = placeholder
        }
        
        alertController.addAction(alertOk)
        alertController.addAction(alertCancel)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func alertError(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "Ok", style: .default)
        
        alertController.addAction(alertOk)

        present(alertController, animated: true, completion: nil)
    }
    
}
