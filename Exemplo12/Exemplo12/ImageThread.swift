/*************************************************************
 Nome: Exemplo12
 Descricao: WebServices e componentes personalizados
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

//Bibliotecas utilizadas
import Foundation
import UIKit

class ImageThread:UIImageView
{
    //Referencias para filas do tipo Thread
    let filaGeral = OperationQueue()
    let filaInterface = OperationQueue.main
    
    //Inicializadores da classe
    required init(coder aDecoder:NSCoder)
    {
        super.init(coder:aDecoder)!
    }
    
    override init(frame:CGRect)
    {
        super.init(frame:frame)
    }
    
    //Funcao responsavel pelo download da Imagem
    func donwloadImage(urlName:String)
    {
        let url = URL(string: urlName)
        var data:Data!
        
        filaGeral.addOperation
        {
            do
            {
                data  = try Data(contentsOf: url!)
            }
            catch
            {}
        
            self.filaInterface.addOperation
            {
                if (data != nil && data.count > 0)
                {
                    self.image = UIImage(data: data)
                    ImageManager.addImage(name: urlName, image: self.image!)
                }
            }
        }
    }
}
