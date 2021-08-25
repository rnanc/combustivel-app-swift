//
//  ViewController.swift
//  calculocombustivel
//
//  Created by Renan Figueiredo Carneiro on 25/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultadoLegenda: UILabel!
    @IBOutlet weak var precoAlcool: UITextField!
    @IBOutlet weak var precoGasolina: UITextField!
    
    @IBAction func calculaCombustivel(_ sender: Any) {
        if let alcool = precoAlcool.text{
            if let gasolina = precoGasolina.text{
                let camposValidados =  self.validaCampos(alcool: alcool, gasolina: gasolina)
                
                if camposValidados {
                    self.calculaMelhorPreco(alcool: alcool, gasolina: gasolina)
                }
                else{
                    resultadoLegenda.text = "Digite os preços para calcular!"
                }
            }
        }
        
    }
    
    func calculaMelhorPreco (alcool: String, gasolina: String) {
        if let valorAlcool = Double(alcool){
            if let valorGasolina = Double(gasolina){
                let result = valorAlcool/valorGasolina
                if result >= 0.7 {
                    self.resultadoLegenda.text = "Melhor utilizar Gasolina !"
                }else{
                    self.resultadoLegenda.text = "Melhor utilizar Álcool!"
                }
            }
        }
    }
    
    func validaCampos (alcool: String, gasolina: String) -> Bool {
        var camposValidados = true
        
        if alcool.isEmpty {
            camposValidados = false
        }
        if gasolina.isEmpty {
            camposValidados = false
        }
        
        return camposValidados
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

