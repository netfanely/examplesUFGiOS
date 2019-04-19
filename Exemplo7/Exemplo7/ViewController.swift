/*************************************************************
 Nome: Exemplo7
 Descricao: exemplo demonstra uso de Mapas
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local: TCE
 **************************************************************/

//Bibliotecas utilizadas

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate
{

    @IBOutlet weak var vrMap: MKMapView!
    
    @IBAction func handleCall(_ sender: Any)
    {
        //url = URL(string:"telprompt://63981280289")
        
        if let url = URL(string: "tel://\(981280289)")
        {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    //Metodo de delegate que trata o clique em um Pino
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView)
    {
       if let title = view.annotation?.title
       {
            print("local selecionado \(title)")
       }
    }
    
    //Trata o evento de Segment para a troca de estilo do mapa
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
    override func viewDidLoad() {
        super.viewDidLoad()
        vrMap.delegate = self
        createPin()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Cria um Pino no mapa
    func createPin()
    {
        let pin = MKPointAnnotation()
        pin.title = "MyPhome"
        pin.coordinate = CLLocationCoordinate2D(latitude: -26.201902, longitude: -52.690166)
        vrMap.addAnnotation(pin)
        
        let region = MKCoordinateRegionMakeWithDistance(pin.coordinate, 5000, 5000)

        let zoom = MKCoordinateSpanMake(0.002, 0.002)
        let region2 = MKCoordinateRegionMake(pin.coordinate, zoom)
        
        vrMap.setRegion(region2, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

