//
//  ViewController.swift
//  TableViews2
//
//  Created by José Antonio Vieyra García on 10/09/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
  
    
    var ListaCosas = [[
        Cosas(nombre: "Jitomate", precio: 23, cantidad: 2, foto: UIImage(named: "tomato")),
        Cosas(nombre: "Cebolla", precio: 20, cantidad: 3, foto: UIImage(named: "onion")),
        Cosas(nombre: "Lechuga", precio: 4, cantidad: 1, foto: UIImage(named: "lechuga")),
        Cosas(nombre: "zanahoria", precio: 5, cantidad: 1, foto: UIImage(named: "zanahoria")),
        Cosas(nombre: "Jitomate", precio: 6, cantidad: 2, foto: UIImage(named: "tomato")),
        Cosas(nombre: "Cebolla", precio: 7, cantidad: 3, foto: UIImage(named: "onion")),
        Cosas(nombre: "Lechuga", precio: 8, cantidad: 1, foto: UIImage(named: "lechuga")),
        Cosas(nombre: "zanahoria", precio: 9, cantidad: 1, foto: UIImage(named: "zanahoria")),
        Cosas(nombre: "Jitomate", precio: 23, cantidad: 2, foto: UIImage(named: "tomato")),
        Cosas(nombre: "Cebolla", precio: 20, cantidad: 3, foto: UIImage(named: "onion"))
    ],
    [
        Cosas(nombre: "platano", precio: 1, cantidad: 2, foto: UIImage(named: "f1")),
        Cosas(nombre: "fresa", precio: 2, cantidad: 3, foto: UIImage(named: "f3")),
        Cosas(nombre: "melon", precio: 3, cantidad: 1, foto: UIImage(named: "f2")),
        Cosas(nombre: "papaya", precio: 4, cantidad: 1, foto: UIImage(named: "f4")),
        Cosas(nombre: "platano", precio: 5, cantidad: 2, foto: UIImage(named: "f1")),
        Cosas(nombre: "fresa", precio: 6, cantidad: 3, foto: UIImage(named: "f3")),
        Cosas(nombre: "melon", precio: 7, cantidad: 1, foto: UIImage(named: "f2")),
        Cosas(nombre: "papaya", precio: 8, cantidad: 1, foto: UIImage(named: "f4")),
        Cosas(nombre: "platano", precio: 1, cantidad: 2, foto: UIImage(named: "f1")),
        Cosas(nombre: "fresa", precio: 2, cantidad: 3, foto: UIImage(named: "f3"))
    ],
    [
        Cosas(nombre: "carne", precio: 23, cantidad: 2, foto: UIImage(named: "c1")),
        Cosas(nombre: "pollo", precio: 20, cantidad: 3, foto: UIImage(named: "c2")),
        Cosas(nombre: "pezcado", precio: 25, cantidad: 1, foto: UIImage(named: "c3")),
        Cosas(nombre: "carnes rojas", precio: 25, cantidad: 1, foto: UIImage(named: "c4")),
        Cosas(nombre: "carne", precio: 23, cantidad: 2, foto: UIImage(named: "c1")),
        Cosas(nombre: "pollo", precio: 20, cantidad: 3, foto: UIImage(named: "c2")),
        Cosas(nombre: "pezcado", precio: 25, cantidad: 1, foto: UIImage(named: "c3")),
        Cosas(nombre: "carne", precio: 23, cantidad: 2, foto: UIImage(named: "c1")),
        Cosas(nombre: "pollo", precio: 20, cantidad: 3, foto: UIImage(named: "c2")),
        Cosas(nombre: "pezcado", precio: 25, cantidad: 1, foto: UIImage(named: "c3"))
    ]]
    
   
  
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Mi Lista"
        
        
        // Do any additional setup after loading the view.
        
        tableView.register(UINib(nibName: "MyCustonTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
        
        
        
        
        
        
        let headerView = UIView(frame: CGRect(x: 0, y:0, width: view.frame.size.width,
                                                         height: 150))
    
        let footerView = UIView(frame: CGRect(x: 0, y:0, width: view.frame.size.width,
                                                         height: 100))
        
        headerView.backgroundColor = UIColor.brown
        footerView.backgroundColor = .red
       let headerviewlable = UILabel()
        headerviewlable.text = "Lista Compras"
        headerviewlable.textColor = .black
        headerviewlable.textAlignment = .center
        headerviewlable.font = UIFont.boldSystemFont(ofSize: 30)
        headerviewlable.frame = CGRect(x: 43.0, y: 5.0, width: 250.0, height: 150)
        
        headerView.addSubview(headerviewlable)
        
        tableView.tableHeaderView = headerView
        tableView.tableFooterView = footerView
        
        
       
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
      
    }
    
    //metodos de DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ListaCosas[section].count
        
    }
  
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        if indexPath.section == 0 || indexPath.section == 2 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda")!
        cell.textLabel?.text = ListaCosas[indexPath.section][indexPath.row].nombre
        cell.detailTextLabel?.text = String(ListaCosas[indexPath.section][indexPath.row].precio)
        
        cell.imageView?.image = ListaCosas[indexPath.section][indexPath.row].foto!
        return cell
        
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "celda2", for: indexPath) as?
            CustomTableViewCell
            
            cell?.lbNombre2?.text = ListaCosas[indexPath.section][indexPath.row].nombre
            cell?.lbPrecio?.text = String(ListaCosas[indexPath.section][indexPath.row].precio)
            cell?.imgFoto2?.image = ListaCosas[indexPath.section][indexPath.row].foto!
            
           
            
            return cell!
            
        
        }
        
       
        
    }
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        let vistaDetalle = segue.destination as! ViewControllerDetalle
       
        let indice = tableView.indexPathForSelectedRow!
      
        
        vistaDetalle.unaCosa = ListaCosas[indice.section][indice.row]

        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 || indexPath.section == 2{
            return 100
        }
        return 150
    }
    //header
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        80.0
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        60.0
    }
    
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionView = UIView()
        sectionView.backgroundColor = .white
        let sectionheaderLabel = UILabel()
        if section == 0{
            
            //sectionheaderLabel.text = "Verduras \(section)"
            sectionheaderLabel.text = "Verduras"
            sectionheaderLabel.textColor = .darkGray
            sectionheaderLabel.font = UIFont.boldSystemFont(ofSize: 20)
            sectionheaderLabel.frame = CGRect(x: 43.0, y: 5.0, width: 250.0, height: 60)
        }else if section == 1{
            sectionheaderLabel.text = "Frutas"
            sectionheaderLabel.textColor = .darkGray
            sectionheaderLabel.font = UIFont.boldSystemFont(ofSize: 20)
            sectionheaderLabel.frame = CGRect(x: 43.0, y: 5.0, width: 250.0, height: 60)
        }else{
            sectionheaderLabel.text = "Carnes"
            sectionheaderLabel.textColor = .darkGray
            sectionheaderLabel.font = UIFont.boldSystemFont(ofSize: 20)
            sectionheaderLabel.frame = CGRect(x: 43.0, y: 5.0, width: 250.0, height: 60)
        }
        
       
     
        sectionView.addSubview(sectionheaderLabel)
        
        
        return sectionView
    }
  
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
     let sectionView = UIView()
        sectionView.backgroundColor = .yellow
        
        
     let sectionfooterLabel = UILabel()
        
        //let subt = self.ListaCosas[section].map( {$0.precio * $0.cantidad })
        
        let subt = self.ListaCosas[section].map( {$0.precio
            
        })
        let sum = subt.reduce(0, +)
       
        
        sectionfooterLabel.text = "Subtotal $\( sum).0"
        
        sectionfooterLabel.textColor = .darkGray
        sectionfooterLabel.font = UIFont.boldSystemFont(ofSize: 20)
        sectionfooterLabel.frame = CGRect(x: 43.0, y: 5.0, width: 250.0, height: 40)
        
        sectionView.addSubview(sectionfooterLabel)
        
        return sectionView
    }
    
}

