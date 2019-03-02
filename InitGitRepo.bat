@echo off
set /p repotitle="Repo Name: "

set /p username="Github username: "

git init

copy %~dp0\templates\Readme_template.md %cd%\README.md

replace "Project Title" repotitle -- %cd%\README.md

git add README.md


copy %~dp0\templates\Contributing_template.md %cd%\Contributing.md

git add Contributing.md

copy %~dp0\templates\License_template.md %cd%\LICENSE.md

git add LICENSE.md

git commit -m "Initialize Git Repo"
@echo on
git remote add origin ("https://github.com/"%username%"/"%repotitle%".git")

git remote -v



