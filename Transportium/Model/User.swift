
import Foundation
import UIKit


class User {
    
    var idUsuario:String
    var Nombre:String
    var Apellido:String
    var Direccion:String
    var Poblacion:String
    var FotoPerfil:UIImage
    var Email:String
    var Tipo:Bool
    var Matricula:String
    var ImagenVehiculo:UIImage
    
    init(idUsuario:String, Nombre:String, Apellido:String, Direccion:String, Poblacion:String, FotoPerfil:UIImage, Email:String, Tipo: Bool, Matricula:String, ImagenVehiculo:UIImage) {
        
        self.idUsuario = idUsuario
        self.Nombre = Nombre
        self.Apellido = Apellido
        self.Direccion = Direccion
        self.Poblacion =  Poblacion
        self.FotoPerfil = FotoPerfil
        self.Email = Email
        self.Tipo = Tipo
        self.Matricula = Matricula
        self.ImagenVehiculo = ImagenVehiculo
 
    }
    
}
