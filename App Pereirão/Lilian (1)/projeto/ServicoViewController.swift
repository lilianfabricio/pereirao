//
//  ViewController.swift
//
//  Created by Student on 13/12/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ServicoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var infoServicos: Servico?

    
    @IBOutlet weak var nomeCategoriaLabel: UILabel!
    
    @IBOutlet weak var destaque1Image: UIImageView!
    
    @IBOutlet weak var destaque2Image: UIImageView!
    
    @IBOutlet weak var destaque3Image: UIImageView!
    
    
    @IBOutlet weak var destaque4Image: UIImageView!
    
    @IBOutlet weak var servicoTableView: UITableView!
    
    var servicos = [Servico]()
    var beleza = [Servico]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d1:UIImage = UIImage(named: "destaque1")!
        destaque1Image.maskCircle(anyImage: d1)
        
        let d2:UIImage = UIImage(named: "destaque2")!
        destaque2Image.maskCircle(anyImage: d2)
        
        let d3:UIImage = UIImage(named: "destaque3")!
        destaque3Image.maskCircle(anyImage: d3)
        
        let d4:UIImage = UIImage(named: "destaque4")!
        destaque4Image.maskCircle(anyImage: d4)
        
        servicoTableView.delegate = self
        servicoTableView.dataSource = self
        servicos = ServicoDAO.getList()
        
        nomeCategoriaLabel.text = "Beleza"
        
        for s in servicos {
            if s.categoria == "Beleza"{
                beleza.append(s)
            }
        }
        
        
    }
    
    // MARK: - Table view data source

        func numberOfSections(in tableView: UITableView) -> Int {
           // #warning Incomplete implementation, return the number of sections
           return 1
       }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // #warning Incomplete implementation, return the number of rows
            return beleza.count
       }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "servico", for: indexPath)
        
            if let servicoCell = cell as? ServicoTableViewCell {
                
                let servico = beleza[indexPath.row]
                
                
                    servicoCell.prestadoraImage.image = UIImage(named: servico.image1)
                    servicoCell.servicoLabel.text = servico.nomeServico
                    servicoCell.prestadoraLabel.text = servico.nomePrestador
                    servicoCell.avaliacaoLabel.text = servico.avaliacao
                    servicoCell.valorLabel.text = servico.valor
                    
                    return servicoCell
                }
             return cell
            }
    
    
    
    
       /*
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

           // Configure the cell...

           return cell
       }
       */

       /*
       // Override to support conditional editing of the table view.
       override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
           // Return false if you do not want the specified item to be editable.
           return true
       }
       */

       /*
       // Override to support editing the table view.
       override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
           if editingStyle == .delete {
               // Delete the row from the data source
               tableView.deleteRows(at: [indexPath], with: .fade)
           } else if editingStyle == .insert {
               // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
           }
       }
       */

       /*
       // Override to support rearranging the table view.
       override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

       }
       */

       /*
       // Override to support conditional rearranging of the table view.
       override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
           // Return false if you do not want the item to be re-orderable.
           return true
       }
       */

       /*
       // MARK: - Navigation

       // In a storyboard-based application, you will often want to do a little preparation before navigation
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           // Get the new view controller using segue.destination.
           // Pass the selected object to the new view controller.
       }
       */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          
          // Get the new view controller using segue.destination.
          // Pass the selected object to the new view controller.
          if segue.identifier == "servico" {
              if let viewDestino = segue.destination as? DetalhesViewController {
                viewDestino.infoServico = servicos[servicoTableView.indexPathForSelectedRow!.row]
              }
              
          }
          
      }


}



