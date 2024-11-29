import { QuickStartPage }  from '@yc/quickstart';
import { CourseLearning } from '@yc/learning';

@Entry
@Component
struct Index {
  build() {
    Column() {
    //   QuickStartPage()
      CourseLearning()
    }
    .backgroundColor('#F1F3F5')
    .padding({ top: 36, bottom: 28 })
  }
}
