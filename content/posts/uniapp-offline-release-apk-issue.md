---
title: "Uniapp Offline Release Apk Issue"
date: 2022-10-01T11:37:39+08:00
draft: true
---

Uniapp 发布离线打包问题，踩坑

> 缺失模块，未添加模块

## 解决方案, 修改 `app/build.gradle`
```app/build.gradle
	buildTypes {
		release {
			// 最小化设置为 false 解决问题
			minifyEnabled false
		}
	}
```
