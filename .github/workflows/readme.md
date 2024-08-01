# Github自动同步Gitee

利用用github的Action功能，在github的服务器上，使用gitee的本地密钥和私人令牌从github仓库拉取资源推送到gitee，基于[Yikun/hub-mirror-action](https://github.com/Yikun/hub-mirror-action)仓库的功能。

# 操作步骤

1、fork自动脚本仓库到自己账号：[Yikun/hub-mirror-action](https://github.com/Yikun/hub-mirror-action)

2、在gitee账号中先导入github上的本仓库，并且在gitee账号的安全设置中生成**私人令牌**并记下，同时需保证gitee账号的本地电脑的SSH公钥已经添加好。

3、在本仓库创建文件夹和文件:  .github\workflows\main.yml

4、编辑main.yml设定Action自动执行的规则（如下脚本为当本仓库master分支有新推送时执行），其中有引用三个不能公开的变量需要在下一步设置。

```
name: git2gitee
on:
  push:
    branches:
      - master
jobs:
  run:
    name: Sync-GitHub-to-Gitee
    runs-on: ubuntu-latest
    steps:
    - name: Mirror the Github repos to Gitee.
      uses: liliang9693/hub-mirror-action@master
      with:
        src: 'github/UNIHIKER/${{ github.repository }}'
        dst: 'gitee/${{ secrets.GITEE_USER }}'
        dst_key: ${{ secrets.GITEE_PRIVATE_KEY }}
        dst_token: ${{ secrets.GITEE_TOKEN }}
        account_type: org
        timeout: '1h'
        force_update: true
```

5、在github的本仓库的**Settings**中打开**Secrets and variables**>**Actions**>**Repository secrets**里面**New repository secret**中新增三个secret：

- `GITEE_PRIVATE_KEY`：填写gitee上SSH公钥对应的本地计算机生成的SSH私钥（通常是 `id_rsa` 文件的内容）。
- `GITEE_TOKEN`：填写Gitee上生成的私人令牌（第2步生成的）。
- `GITEE_USER`：这里填写Gitee账号名。

6、推送main.yml到仓库中。

7、后续github本仓库有更新，就会自动同步到gitee的同名仓库。