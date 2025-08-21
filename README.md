# oneplus-permanently-change-dpi

这个模块是用来永久修改Oneplus开发者选项里面的最小宽度

这个模块是[KernelSU](https://github.com/tiann/KernelSU)模块

## 用法

在开发者选项里面，尝试最小宽度，找到一个适合自己的宽度。
在 `设置 -> 显示与亮度 -> 屏幕分辨率` 找到自己的屏幕分辨率的宽度。
将 `屏幕分辨率宽度 * 160 / 最小宽度` 作为DENSITY。

例如，适合我的最小宽度是 `515dp` ，屏幕分辨率是 `2376x1080` ，那么DENSITY就是 `1080 * 160 / 515 = 335`

修改 `post-fs-data.sh` 文件的 `DENSITY` 为335，保存。

将 `module.prop` 和 `post-fs-data.sh` 在一起压缩，命名为 `oneplus-permanently-change-dpi.zip` ，然后使用KernelSU加载，重启即可。

注意压缩包结构:
```
oneplus-permanently-change-dpi.zip
├── module.prop
└── post-fs-data.sh
```

也可以使用Release页面的zip包，自行解压修改再压缩。
