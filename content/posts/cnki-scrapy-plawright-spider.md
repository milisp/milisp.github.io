+++
title = 'Cnki Scrapy Plawright Spider'
date = 2024-09-28T18:01:30+08:00
draft = true
+++


## 使用 scrapy + playwright 获取知网各省市的所有的期刊信息

## 通过 playwright 

1. 多开标签同时查询多个省市的期刊列表
2. 分析后面每个期刊的详情页面，这个页面不需要 js 就获取 html
3. 点击详情页的投稿获取投稿信息, 分析 xhr 请求，可以用 api
4. 在投稿页面获取补充信息, 分析 xhr 请求，可以用 api

## 与单独使用 playwright 对比

单独使用的优点

1. 可以加载 js
2. 不需要分析请求内容
3. 不需要解密
4. 不用额外设置防屏蔽，比 selenium 更方便

缺点

1. 加载了大量 js css jpg 内容
2. 要等待时间长
3. 多开性能要求高
4. 容易出错
5. 逻辑处理要求高
6. 保存内容要自己设计


## 总结

使用 scrapy + playwright 可以更快更稳定更方便
