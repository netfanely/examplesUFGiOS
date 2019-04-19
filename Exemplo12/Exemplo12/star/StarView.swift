/*************************************************************
 Nome: Exemplo12
 Descricao: WebServices e componentes personalizados
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/
import UIKit

@IBDesignable class StarView: UIView
{
    var _numStars = 0
    
    var numStars:Int
    {
        set
        {
            _numStars = newValue
            updateStars()
        }
        get
        {
            return _numStars
        }
    }
    
    private func updateStars()
    {
        for tag in 1...3
        {
            let imageView = viewWithTag(tag) as! UIImageView
            
            imageView.isHighlighted = (tag <= _numStars)
        }
    }
    
    required init?(coder aDecoder:NSCoder)
    {
        super.init(coder:aDecoder)
    }
    
    override init(frame:CGRect)
    {
        super.init(frame:frame)
        
        let bundle = Bundle(for: type(of:self))
        
        let view  = bundle.loadNibNamed("StarView", owner: nil, options: nil)![0] as! StarView
        
        view.frame = self.bounds
        
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        self.addSubview(view)
    }
    
    override func awakeAfter(using aDecoder: NSCoder) -> Any?
    {
        super.awakeAfter(using: aDecoder)
        
        if self.subviews.count == 0
        {
            let bundle = Bundle(for: type(of:self))
            
            let view  = bundle.loadNibNamed("StarView", owner: nil, options: nil)![0] as! StarView
            
            view.translatesAutoresizingMaskIntoConstraints = false
            
            self.addSubview(view)
            
            return view
        }
        
        return self
    }
}






