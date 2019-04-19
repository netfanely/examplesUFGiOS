/*************************************************************
 Nome: Exemplo12
 Descricao: WebServices e componentes personalizados
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

import Foundation

class Item
{
    var classification:Int
    var image:String
    var itemName:String
    
    init(classification:Int, image:String, itemName:String)
    {
        self.classification = classification
        self.image = image
        self.itemName = itemName
    }
}
