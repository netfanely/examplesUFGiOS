/*************************************************************
 Nome: Exemplo3
 Descricao: exemplo demonstra uso de componentes visuais
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

//Bibliotecas utilizadas
import UIKit
import AVFoundation

class ViewController: UIViewController
{
    //Referencias para componentes visuais
    @IBOutlet weak var vrSegmented: UISegmentedControl!
    @IBOutlet weak var vrSlider: UISlider!
    @IBOutlet weak var vrSwitch: UISwitch!
    @IBOutlet weak var vrImage: UIImageView!
    @IBOutlet weak var vrLabel: UILabel!
    
    //Tela acabou de ser carregada
    override func viewDidLoad()
    {
        super.viewDidLoad()
        vrLabel.text = NSLocalizedString("title", comment: "App Title")
        vrSegmented.setTitle(NSLocalizedString("red", comment: "Red Light"), forSegmentAt: 0)
        vrSegmented.setTitle(NSLocalizedString("green", comment: "Green Light"), forSegmentAt: 1)
        vrSegmented.setTitle(NSLocalizedString("purple", comment: "Purple Light"), forSegmentAt: 2)
        vrSegmented.setTitle(NSLocalizedString("yellow", comment: "Yellow Light"), forSegmentAt: 3)
        vrSegmented.setTitle(NSLocalizedString("white", comment: "White Light"), forSegmentAt: 4)
    }
    
    
    //Sobrescreve o metodo de toque na tela
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        handleComponents()
    }
    
    //Tela recebeu uma mensagem indicando falta de memoria no sistema
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    //Metodo utilizado para a captura de eventos do Switch
    @IBAction func handleSwitch(_ sender: UISwitch)
    {
        //Obtem uma referencia para o dispositivo de video
        let vrDevice = AVCaptureDevice.default(for: AVMediaType.video)
        
        //Verifica se o dispositivo tem flash
        if (vrDevice != nil && vrDevice!.hasTorch)
        {
            do
            {
                //Trava a configuracao do dispositivo
                try vrDevice!.lockForConfiguration()
            
                //Verifica o valor do Switch para decicir se a lanterna esta on ou off
                if (!sender.isOn)
                {
                    vrDevice!.torchMode = AVCaptureDevice.TorchMode.off
                }
                else
                {
                    //Configura a intensidade do flash
                    try vrDevice!.setTorchModeOn(level: 1.0)
                }
            
                //Destrava o dispositivo
                vrDevice!.unlockForConfiguration()
            }
            catch
            {
                
            }
        }
    }
    
    //Metodo utilizado para a captura de eventos do Segmented
    @IBAction func handleSegmentedControl(_ sender: UISegmentedControl)
    {
        switch(sender.selectedSegmentIndex)
        {
            case 0:
                self.view.backgroundColor = UIColor.red
            
            case 1:
                self.view.backgroundColor = UIColor.green
            
            case 2:
                self.view.backgroundColor = UIColor.purple
            case 3:
                self.view.backgroundColor = UIColor.yellow
            
            case 4:
                self.view.backgroundColor = UIColor.white
            
            default:
                self.view.backgroundColor = UIColor.black
        }
    }
    
    //Metodo utilizado para a captura de eventos do Slider
    @IBAction func handleSlider(_ sender: UISlider)
    {
        self.view.alpha = CGFloat(sender.value)
    }
    
    //Metodo utilizado para controlar a visualizacao dos componenntes
    func handleComponents()
    {
        vrSegmented.isEnabled = !vrSegmented.isEnabled
        vrSlider.isHidden = !vrSlider.isHidden
        vrSwitch.isHidden = !vrSwitch.isHidden
        vrImage.isHidden = !vrImage.isHidden
        vrLabel.isHidden = !vrLabel.isHidden
    }
}

