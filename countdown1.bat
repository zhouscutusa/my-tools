chcp 65001
@echo off
:: 切换到脚本所在目录
cd /d %~dp0
set /p countDownMin=倒计时时长(分钟):
set /p reminderContent=提醒内容:
set /a countDownSecond=%countDownMin%*60
timeout /nobreak /t %countDownSecond%
:: start mshta vbscript:createobject("wscript.shell").run("""%~nx0"" h",0)(window.close)&&exit
:: :begin
wscript "%~dp0reminder.vbs" "时间到" "%reminderContent%"
