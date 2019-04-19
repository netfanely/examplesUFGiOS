/*************************************************************
 Nome: Exemplo11
 Descricao: exemplo demonstra a troca de telas (Aplicativo MyPhome)
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

import UIKit

class ViewControllerDetail: UIViewController {

    @IBOutlet weak var vrImageView: UIImageView!
    @IBOutlet weak var vrLabel: UILabel!
    
    public var name:String?
    public var image: UIImage?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        vrLabel.text = name
        vrImageView.image = image
        super.viewWillAppear(animated)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
