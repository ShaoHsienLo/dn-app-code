//deploy.sh
set -e
npm run build
cd dist
git init
git add -A
git commit -m 'update 2024-12-17 evnets'
git push -f https://github.com/ShaoHsienLo/dn-app.git master:gh-pages
cd -