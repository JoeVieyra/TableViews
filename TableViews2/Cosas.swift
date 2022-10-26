//
//  Cosas.swift
//  TableViews2
//
//  Created by José Antonio Vieyra García on 10/09/22.
//

import UIKit

class Cosas: NSObject {

    var nombre : String = ""
    var precio : Int = 0
    var cantidad: Int = 0
    var foto : UIImage!
    
    init(nombre : String, precio : Int, cantidad: Int, foto : UIImage!) {
        
        self.nombre = nombre
        self.precio = precio
        self.cantidad = cantidad
        self.foto = foto
    }
    
}
