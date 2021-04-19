import UIKit
import WebKit
import SafariServices

class WebViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidAppear(_ animated:Bool) {
        super.viewDidAppear(animated)
        guard let url = URL(string: "https://www.voby.us/technovation.html") else { return }
        let svc = SFSafariViewController(url:url)
        present(svc, animated: true, completion: nil)
        //UIApplication.shared.open(url)
        //let url = URL(string: "https://www.voby.us/technovation.html")!
       // webView.load(URLRequest(url: url))
    }
}
