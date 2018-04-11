import Routing
import Vapor

/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
public func routes(_ router: Router) throws {
    
    // MARK: Root route
    router.get { _ in
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

    router.get("contact") { req in
        return "Get in touch with us"
    }
}
