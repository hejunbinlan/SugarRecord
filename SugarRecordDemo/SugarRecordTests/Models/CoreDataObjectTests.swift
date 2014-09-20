//
//  CoreDataObjectTests.swift
//  SugarRecord
//
//  Created by Pedro Piñera Buendía on 20/09/14.
//  Copyright (c) 2014 SugarRecord. All rights reserved.
//

import Quick
import Nimble
import CoreData
import Realm

class CoreDatabjectTests: QuickSpec {
    override func spec() {
        beforeSuite
        {
            SugarRecord.setStack(DefaultCDStack(databaseName: "TestDatabase", automigrating: false))
        }
        
        afterSuite
        {
            SugarRecord.cleanUp()
            SugarRecord.removeDatabase()
        }
        
        describe("object creation", { () -> () in
            it("should create the item in database", { () -> () in
                var coreDataObject: CoreDataObject = CoreDataObject.create() as CoreDataObject
                coreDataObject.name = "Testy"
                coreDataObject.age = 21
                coreDataObject.email = "test@test.com"
                coreDataObject.birth = NSDate()
                coreDataObject.city = "Springfield"
                let saved: Bool = coreDataObject.save()
                var coreDataObject2: CoreDataObject = CoreDataObject.create() as CoreDataObject
                coreDataObject2.name = "Testy2"
                coreDataObject2.age = 22
                coreDataObject2.email = "test2@test.com"
                coreDataObject2.birth = NSDate()
                coreDataObject2.city = "Springfield"
                let saved2: Bool = coreDataObject2.save()
                expect(CoreDataObject.all().find()!.count).to(equal(2))
                coreDataObject.delete()
                coreDataObject2.delete()
            })
        });
        
        describe("object deletion", { () -> () in
            it("should delete a given object properly", { () -> () in
//                var realmObject: RealmObject = RealmObject.create() as RealmObject
//                realmObject.name = "Realmy"
//                realmObject.age = 22
//                realmObject.email = "test@mail.com"
//                realmObject.city = "TestCity"
//                realmObject.birthday = NSDate()
//                let saved: Bool = realmObject.save()
//                realmObject.delete()
//                expect(RealmObject.allObjects().count).to(equal(0))
            })
            it("should delete all the objects in the database", { () -> () in
//                var realmObject: RealmObject = RealmObject.create() as RealmObject
//                realmObject.name = "Realmy"
//                realmObject.age = 22
//                realmObject.email = "test@mail.com"
//                realmObject.city = "TestCity"
//                realmObject.birthday = NSDate()
//                let saved: Bool = realmObject.save()
//                var realmObject2: RealmObject = RealmObject.create() as RealmObject
//                realmObject2.name = "Realmy"
//                realmObject2.age = 22
//                realmObject2.email = "test@mail.com"
//                realmObject2.city = "TestCity"
//                realmObject2.birthday = NSDate()
//                let saved2: Bool = realmObject2.save()
//                realmObject2.delete()
//                realmObject.delete()
//                expect(RealmObject.allObjects().count).to(equal(0))
            })
        });
        
        describe("object edition", { () -> () in
            //var realmObject: RealmObject? = nil
            
            beforeEach({ () -> () in
//                realmObject = RealmObject.create() as? RealmObject
//                realmObject?.save()
            })
            
            afterEach({ () -> () in
                //let deleted: Bool = realmObject!.delete()
            })
            
            it("should apply the changes when the object changes are persisted", { () -> () in
//                realmObject!.beginEditing()
//                realmObject!.name = "Testy"
//                realmObject!.endEditing()
//                let fetchedObject: RealmObject = RealmObject.allObjects().firstObject() as RealmObject
//                expect(fetchedObject.name).to(equal("Testy"))
            })
        });
        
        describe("object querying", { () -> () in
//            var realmObject: RealmObject? = nil
//            var realmObject2: RealmObject? = nil
            
            beforeEach({ () -> () in
//                realmObject = RealmObject.create() as? RealmObject
//                realmObject!.name = "Realmy"
//                realmObject!.age = 22
//                realmObject!.email = "test@mail.com"
//                realmObject!.city = "TestCity"
//                realmObject!.birthday = NSDate()
//                let saved: Bool = realmObject!.save()
//                realmObject2 = RealmObject.create() as? RealmObject
//                realmObject2!.name = "Realmy2"
//                realmObject2!.age = 22
//                realmObject2!.email = "test@mail.com"
//                realmObject2!.city = "TestCity2"
//                realmObject2!.birthday = NSDate()
//                let saved2: Bool = realmObject2!.save()
            })
            
            afterEach({ () -> () in
//                realmObject2!.delete()
//                realmObject!.delete()
            })
            
            it("should return all objects", { () -> () in
//                let found: [AnyObject] = RealmObject.all().find()!
//                expect(found.count).to(equal(2))
            });
            
            it("should return ALL filtered objects", { () -> () in
//                let found: [AnyObject] = RealmObject.by("age", equalTo: "22").find()!
//                expect(found.count).to(equal(2))
            })
            
            it("should return ANYTHING if the filter doesn't match any result", { () -> () in
//                let found: [AnyObject] = RealmObject.by("age", equalTo: "10").find()!
//                expect(found.count).to(equal(0))
            })
            
            it("should return the FIRST element", { () -> () in
//                let found: [AnyObject] = RealmObject.sorted(by: "name", ascending: true).first().find()!
//                let object: RealmObject = found.first! as RealmObject
//                expect(object.name).to(equal("Realmy"))
            })
            
            it("should return the LAST element", { () -> () in
//                let found: [AnyObject] = RealmObject.sorted(by: "name", ascending: true).last().find()!
//                let object: RealmObject = found.first! as RealmObject
//                expect(object.name).to(equal("Realmy2"))
            })
            
            it("should return the FIRSTS elements", { () -> () in
//                let found: [AnyObject] = RealmObject.sorted(by: "name", ascending: true).firsts(20).find()!
//                let object: RealmObject = found.first! as RealmObject
//                expect(found.count).to(equal(2))
            })
            
            it("should return the LASTS elements", { () -> () in
//                let found: [AnyObject] = RealmObject.sorted(by: "name", ascending: true).lasts(20).find()!
//                let object: RealmObject = found.first! as RealmObject
//                expect(found.count).to(equal(2))
            })
        });
    }
}
