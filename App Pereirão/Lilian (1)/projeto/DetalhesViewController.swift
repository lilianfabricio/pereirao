//
//  DetalhesViewController.swift
//  projeto
//
//  Created by Student on 15/12/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {
    
    var infoServico: Servico?
    
    @IBOutlet weak var fotoProdutoImage: UIImageView!
    
    @IBOutlet weak var nomeProdutoLabel: UILabel!
    
    
    @IBOutlet weak var descricaoTextView: UITextView!
    
    @IBOutlet weak var nomePrestadorLabel: UILabel!
    
    @IBOutlet weak var valorLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    
    @IBOutlet weak var telefoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(infoServico!.image1)
        
        fotoProdutoImage.image = UIImage(named: infoServico!.image1)
        nomeProdutoLabel.text = infoServico!.nomeServico
        descricaoTextView.text = infoServico!.descricao
        nomePrestadorLabel.text = infoServico!.nomePrestador
        valorLabel.text = infoServico!.valor
        emailLabel.text = infoServico!.email
        telefoneLabel.text = infoServico!.telefone
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
