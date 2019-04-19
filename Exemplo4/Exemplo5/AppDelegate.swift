/*************************************************************
 Nome: Exemplo5
 Descricao: exemplo demonstra uso de componentes baseados em datasource e delegate
 Autor: Silvano Malfatti
 Data: 23/07/2018
 Local:TCE
 **************************************************************/

//Bibliotecas utilizadas
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    //Atributos da classe
    var window: UIWindow?
    
    
    //Aplicacao terminou o seu carregamento
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        return true
    }
    
    //Aplicacao esta prestes a se tornar inativa (chamada telefonica, mensagem SMS)
    func applicationWillResignActive(_ application: UIApplication)
    {
    }
    
    //Aplicacao entrou em background (botao Home do aparelho)
    func applicationDidEnterBackground(_ application: UIApplication)
    {
    }
    
    //Aplicacao ira retornar para o fogeground (foco) - elementos de interface ainda nao disponiveis
    func applicationWillEnterForeground(_ application: UIApplication)
    {
    }
    
    //Aplicacao se tornou ativa novamente - elementos de interface disponiveis
    func applicationDidBecomeActive(_ application: UIApplication)
    {
    }
    
    //Aplicacao ira ser finalizada (Encerrada)
    func applicationWillTerminate(_ application: UIApplication)
    {
    }
}

