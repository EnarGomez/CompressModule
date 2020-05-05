//
//  ArandaCompressModuleTests.swift
//  ArandaCompressModuleTests
//
//  Created by Enar GoMez on 23/04/20.
//  Copyright © 2020 Aranda. All rights reserved.
//

import XCTest
@testable import ArandaCompressModule

class ArandaCompressModuleTests: XCTestCase {
    
    var arandaCompress: ArandaCompress = ArandaCompress()
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        //arandaCompress = ArandaCompress()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
    }
    /*
    func testCompresAudioHighInBackground() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let path = "/ArandaCompressModule/ArandaCompressModuleTests/ArandaCompressModuleTests.swif"
        arandaCompress.compressInBackgound(path: path, quality: .HIGH, filetype: .AUDIO) { (success, msg, data) in
            XCTAssertTrue(success)
        }
    }
    func testCompresAudioMediumInBackground() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let path = "/ArandaCompressModule/ArandaCompressModuleTests/ArandaModuleTests.swif"
        arandaCompress.compressInBackgound(path: path, quality: .MEDIUM, filetype: .AUDIO) { (success, msg, data) in
            XCTAssertTrue(success)
        }
    }
    func testCompresAudioLowInBackground() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let path = "/ArandaCompressModule/ArandaCompressModuleTests/Aranda.swif"
        arandaCompress.compressInBackgound(path: path, quality: .LOW, filetype: .AUDIO) { (success, msg, data) in
            XCTAssertTrue(success)
        }
    }
    
    func testCompresImageHighInBackground() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let path = "/ArandaCompressModule/ArandaCompressModuleTests/ArandaCompressModuleTests.swif"
        arandaCompress.compressInBackgound(path: path, quality: .HIGH, filetype: .IMAGE) { (success, msg, data) in
            XCTAssertTrue(success)
        }
    }
    func testCompresImageMediumInBackground() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let path = "/ArandaCompressModule/ArandaCompressModuleTests/ArandaModuleTests.swif"
        arandaCompress.compressInBackgound(path: path, quality: .MEDIUM, filetype: .IMAGE) { (success, msg, data) in
            XCTAssertTrue(success)
        }
    }
    func testCompresImageLowInBackground() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let path = "/ArandaCompressModule/ArandaCompressModuleTests/Aranda.swif"
        arandaCompress.compressInBackgound(path: path, quality: .LOW, filetype: .IMAGE) { (success, msg, data) in
            XCTAssertTrue(success)
        }
    }
    
    func testCompresVideoHighInBackground() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let path = "/ArandaCompressModule/ArandaCompressModuleTests/ArandaCompressModuleTests.swif"
        arandaCompress.compressInBackgound(path: path, quality: .HIGH, filetype: .VIDEO) { (success, msg, data) in
            XCTAssertTrue(success)
        }
    }
    func testCompresVideoMediumInBackground() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let path = "/ArandaCompressModule/ArandaCompressModuleTests/ArandaModuleTests.swif"
        arandaCompress.compressInBackgound(path: path, quality: .MEDIUM, filetype: .VIDEO) { (success, msg, data) in
            XCTAssertTrue(success)
        }
    }
    func testCompresVideoLowInBackground() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let path = "/ArandaCompressModule/ArandaCompressModuleTests/Aranda.swif"
        arandaCompress.compressInBackgound(path: path, quality: .LOW, filetype: .VIDEO) { (success, msg, data) in
            XCTAssertTrue(success)
        }
    }
    
    */
    
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
