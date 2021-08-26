echo "# demoapp-pipeline-Ejecutado" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M master
git remote add origin https://github.com/gmeringolo/demoapp-pipeline-Ejecutado.git
git push -u origin master