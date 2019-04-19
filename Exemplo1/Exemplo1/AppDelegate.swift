/*************************************************************
 Nome: Exemplo1
 Descricao: exemplo demonstra os estados de uma aplicacao iOS
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
        print("Aplicacao terminou o carregamento...")
        return true
    }
    
    //Aplicacao esta prestes a se tornar inativa (chamada telefonica, mensagem SMS)
    func applicationWillResignActive(_ application: UIApplication)
    {
        print("Aplicacao ira se tornar inativa...")
    }
    
    //Aplicacao entrou em background (botao Home do aparelho)
    func applicationDidEnterBackground(_ application: UIApplication)
    {
        print("Aplicacao agora esta no background")
    }
    
    //Aplicacao ira retornar para o fogeground (foco) - elementos de interface ainda nao disponiveis
    func applicationWillEnterForeground(_ application: UIApplication)
    {
        print("Aplicacao ira voltar para foreground")
    }
    
    //Aplicacao se tornou ativa novamente - elementos de interface disponiveis
    func applicationDidBecomeActive(_ application: UIApplication)
    {
        print("Aplicacao agora esta ativa novamente...")
    }
    
    //Aplicacao ira ser finalizada (Encerrada)
    func applicationWillTerminate(_ application: UIApplication)
    {
        print("Aplicacao deixara de existir...")
    }
}


