import Foundation
import Capacitor
import Paystack

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(CapacitorPaystack)
public class CapacitorPaystack: CAPPlugin {
    
    public override func load() {
      let pkKey = getConfigValue("paystack-key") as? String ?? "ADD_IN_CAPACITOR_CONFIG_JSON"
    
        Paystack.setDefaultPublicKey(pkKey)
      
    }
    
    @objc func charge(_ call: CAPPluginCall) {
        guard let cardNumber = call.options["cardNumber"] as? String else {
          call.reject("Must provide a card number")
          return
        }
        
        call.resolve([
            "success" : true,
            "cardNumber": cardNumber
        ])
        
    }
}
