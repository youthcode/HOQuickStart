import { QuickStartPage }  from '@yc/quickstart';
import { CourseLearning } from '@yc/learning';
import { KnowledgeMap, KnowledgeMapContent } from '@yc/map';

@Entry
@Component
struct Index {
  build() {
    Column() {
    //   QuickStartPage()
    //   CourseLearning()
    //   KnowledgeMap()
      KnowledgeMapContent()
    }
    .backgroundColor('#F1F3F5')
    .padding({ top: 36, bottom: 28 })
  }
}
