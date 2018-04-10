import XCTest
@testable import RevHash

final class RevHashTests: XCTestCase {
    func testLoremIpsum() {
        XCTAssertEqual(revHash(of: "Lorem ipsum dolor sit amet"), "fea80f2db0")
        XCTAssertEqual(revHash(of: "Lorem ipsum dolor sit amet".data(using: .utf8)!), "fea80f2db0")
    }

    func testLongLoremIpsum() {
        XCTAssertEqual(revHash(of: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium."), "bb9d8fe615");
        XCTAssertEqual(revHash(of: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.".data(using: .utf8)!), "bb9d8fe615");
    }

    static var allTests = [
        ("testLoremIpsum", testLoremIpsum),
        ("testLongLoremIpsum", testLongLoremIpsum),
    ]
}
