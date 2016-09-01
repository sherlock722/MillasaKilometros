//
//  ViewController.swift
//  Millas a Kilometros
//
//  Created by Javier Cazorla Moriche on 1/9/16.
//  Copyright © 2016 FJC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var distanceTextfield: UITextField!
    
    @IBOutlet var segmentController: UISegmentedControl!
    
    @IBOutlet var resultLabel: UILabel!
    
    
    let milesUnit = 1.609
    
    
    @IBAction func ConvertButton(_ sender: UIButton) {
        
        let selectedindex = segmentController.selectedSegmentIndex
        
        let textFieldValue = Double (distanceTextfield.text!)!
        
        
        if selectedindex == 0 {
            
            //Convertir a Miles
            let convertedValue = textFieldValue / milesUnit
            reloadView(textFieldValue: textFieldValue, convertedValue: convertedValue)
            
            //let initValue = String(format:"%.2f", textFieldValue)
            //let endValue = String(format: "%.2f", convertedValue)
            //resultLabel.text = "\(initValue) km = \(endValue) miles"
            //print ("Pasar a Millas \(convertedValue)")
       
        }else {
            
            //Convertir a KM
            let convertedValue = textFieldValue * milesUnit
            reloadView(textFieldValue: textFieldValue, convertedValue: convertedValue)
            
            
            //let initValue = String(format:"%.2f", textFieldValue)
            //let endValue = String(format: "%.2f", convertedValue)
            //resultLabel.text = "\(initValue) miles = \(endValue) km"
            //print ("Pasar a Kilómetros \(convertedValue)")
        }
        
    }
    
    func reloadView(textFieldValue : Double, convertedValue : Double){
        
        
        let initValue = String(format:"%.3f", textFieldValue)
        let endValue = String(format: "%.2f", convertedValue)
        
        if segmentController.selectedSegmentIndex == 0 {
            
            resultLabel.text = "\(initValue) km = \(endValue) miles"
            
        } else {
            
            resultLabel.text = "\(initValue) miles = \(endValue) km"
            
        }
        
        
        
    }
    
    //Quitar la barra de estado (bateria y hora) Proiedad prefersStatusBarHidden
    override var prefersStatusBarHidden: Bool{
        get{
            return false
        }
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Cambiar el texto de la etiqueta de resultado
        resultLabel.text="Resultado de la Operación"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

