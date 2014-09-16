//
//  MediaTests.swift
//  MediaTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-09-16.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
import XCTest
import SwiftFHIR


class MediaTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Media? {
		let json = readJSONFile(filename)
		let instance = Media(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedia1() {
		let inst = instantiateFrom("media-example-dicom.json")
		XCTAssertNotNil(inst, "Must have instantiated a Media instance")
		
		XCTAssertEqual(inst!.content!.contentType!, "application/dicom")
		XCTAssertEqual(inst!.content!.url!, NSURL(string: "http://imaging.acme.com/wado/server?requestType=WADO&contentType=application%2Fdicom&studyUid=1.2.840.113619.2.21.848.34082.0.538976288.3&seriesUid=1.2.840.113619.2.21.3408.700.0.757923840.3.0&objectUid=1.2.840.11361907579238403408700.3.0.14.19970327150033"))	
		XCTAssertEqual(inst!.deviceName!, "G.E. Medical Systems")
		XCTAssertEqual(inst!.height!, 480)	
		XCTAssertEqual(inst!.identifier![0].label!, "InstanceUID")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:ietf:rfc:3986"))	
		XCTAssertEqual(inst!.identifier![0].use!, "official")	
		XCTAssertEqual(inst!.identifier![0].value!, "urn:oid:1.2.840.11361907579238403408700.3.0.14.19970327150033")	
		XCTAssertEqual(inst!.identifier![1].label!, "accessionNo")
		XCTAssertEqual(inst!.identifier![1].system!, NSURL(string: "http://acme-imaging.com/accession/2012"))	
		XCTAssertEqual(inst!.identifier![1].value!, "1234567")	
		XCTAssertEqual(inst!.identifier![2].label!, "studyId")
		XCTAssertEqual(inst!.identifier![2].system!, NSURL(string: "urn:ietf:rfc:3986"))	
		XCTAssertEqual(inst!.identifier![2].value!, "urn:oid:1.2.840.113619.2.21.848.34082.0.538976288.3")	
		XCTAssertEqual(inst!.identifier![3].label!, "seriesId")
		XCTAssertEqual(inst!.identifier![3].system!, NSURL(string: "urn:ietf:rfc:3986"))	
		XCTAssertEqual(inst!.identifier![3].value!, "urn:oid:1.2.840.113619.2.21.3408.700.0.757923840.3.0")	
		XCTAssertEqual(inst!.subtype!.coding![0].code!, "US")
		XCTAssertEqual(inst!.subtype!.coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid"))	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      Ultrasound Image on patient &quot;James Chalmers&quot;:<br/>\n      <img alt=\"WADO reference to image\" src=\"http://imaging.acme.com/wado/server?requestType=WADO&amp;contentType=application%2Fdicom&amp;studyUid=1.2.840.113619.2.21.848.34082.0.538976288.3&amp;seriesUid=1.2.840.113619.2.21.3408.700.0.757923840.3.0&amp;objectUid=1.2.840.11361907579238403408700.3.0.14.19970327150033\"/>\n        \n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type!, "photo")
		XCTAssertEqual(inst!.width!, 640)
	}
}
