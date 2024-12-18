// src/main/ets/view/Banner.ets

import { BannerClass } from '../model/BannerClass';
import { buffer } from '@kit.ArkTS';

import { bufferToString } from '../util/BufferUtil'

@Component
export struct Banner {
  @State bannerList: BannerClass[] = [];

  aboutToAppear(): void {
    this.getBannerDataFromJSON();
  }

  getBannerDataFromJSON() {
    getContext(this).resourceManager.getRawFileContent('BannerData.json').then(value => {
      this.bannerList = JSON.parse(bufferToString(value)) as BannerClass[];
    })
  }

  build() {
    Swiper() {
      ForEach(this.bannerList, (item: BannerClass, index: number) => {
        Image($r(item.imageSrc))
          .objectFit(ImageFit.Contain)
          .width('100%')
          .padding({ top: 11, left: 16, right: 16 })
          .borderRadius(16)
      }, (item: BannerClass, index: number) => item.id)
    }
    .autoPlay(true)
    .loop(true)
    .indicator(
      new DotIndicator()
        .color('#1a000000')
        .selectedColor('#0A59F7')
    )
  }
}