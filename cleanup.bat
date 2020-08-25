:: Organizes files in directory from which it is run
:: Files are stored in folders according to type, .bat scripts are ignored

@echo off
for %%G in (*.jpg *.jpeg *.png *.gif *.bmp *.jfif) do (
	if not exist Pictures mkdir Pictures
	move "%%G" "%cd%\Pictures"
)

for %%G in (*.doc* *.pdf *.txt *.ppt* *.xls* *.csv *.odt) do (
	if not exist Docs mkdir Docs
	move "%%G" "%cd%\Docs"
)

for %%G in (*.mp3 *.ogg *.flac *.aac *.wav) do (
	if not exist Music mkdir Music
	move "%%G" "%cd%\Music"
)

for %%G in (*.zip *.rar *.7z) do (
	if not exist Compressed mkdir Compressed
	move "%%G" "%cd%\Compressed"
)

for %%G in (*.msi) do (
	if not exist Installers mkdir Installers
	move "%%G" "%cd%\Installers"
)

for %%G in (*.*) do (	
	if not exist Misc mkdir Misc
	if /I not "%%~xG"==".bat" move "%%G" "%cd%\Misc"
)