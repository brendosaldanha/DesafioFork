//
//  ViewController.swift
//  DesafioFork
//
//  Created by Calebe Nunes Pastor on 19/02/18.
//  Copyright © 2018 Calebe Nunes Pastor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelMensagem: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.labelMensagem.text = self.retornaSaudacao()
        
    }
    
    func retornaSaudacao() -> String {
        
        // Resgatar a data atual
        let agora = Date()
        
        // Criar datas de comparação
        guard let meioDia = Calendar.current.date(bySettingHour: 12, minute: 00, second: 00, of: agora) else {return ""}
        
        guard let seisHoras = Calendar.current.date(bySettingHour: 18, minute: 00, second: 00, of: agora) else {return ""}
        
        // Comparar as datas e gerar as mensagens
        if agora >= meioDia && agora < seisHoras {
            
            return "Boa tarde"
            
        } else if agora >= seisHoras {
            
            return "Boa noite"
            
        } else {
            
            return "Bom dia"
            
        }
        
    }
    
    // MARK: Actions
    
    @IBAction func tocar(_ sender: UITapGestureRecognizer) {
        
        let alerta = UIAlertController(title: "", message: retornaSaudacao(), preferredStyle: .alert)
        
        let acaoOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alerta.addAction(acaoOK)
        
        present(alerta, animated: true, completion: nil)
        
    }
    
}
