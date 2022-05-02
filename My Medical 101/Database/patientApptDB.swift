//
//  patientApptDB.swift
//  My Medical 101
//
//  Created by csuftitan on 4/30/22.
//

protocol patientsDB {
    func add(usingPatientsItem patients: Patient) -> Bool
    func update(usingPatientsItem patients: Patient) -> Void
    func delete(usingId id: String) -> Void
}
