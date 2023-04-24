//
//  ProfileHost.swift
//  0706012110019-ileenetrinia-AFL3
//
//  Created by MacBook Pro on 24/04/23.
//

import SwiftUI

//The ProfileHost view will host both a static, summary view of profile information and an edit mode.

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    var body: some View {
        //displays the username of a stored profile.
        //        Text("Profile for: \(draftProfile.username)")
        
        //
        //ini yg diprint diupdate dari profile summary itu, kan ada draft profile, nah itu kek dijrenggg gitu di sini
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
