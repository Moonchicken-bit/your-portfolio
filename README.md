# 闫泽雨 - 个人简历网站

一个现代化、炫酷的个人简历展示网站，包含动画效果、粒子背景、平滑滚动等特性。

## 🌟 特性

- ✨ 动态粒子背景效果
- 🎨 渐变色彩和霓虹灯效果
- 📱 完全响应式设计
- 🎭 平滑滚动和页面过渡动画
- 💫 数字计数动画
- 📊 技能条进度动画
- 🎯 导航栏高亮显示
- 🖱️ 鼠标跟随特效
- 🔝 返回顶部按钮

## 📂 文件结构

```
portfolio/
├── index.html      # 主HTML文件
├── style.css       # 样式文件
├── script.js       # JavaScript交互文件
└── README.md       # 说明文档
```

## 🚀 使用方法

1. 直接在浏览器中打开 `index.html` 文件即可查看网站
2. 无需安装任何依赖，所有资源都通过CDN加载

## 🎨 自定义

### 修改颜色主题

在 `style.css` 文件的 `:root` 部分修改颜色变量：

```css
:root {
    --primary-color: #00d4ff;      /* 主色调 */
    --secondary-color: #ff006e;    /* 次要色 */
    --accent-color: #8338ec;       /* 强调色 */
}
```

### 修改个人信息

在 `index.html` 文件中找到对应的部分进行修改：
- 联系方式
- 项目经历
- 教育背景
- 技能列表

### 添加个人照片

将照片放在项目目录中，然后在 `.profile-pic` 样式中添加：

```css
.profile-pic {
    background-image: url('your-photo.jpg');
    background-size: cover;
    background-position: center;
}
```

## 📱 响应式支持

网站支持以下设备：
- 桌面电脑 (>968px)
- 平板电脑 (768px - 968px)
- 手机 (<768px)

## 🌐 浏览器兼容性

- Chrome (推荐)
- Firefox
- Safari
- Edge

## 📝 技术栈

- HTML5
- CSS3 (Flexbox, Grid, Animations)
- JavaScript (ES6+)
- Particles.js (粒子背景)
- Font Awesome (图标)

## 💡 提示

- 建议使用现代浏览器以获得最佳体验
- 可以根据需要调整动画速度和效果
- 所有动画都经过性能优化

## 📧 联系方式

- 邮箱: yancy130623@qq.com
- 电话: 13145683419

---

Made with ❤️ by 闫泽雨
