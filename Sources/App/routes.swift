import Routing
import Vapor
import Leaf

/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
public func routes(_ router: Router) throws {
    
    // MARK: Root route
    router.get { req in
        return "[Root] Welcome to Vapor - Do Nguyen"
    }
    
    // MARK: /hello
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    // MARK: /staff

    router.get("staff") { req in
        return "Meet our great team"
    }
    
    // MARK: /contact

    router.get("contact") { req -> Future<View> in
        let context: [String: String] = [String: String]()
        return try req.view().render("contact.leaf", context)
    }
}
