#!/usr/bin/env sh
USERNAME=huguanData
# REPO=dmx-tool-help

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# cp -r ./docs ./temp
# cp -r README.md ./docs/.vuepress/dist
# mv temp ./docs/.vuepress/dist
# mv ./docs/.vuepress/dist/temp ./docs/.vuepress/dist/docs
# rm -rf ./docs/.vuepress/dist/docs/.vuepress/dist
mv ./docs/.vuepress/dist ./

# 进入生成的文件夹
# cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

# 配合git的.ssh文件夹下的config
# git remote add origin "git@huguanData:huguanData/huguanData.github.io"
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master
# git push -f git@huguanData:huguanData/huguanData.github.io.git master
git push -f git@huguanData:${USERNAME}/${USERNAME}.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# https://huguanData.github.io/dmx-tool-help
# git push -f git@huguanData:huguanData/dmx-tool-help.git master:gh-pages
# git push -f git@huguanData:${USERNAME}/${REPO}.git master:gh-pages

# cd -

#！/bin/sh

rm -rm ./dist

exec /bin/bash