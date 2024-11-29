@Component
export struct NavBarItem {
  build() {
    Row() {

    }
    .width('100%')
    .height(48)
    .borderRadius(16)
    .alignItems(VerticalAlign.Center)
    .padding({ left: 12, right: 12 })
    .backgroundColor('#F1F3F5')
  }
}