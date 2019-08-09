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
        porcentajePropina = Double(sldPorcentajePropina.value)
        porcentajePropina.round()
        lblPorcentajePropina.text = "\(sldPorcentajePropina.value)%"
        porcentajePropina = porcentajePropina / 100
        
        // "!" indica que el desarrollador se encargara de que la variable no este vacia
        let cantidadPropina = Double(txtTotalSinPropina.text!)! * porcentajePropina
        let totalConPropina = cantidadPropina + Double(txtTotalSinPropina.text!)!
        
        let cantidadPropinaFormatted = String(format: "%.2f", cantidadPropina)
        let totalConPropinaFormatted = String(format: "%.2f", totalConPropina)
        
        lblCantidadPropina.text! = "$\(cantidadPropinaFormatted)"
        lblTotalConPropina.text! = "$\(totalConPropinaFormatted)"
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
