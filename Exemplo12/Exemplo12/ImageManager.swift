/*************************************************************
 Nome: Exemplo12
 Descricao: WebServices e componentes personalizados
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

import UIKit

class ImageItem
{
    var name:String
    var image:UIImage
    
    init(_ name:String, _ image:UIImage)
    {
        self.name = name;
        self.image = image
    }
}

class ImageManager: NSObject
{
    private static var imageList:[ImageItem] = []
    
    public class func addImage(name:String, image:UIImage)
    {
        imageList.append(ImageItem(name, image))
    }
    
    public class func getImage(name:String)->UIImage?
    {
        for item in imageList
        {
            if (name.elementsEqual(item.name))
            {
                return item.image
            }
        }
        return nil
    }
}
