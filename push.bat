@echo off
set TIMESTAMP=%date/_%_%time::=_%
set RESULTS_FILE=results_%TIMESTAMP%.log


date /t > %RESULTS_FILE%

move %RESULTS_FILE% ../../


cd ../../

git config --global user.name "ChanwooPark-GGQ"
git config --global user.email "chanwoo.park@ggq.gg"

git pull
git checkout 'origin/logs'

git add -A
git commit -m "Add Test Logs"
git push
