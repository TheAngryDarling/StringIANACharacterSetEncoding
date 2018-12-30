import XCTest
@testable import StringIANACharacterSetEncoding

final class StringIANACharacterSetEncodingTests: XCTestCase {
    let commonNames: [String] = ["UTF8", "UTF-8", "UTF16", "UTF-16", "UNICODE", "ASCII","Windows-1250","Windows1250"]
    func testCommonEncodingNames() {
        for name in commonNames {
            guard let encoding = String.Encoding(IANACharSetName: name) else {
                XCTFail("Could not find encoding with name '\(name)'")
                continue
            }
            var ln: String = "'\(name)' { Encoding Value: \(encoding.rawValue), Encoding: '\(encoding)'"
            if let n = encoding.IANACharSetName { ln += ", IANA Char Name: '\(n)'" }
            else { ln += ", IANA Char Name: nil" }
            if let n = encoding.noDashIANACharSetName { ln += ", No Dash IANA Char Name: '\(n)'" }
            else { ln += ", No Dash IANA Char Name: nil" }
            ln += " }"
            print(ln)
        }
    }
    
    static var allTests = [
        ("testCommonEncodingNames", testCommonEncodingNames),
    ]
}
