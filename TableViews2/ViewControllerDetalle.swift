//
//  ViewControllerDetalle.swift
//  TableViews2
//
//  Created by José Antonio Vieyra García on 10/09/22.
//

import UIKit

class ViewControllerDetalle: UIViewController {

    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbPrecio: UILabel!
    @IBOutlet weak var lbCantidad: UILabel!
    
    var unaCosa : Cosas!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgFoto.image = unaCosa.foto
        lbNombre.text = unaCosa.nombre
        lbPrecio.text = String(unaCosa.precio)
        lbCantidad.text = String(unaCosa.cantidad)
        
      
        
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
