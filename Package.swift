//
//  Package.swift
//  PerfectCURL
//
//  Created by Kyle Jessup on 2016-06-06.
//  Copyright © 2016 GeoThings. All rights reserved.
//
// --------------------------------------------------------
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//


import PackageDescription

#if os(OSX)

    import Darwin
    
    do {
        let aRes = access("/usr/include/libxml2", F_OK)
        guard 0 == aRes else {
            print("Error: libxml2 not properly installed")
            print("brew install libxml2")
            print("brew link libxml2 --force")
            exit(-1)
        }
    }

#endif
    
let package = Package(
    name: "LibXML2",
    pkgConfig: "libxml-2.0",
    
    providers: [
        .Brew("libxml2"),
        .Apt("libxml2")
    ]
)
