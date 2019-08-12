//
//  ViewController.swift
//  Calculadora
//
//  Created by Alumno on 07/08/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTotalSinPropina: UITextField!
    @IBOutlet weak var sldPorcentajePropina: UISlider!
    @IBOutlet weak var lblPorcentajePropina: UILabel!
    @IBOutlet weak var lblCantidadPropina: UILabel!
    @IBOutlet weak var lblTotalConPropina: UILabel!
    
    @IBAction func doChangeValores(_ sender: Any) {
        
        var porcentajePropina = 0.0
        porcentajePropina = (Double(sldPorcentajePropina.value))
        porcentajePropina.round()
        lblPorcentajePropina.text = "\(String(format: "%.0f", porcentajePropina))%"
        
        
        // "!" indica que el desarrollador se encargara de que la variable no este vacia
        let cantidadPropina = Double(txtTotalSinPropina.text!)! * (porcentajePropina / 100)
        let totalConPropina = cantidadPropina + Double(txtTotalSinPropina.text!)!
        
        lblCantidadPropina.text! = "$\(String(format: "%.2f", cantidadPropina))"
        lblTotalConPropina.text! = "$\(String(format: "%.2f", totalConPropina))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
