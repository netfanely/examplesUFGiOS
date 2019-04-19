/*************************************************************
 Nome: Exemplo12
 Descricao: WebServices e componentes personalizados
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

import Foundation

class Company
{
    var companyName:String
    var address:String
    var latitude:Double
    var longitude:Double
    var listItens:[Item] = []
    
    init(companyName:String, address:String, latitude:Double, longitude:Double)
    {
        self.companyName = companyName
        self.address = address
        self.latitude = latitude
        self.longitude = longitude
    }
}
