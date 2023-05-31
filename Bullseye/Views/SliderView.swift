//
//  SliderView.swift
//  Bullseye
//
//  Created by Samarth Paboowal on 31/05/23.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            SliderText(text: Constant.minimumTarget)
                .frame(width: 35)
            
            Slider(value: $sliderValue, in: 1 ... 100)
            
            SliderText(text: Constant.maximumTarget)
                .frame(width: 35)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(50))
    }
}
