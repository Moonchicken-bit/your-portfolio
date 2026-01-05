# 个人简历网站 - 部署说明与访问方法

## 📋 目录
1. [快速开始](#1-快速开始)
2. [本地部署](#2-本地部署)
3. [在线部署方案](#3-在线部署方案)
4. [域名配置](#4-域名配置)
5. [常见问题](#5-常见问题)

---

## 1. 快速开始

### 🚀 最简单的方式：直接打开

你的网站是纯静态网站，无需任何服务器配置！

**步骤：**
1. 找到 `portfolio` 文件夹
2. 双击打开 `index.html` 文件
3. 网站会在默认浏览器中打开

**优点：**
- ✅ 零配置，立即可用
- ✅ 适合本地预览

**缺点：**
- ❌ 只能自己访问
- ❌ 无法分享给他人

---

## 2. 本地部署

### 方案 A：使用 Python 本地服务器（推荐）

**适用场景：** 本地测试、局域网访问

#### Windows 系统

```bash
# 1. 打开命令提示符（CMD）
# 按 Win + R，输入 cmd，回车

# 2. 进入 portfolio 文件夹
cd C:\path\to\your\portfolio

# 3. 启动服务器（Python 3）
python -m http.server 8000

# 4. 浏览器访问
# 打开浏览器，输入：http://localhost:8000
```

**如果没有 Python：**
```bash
# 下载并安装 Python
# 访问：https://www.python.org/downloads/
# 安装时勾选 "Add Python to PATH"
```

#### 局域网访问

启动服务器后，其他设备可以通过你的IP地址访问：

```bash
# 1. 查看你的IP地址
ipconfig

# 2. 找到 IPv4 地址，例如：192.168.1.100

# 3. 其他设备访问
# 在同一WiFi下，浏览器输入：http://192.168.1.100:8000
```

### 方案 B：使用 Node.js 服务器

**前提：** 已安装 Node.js

```bash
# 1. 全局安装 http-server
npm install -g http-server

# 2. 进入 portfolio 文件夹
cd portfolio

# 3. 启动服务器
http-server -p 8000

# 4. 访问
# http://localhost:8000
```

### 方案 C：使用 VS Code Live Server

**前提：** 已安装 Visual Studio Code

```bash
# 1. 安装 Live Server 插件
# 在 VS Code 中搜索 "Live Server" 并安装

# 2. 打开 portfolio 文件夹

# 3. 右键点击 index.html
# 选择 "Open with Live Server"

# 4. 自动在浏览器打开
# 默认地址：http://127.0.0.1:5500
```

---

## 3. 在线部署方案

让全世界都能访问你的网站！以下是几种免费的部署方案：

### 🌟 方案 1：GitHub Pages（推荐）

**优点：**
- ✅ 完全免费
- ✅ 自动HTTPS
- ✅ 可绑定自定义域名
- ✅ 全球CDN加速

**步骤：**

#### 第一步：创建 GitHub 仓库

```bash
# 1. 访问 GitHub.com，登录账号

# 2. 点击右上角 "+" → "New repository"

# 3. 填写信息：
Repository name: your-portfolio
Description: 我的个人简历网站
Public（公开）
勾选 "Add a README file"

# 4. 点击 "Create repository"
```

#### 第二步：上传文件

**方法 A：使用 Git 命令行**

```bash
# 1. 在本地 portfolio 文件夹中打开命令行

# 2. 初始化 Git
git init

# 3. 添加所有文件
git add .

# 4. 提交
git commit -m "Initial commit: 个人简历网站"

# 5. 关联远程仓库（替换为你的用户名）
git remote add origin https://github.com/你的用户名/your-portfolio.git

# 6. 推送到 GitHub
git branch -M main
git push -u origin main
```

**方法 B：使用 GitHub 网页上传**

```bash
# 1. 在仓库页面点击 "Add file" → "Upload files"

# 2. 拖拽 portfolio 文件夹中的所有文件
   - index.html
   - style.css
   - script.js
   - README.md
   - 等等

# 3. 填写提交信息："上传个人简历网站"

# 4. 点击 "Commit changes"
```

#### 第三步：启用 GitHub Pages

```bash
# 1. 进入仓库的 Settings（设置）

# 2. 左侧菜单找到 "Pages"

# 3. Source 选择：
   - Branch: main
   - Folder: / (root)

# 4. 点击 "Save"

# 5. 等待 1-2 分钟，页面会显示：
   "Your site is published at https://你的用户名.github.io/your-portfolio/"
```

#### 访问你的网站

```
🌐 网址：https://你的用户名.github.io/your-portfolio/

例如：https://yancy130623.github.io/portfolio/
```

---

### 🌟 方案 2：Vercel（推荐）

**优点：**
- ✅ 完全免费
- ✅ 部署超快（30秒）
- ✅ 自动HTTPS
- ✅ 全球CDN
- ✅ 自动部署（推送代码自动更新）

**步骤：**

```bash
# 1. 访问 vercel.com

# 2. 点击 "Sign Up" 注册
   - 推荐使用 GitHub 账号登录

# 3. 点击 "New Project"

# 4. 导入 GitHub 仓库
   - 选择你的 portfolio 仓库
   - 点击 "Import"

# 5. 配置项目（保持默认即可）
   - Framework Preset: Other
   - Root Directory: ./
   - 点击 "Deploy"

# 6. 等待部署完成（约30秒）

# 7. 获得网址：
   https://your-portfolio.vercel.app
```

**自定义域名：**
```bash
# 在 Vercel 项目设置中：
Settings → Domains → Add Domain
输入你的域名，按提示配置DNS
```

---

### 🌟 方案 3：Netlify

**优点：**
- ✅ 完全免费
- ✅ 拖拽部署
- ✅ 自动HTTPS
- ✅ 表单处理功能

**步骤：**

```bash
# 1. 访问 netlify.com

# 2. 点击 "Sign Up" 注册

# 3. 点击 "Add new site" → "Deploy manually"

# 4. 拖拽 portfolio 文件夹到页面

# 5. 等待部署完成

# 6. 获得网址：
   https://random-name-123456.netlify.app

# 7. 自定义域名：
   Site settings → Domain management → Add custom domain
```

---

### 🌟 方案 4：Cloudflare Pages

**优点：**
- ✅ 完全免费
- ✅ 无限带宽
- ✅ 全球CDN
- ✅ 超快速度

**步骤：**

```bash
# 1. 访问 pages.cloudflare.com

# 2. 注册/登录 Cloudflare 账号

# 3. 点击 "Create a project"

# 4. 连接 GitHub 仓库
   - 授权 Cloudflare 访问 GitHub
   - 选择 portfolio 仓库

# 5. 配置构建设置
   - Build command: (留空)
   - Build output directory: /

# 6. 点击 "Save and Deploy"

# 7. 获得网址：
   https://your-portfolio.pages.dev
```

---

### 🌟 方案 5：国内平台 - Gitee Pages

**优点：**
- ✅ 国内访问速度快
- ✅ 中文界面
- ✅ 免费

**步骤：**

```bash
# 1. 访问 gitee.com，注册账号

# 2. 创建仓库
   - 点击右上角 "+" → "新建仓库"
   - 仓库名称：portfolio
   - 公开

# 3. 上传文件
   - 点击 "上传文件"
   - 拖拽所有文件

# 4. 启用 Gitee Pages
   - 进入仓库 → 服务 → Gitee Pages
   - 点击 "启动"

# 5. 访问网址：
   https://你的用户名.gitee.io/portfolio
```

---

## 4. 域名配置

### 购买域名

**推荐域名注册商：**
- 🌐 阿里云（万网）：https://wanwang.aliyun.com
- 🌐 腾讯云：https://dnspod.cloud.tencent.com
- 🌐 GoDaddy：https://www.godaddy.com
- 🌐 Namecheap：https://www.namecheap.com

**价格参考：**
- .com 域名：约 60-100 元/年
- .cn 域名：约 30-50 元/年
- .top 域名：约 10-20 元/年

### 绑定自定义域名

#### GitHub Pages 绑定域名

```bash
# 1. 在域名注册商添加 DNS 记录

# A 记录（推荐）：
类型: A
主机记录: @
记录值: 185.199.108.153
记录值: 185.199.109.153
记录值: 185.199.110.153
记录值: 185.199.111.153

# CNAME 记录：
类型: CNAME
主机记录: www
记录值: 你的用户名.github.io

# 2. 在 GitHub 仓库中配置
Settings → Pages → Custom domain
输入你的域名：www.yourdomain.com
勾选 "Enforce HTTPS"

# 3. 等待 DNS 生效（10分钟-24小时）
```

#### Vercel 绑定域名

```bash
# 1. 在 Vercel 项目中
Settings → Domains → Add

# 2. 输入域名：www.yourdomain.com

# 3. 按提示在域名注册商添加记录
类型: CNAME
主机记录: www
记录值: cname.vercel-dns.com

# 4. 等待验证完成
```

---

## 5. 访问方法总结

### 本地访问

| 方法 | 地址 | 适用场景 |
|-----|------|---------|
| 直接打开 | file:///C:/path/to/index.html | 个人预览 |
| Python服务器 | http://localhost:8000 | 本地测试 |
| 局域网访问 | http://192.168.1.x:8000 | 同WiFi设备 |

### 在线访问

| 平台 | 示例网址 | 特点 |
|-----|---------|------|
| GitHub Pages | https://username.github.io/portfolio/ | 免费、稳定 |
| Vercel | https://portfolio.vercel.app | 快速、自动部署 |
| Netlify | https://portfolio.netlify.app | 简单、功能多 |
| Cloudflare | https://portfolio.pages.dev | 速度快、无限带宽 |
| Gitee Pages | https://username.gitee.io/portfolio | 国内快 |

### 自定义域名访问

```
https://www.你的域名.com
https://你的域名.com
```

---

## 6. 常见问题

### Q1: 部署后样式不显示？

**原因：** 文件路径问题

**解决：**
```html
<!-- 检查 index.html 中的路径 -->
<!-- 确保使用相对路径 -->
<link rel="stylesheet" href="style.css">
<script src="script.js"></script>

<!-- 而不是绝对路径 -->
<link rel="stylesheet" href="/style.css">
```

### Q2: GitHub Pages 显示 404？

**解决：**
```bash
# 1. 确保仓库是 Public（公开）
# 2. 确保 index.html 在根目录
# 3. 等待 1-2 分钟让 GitHub 构建完成
# 4. 清除浏览器缓存后重试
```

### Q3: 如何更新网站内容？

**GitHub Pages：**
```bash
# 1. 修改本地文件
# 2. 提交并推送
git add .
git commit -m "更新内容"
git push

# 3. 等待 1-2 分钟自动部署
```

**Vercel/Netlify：**
```bash
# 推送到 GitHub 后自动部署，无需额外操作
```

**手动上传：**
```bash
# 重新上传文件到对应平台
```

### Q4: 如何让网站在百度/Google搜索到？

**步骤：**
```bash
# 1. 提交网站到搜索引擎
百度站长平台：https://ziyuan.baidu.com
Google Search Console：https://search.google.com/search-console

# 2. 添加 sitemap.xml
# 3. 添加 robots.txt
# 4. 优化 SEO（meta标签、关键词等）
```

### Q5: 网站访问速度慢？

**优化方案：**
```bash
# 1. 使用 CDN（Cloudflare、Vercel 自带）
# 2. 压缩图片（如有）
# 3. 启用 Gzip 压缩
# 4. 使用国内平台（Gitee Pages）
```

### Q6: 如何添加访问统计？

**推荐工具：**
```html
<!-- Google Analytics -->
<!-- 在 index.html 的 </head> 前添加 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>

<!-- 百度统计 -->
<!-- 注册后获取代码 -->
```

---

## 7. 推荐部署方案

### 🏆 最佳方案（推荐）

**GitHub Pages + Vercel 双部署**

```bash
优点：
✅ GitHub Pages：稳定、可靠、免费
✅ Vercel：速度快、自动部署、全球CDN
✅ 双保险：一个挂了还有另一个

步骤：
1. 先部署到 GitHub Pages（主站）
2. 再部署到 Vercel（备用/加速）
3. 使用自定义域名指向 Vercel
```

### 🎯 快速方案（最简单）

**Vercel 一键部署**

```bash
1. 注册 Vercel
2. 导入 GitHub 仓库
3. 一键部署
4. 获得网址

总耗时：5分钟
```

### 🇨🇳 国内方案（国内访问快）

**Gitee Pages**

```bash
1. 注册 Gitee
2. 创建仓库并上传
3. 启用 Gitee Pages
4. 国内访问速度快

注意：需要实名认证
```

---

## 8. 部署检查清单

部署前请确认：

- [ ] 所有文件都在 portfolio 文件夹中
- [ ] index.html 在根目录
- [ ] style.css 和 script.js 路径正确
- [ ] 个人信息已更新（邮箱、电话等）
- [ ] 在本地测试过，功能正常
- [ ] 浏览器兼容性测试通过
- [ ] 移动端显示正常

部署后请检查：

- [ ] 网站能正常打开
- [ ] 所有样式正确显示
- [ ] 动画效果正常
- [ ] 粒子背景显示
- [ ] 导航功能正常
- [ ] 响应式布局正常
- [ ] 链接都能点击

---

## 9. 联系与支持

如果遇到问题：

1. **查看文档**：README.md、DESIGN_OVERVIEW.md
2. **检查控制台**：F12 打开开发者工具查看错误
3. **搜索问题**：Google/百度搜索错误信息
4. **寻求帮助**：GitHub Issues、Stack Overflow

---

## 📞 快速联系

**网站作者：** 闫泽雨  
**邮箱：** yancy130623@qq.com  
**电话：** 13145683419

---

**祝你部署顺利！🎉**

如果网站帮你找到了工作或实习，别忘了请我喝杯咖啡 ☕
