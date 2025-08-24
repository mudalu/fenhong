# 分红系统原型 - 云端部署指南

## 部署选项

### 1. GitHub Pages（推荐）

**优点：** 免费、简单、与GitHub集成

**步骤：**

1. 创建GitHub仓库
```bash
git init
git add .
git commit -m "Initial commit: 分红系统原型"
git branch -M main
git remote add origin https://github.com/你的用户名/dividend-system-prototype.git
git push -u origin main
```

2. 在GitHub仓库设置中启用Pages
   - 进入仓库 Settings > Pages
   - Source选择 "Deploy from a branch"
   - Branch选择 "main"
   - 文件夹选择 "/ (root)"
   - 点击Save

3. 访问地址：`https://你的用户名.github.io/dividend-system-prototype`

### 2. Vercel

**优点：** 快速、自动部署、CDN加速

**步骤：**

1. 登录Vercel
```bash
vercel login
```

2. 部署项目
```bash
vercel --prod
```

3. 或者通过Vercel网站导入GitHub仓库

### 3. Netlify

**优点：** 功能丰富、表单处理、函数支持

**步骤：**

1. 访问 [netlify.com](https://netlify.com)
2. 连接GitHub账户
3. 选择仓库进行部署
4. 构建设置：
   - Build command: 留空
   - Publish directory: `/`

### 4. Surge.sh

**优点：** 简单快速、命令行部署

**步骤：**

1. 安装Surge
```bash
npm install -g surge
```

2. 部署
```bash
surge
```

### 5. Firebase Hosting

**优点：** Google服务、全球CDN

**步骤：**

1. 安装Firebase CLI
```bash
npm install -g firebase-tools
```

2. 登录并初始化
```bash
firebase login
firebase init hosting
```

3. 部署
```bash
firebase deploy
```

## 推荐部署流程

### 方案一：GitHub Pages（最简单）

```bash
# 1. 初始化Git仓库
git init
git add .
git commit -m "分红系统原型首次提交"

# 2. 推送到GitHub
git remote add origin https://github.com/你的用户名/dividend-system-prototype.git
git push -u origin main

# 3. 在GitHub仓库设置中启用Pages
# 4. 等待几分钟后访问 https://你的用户名.github.io/dividend-system-prototype
```

### 方案二：Netlify（功能丰富）

1. 将代码推送到GitHub
2. 访问 [netlify.com](https://netlify.com)
3. 点击 "New site from Git"
4. 选择GitHub仓库
5. 部署设置保持默认
6. 点击 "Deploy site"

## 部署后访问

部署成功后，你将获得一个公网访问地址，可以分享给团队成员进行原型演示和测试。

## 注意事项

1. **数据安全**：这是原型系统，请勿在生产环境中使用
2. **HTTPS**：所有推荐的托管服务都提供免费HTTPS
3. **自定义域名**：大部分服务支持绑定自定义域名
4. **更新部署**：推送新代码到仓库会自动触发重新部署

## 故障排除

- **页面404**：检查文件路径是否正确
- **样式丢失**：确保CSS文件路径使用相对路径
- **部署失败**：检查文件名是否包含特殊字符

选择最适合你的部署方案开始使用吧！