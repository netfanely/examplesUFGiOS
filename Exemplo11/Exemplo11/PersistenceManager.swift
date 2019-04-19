/*************************************************************
 Nome: Exemplo11
 Descricao: exemplo demonstra a troca de telas (Aplicativo MyPhome)
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

import UIKit

class PersistenceManager: NSObject
{
    class func save(value:Bool)
    {
        let defaults = UserDefaults.standard
        defaults.set (value, forKey: "notification")
    }
    
    class func getValue()->Bool
    {
        let defaults = UserDefaults.standard
        let value = defaults.bool(forKey: "notification")
        return value
    }
}
