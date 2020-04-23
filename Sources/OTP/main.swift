import ArgumentParser
import SwiftOTP
import Foundation

struct OTP: ParsableCommand {

    @Argument(help: "The secret.")
    var secret: String

    func run() throws {
        print(TOTP(secret: base32DecodeToData(secret)!)!.generate(time: Date())!)
    }

}

OTP.main()