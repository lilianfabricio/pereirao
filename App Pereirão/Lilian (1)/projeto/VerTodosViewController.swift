//
//  VerTodosViewController.swift
//  projeto
//
//  Created by Student on 15/12/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class VerTodosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var verTodosTableView: UITableView!
    
    var servicos = [Servico]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        verTodosTableView.delegate = self
        verTodosTableView.dataSource = self
        servicos = ServicoDAO.getList()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Table view data source

        func numberOfSections(in tableView: UITableView) -> Int {
           // #warning Incomplete implementation, return the number of sections
           return 1
       }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // #warning Incomplete implementation, return the number of rows
            return servicos.count
       }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "servico", for: indexPath)
        
            if let servicoCell = cell as? VerTodosTableViewCell{
                
               let servico = servicos[indexPath.row]
               
                servicoCell.fotoServicosImage.image = UIImage(named: servico.image1)
                servicoCell.nomeServicoLabel.text = servico.nomeServico
                servicoCell.nomePrestadoraLabel.text = servico.nomePrestador
                servicoCell.avaliacaoLabel.text = servico.avaliacao
                    servicoCell.valorLabel.text = servico.valor
                    
                    return servicoCell
                
                
            }

            return cell
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
