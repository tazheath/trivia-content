@State private var availableWidth: CGFloat = 320

var body: some View {
    ZStack(alignment: .bottom) {
        VStack {
            
            Spacer(minLength: 80)
            
            GeometryReader { geometry in
                BannerAdView(width: geo.size.width)
                    .frame(width: geo.size.width, height: 50, alignment: .center)
                    .background(.ultraThinMaterial)
                    .overlay(Divider(), alignment: .top)
                    .ignoreSafeArea(edges: .bottom)
                    .onAppear {
                        availableWidth = geo.size.width
                    }
                    .onChange(of: geo.size.width) {
                        availableWidth = $0
                    }
            }
            
            .frame(height: 50, alignment: .bottom)
            
            
            
        }
        .onAppear {
            availableWidth = UIScreen.main.bounds.width
        }
    }
}
