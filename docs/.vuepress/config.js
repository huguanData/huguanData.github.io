module.exports = {
  base: '/dmx-tool-help/',
  title: '这里是网页标题',
  description: '这里是网页描述',
  themeConfig: {
    logo: 'https://open.weixin.qq.com/qr/code?username=huGuanData',
    nav: [
      { text: '云业务', link: '/service' },
      { text: '计算器', link: '/calculator' }
    ],
    sidebar: [
      '/service',
      '/calculator'
    ],
    sidebarDepth: 2,
    // 以下是github设置
    repo: 'huguanData/dmx-tool-help',
    repoLabel: 'github',
    // 以下为可选的编辑链接选项
    // 假如你的文档仓库和项目本身不在一个仓库：
    // docsRepo: 'huguanData/dmx-tool-help',
    // 假如文档不是放在仓库的根目录下：
    docsDir: 'docs',
    // 假如文档放在一个特定的分支下：
    docsBranch: 'gh-pages',
    // 默认是 false, 设置为 true 来启用
    editLinks: true,
    // 默认为 "Edit this page"
    editLinkText: '帮助我们改善此页面！'
  }
}