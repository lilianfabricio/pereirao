//
//  UsuarioViewController.swift
//  projeto
//
//  Created by Student on 14/12/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class UsuarioViewController: UIViewController {
    
    @IBOutlet weak var fotoImage: UIImageView!
    
    @IBOutlet weak var nomeLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var numeroLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        var user = UsuarioDAO.getUser()
        
        fotoImage.image = UIImage(named: user.fotoUsuario)
        nomeLabel.text = user.nomeUsuario
        emailLabel.text = user.emailUsuario
        numeroLabel.text = user.numeroUsuario
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
