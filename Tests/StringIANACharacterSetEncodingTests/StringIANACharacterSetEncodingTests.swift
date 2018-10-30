import XCTest
@testable import StringIANACharacterSetEncoding

final class StringIANACharacterSetEncodingTests: XCTestCase {
    func testCommonEncodingNames() {
        let commonNames: [String] = ["UTF8", "UTF-8", "UTF16", "UTF-16", "UNICODE", "ASCII"]
        for name in commonNames {
            guard let encoding = String.Encoding(charSetName: name) else {
                XCTFail("Could not find encoding with name '\(name)'")
                continue
            }
            print("('\(name)', '\(encoding)'): \(encoding.rawValue) --- [\(encoding.charSetName), \(encoding.noDashCharSetName)]")
        }
    }
    
    static var allTests = [
        ("testCommonEncodingNames", testCommonEncodingNames),
    ]
}
