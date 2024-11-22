//deploy.sh
set -e
npm run build
cd dist
git init
git add -A
git commit -m 'update current activities hyperlinks'
git push -f https://github.com/ShaoHsienLo/dn-app.git master:gh-pages
cd -