interface KnowledgeBaseItem {
  type: string,
  title: string
}

interface Material {
  subtitle: string,
  knowledgeBase: KnowledgeBaseItem[]
}

export interface Section {
  title: string,
  brief: string,
  materials: Material[]
}

@Component
export struct KnowledgeMapContent {
  @State  section: Section = {
    "title": "准备与学习",
    "brief": "加入HarmonyOS生态，注册成为开发者，通过HarmonyOS课程了解基本概念和基础知识，轻松开启HarmonyOS的开发旅程。",
    "materials": [
      {
        "subtitle": "HarmonyOS简介",
        "knowledgeBase": [
          { "type": "准备", "title": "注册账号" },
          { "type": "准备", "title": "实名认证" },
          { "type": "学习与获取证书", "title": "HarmonyOS第一课" },
          { "type": "学习与获取证书", "title": "HarmonyOS应用开发者基础认证" }
        ]
      },
      {
        "subtitle": "赋能套件介绍",
        "knowledgeBase": [
          { "type": "指南", "title": "开发" },
          { "type": "指南", "title": "最佳实践" },
          { "type": "指南", "title": "API参考" },
          { "type": "指南", "title": "视频课程" },
          { "type": "指南", "title": "Codelabs" },
          { "type": "指南", "title": "FAQ" }
        ]
      }
    ]
  };

  build() {
    Column() {
      Text(this.section?.title)
        .fontFamily('HarmonyHeiTi-Bold')
        .fontSize(20)
        .fontWeight(700)
        .fontColor(Color.Black)
      Text(this.section?.brief)
        .fontFamily('HarmonyHeiTi')
        .fontSize(12)
        .fontColor('rgba(0,0,0,0.60)')
        .textAlign(TextAlign.JUSTIFY)
        .fontWeight(400)
        .margin({ top: 12 })
    }
    .alignItems(HorizontalAlign.Start)
    .padding({ top: 12, left: 16, bottom: 12, right: 16 })
    .backgroundColor('#F1F3F5')
  }
}