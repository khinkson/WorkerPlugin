//import Crypto
import WorkerInterface
import Foundation

@_cdecl("createPlugin")
public func createPlugin() -> UnsafeMutableRawPointer {
    return Unmanaged<WorkerPluginBuilder>.passRetained(WorkerPluginBuilder()).toOpaque()
}

struct WorkerPlugin: WorkerInterface {

    func runWorker(event: String) -> UInt {
        /*do {
            let keyData: Data = "string".data(using: .utf8)!
            let privateKey: Curve25519.Signing.PrivateKey = try .init(rawRepresentation: keyData)
            print("got private key: \(privateKey)")
        } catch {
            print("invalid private key. nothing to see.")
        }*/
        print("201 worker")
        return 201
    }
}

final class WorkerPluginBuilder: WorkerInterfaceBuilder {

    override func build() -> WorkerInterface {
        WorkerPlugin()
    }
}
