/*************************************************************
 Nome: Exemplo11
 Descricao: exemplo demonstra a troca de telas (Aplicativo MyPhome)
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

import UIKit
import MapKit

class ViewControllerInfo: UIViewController, MKMapViewDelegate
{

    @IBOutlet weak var vrMap: MKMapView!
    
    @IBAction func handleCall(_ sender: Any)
    {
        //url = URL(string:"telprompt://63981280289")
        
        if let url = URL(string: "tel://\(981280289)")
        {
            UIApplication.shared.open(url, options: convertToUIApplicationOpenExternalURLOptionsKeyDictionary([:]), completionHandler: nil)
        }
    }
    
    @IBAction func handleSegmented(_ sender: UISegmentedControl)
    {
        switch sender.selectedSegmentIndex
        {
        case 0:
            vrMap.mapType = .satellite
        case 1:
            vrMap.mapType = .hybrid
        case 2:
            vrMap.mapType = .standard
        default:
            vrMap.mapType = .standard
        }
    }
    
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView)
    {
        if let title = view.annotatiString(describing: on?.t)itle
        {
            print("local selecionado \(String(describing: title))")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vrMap.delegate = self
        createPin()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func createPin()
    {
        let pin = MKPointAnnotation()
        pin.title = "MyPhome"
        pin.coordinate = CLLocationCoordinate2D(latitude: -10.177710, longitude:-48_,       vrMap.addAnnotation(pin)
        
        let region = MKCoordinateRegion.init(center: pin.coordinate, latitudinalMeters: 5000, longitudinalMeters: 5000)
        
        let zoom = MKCoordinateSpan.init(latitudeDelta: 0.002, longitudeDelta: 0.002)
        let region2 = MKCoordinateRegion.init(center: pin.coordinate, span: zoom)
        
        vrMap.setRegion(region2, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToUIApplicationOpenExternalURLOptionsKeyDictionary(_ input: [String: Any]) -> [UIApplication.OpenExternalURLOptionsKey: Any] {
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (UIApplication.OpenExternalURLOptionsKey(rawValue: key), value)})
}
