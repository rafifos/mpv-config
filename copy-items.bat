set MpvFolder=..
set SourceFolder=
set TargetFolder=.
set FontsFolder=%TargetFolder%\fonts
set ScriptOptsFolder=%TargetFolder%\script-opts
set ScriptsFolder=%TargetFolder%\scripts
set ShadersFolder=%TargetFolder%\shaders

@REM mpv scripts
set SourceFolder=.\external\mpv\TOOLS\lua

copy /Y "%SourceFolder%\ao-null-reload.lua" "%ScriptsFolder%\ao-null-reload.lua"
copy /Y "%SourceFolder%\pause-when-minimize.lua" "%ScriptsFolder%\pause-when-minimize.lua"

@REM mpv-discordRPC
set SourceFolder=.\external\mpv-discordRPC

copy /Y "%SourceFolder%\mpv-discordRPC\catalogs.lua" "%ScriptsFolder%\mpv-discordRPC\catalogs.lua"
copy /Y "%SourceFolder%\mpv-discordRPC\lua-discordRPC.lua" "%ScriptsFolder%\mpv-discordRPC\lua-discordRPC.lua"
copy /Y "%SourceFolder%\mpv-discordRPC\main.lua" "%ScriptsFolder%\mpv-discordRPC\main.lua"
copy /Y "%SourceFolder%\mpv-discordRPC\python-pypresence.py" "%ScriptsFolder%\mpv-discordRPC\python-pypresence.py"

start "Extracting discordRPC..." "%SourceFolder%\unzip.exe" "%SourceFolder%\discord-rpc-win.zip"

if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
  copy /Y "%TargetFolder%\discord-rpc\win64-dynamic\bin\discord-rpc.dll" "%MpvFolder%"
) else (
  copy /Y "%TargetFolder%\discord-rpc\win32-dynamic\bin\discord-rpc.dll" "%MpvFolder%"
)

rmdir /S /Q "%TargetFolder%\discord-rpc"

@REM thumbfast
set SourceFolder=.\external\mpv-discordRPC

copy /Y "%SourceFolder%\thumbfast.lua" "%ScriptsFolder%\thumbfast.lua"
@REM copy /Y "%SourceFolder%\thumbfast.conf" "%ScriptOptsFolder%\thumbfast.conf"

@REM uosc
set SourceFolder=.\external\uosc

copy /Y "%SourceFolder%\fonts\uosc_icons.otf" "%FontsFolder%\uosc_icons.otf"
copy /Y "%SourceFolder%\fonts\uosc_textures.ttf" "%FontsFolder%\uosc_textures.ttf"
copy /Y "%SourceFolder%\scripts\uosc_shared\elements\BufferingIndicator.lua" "%ScriptsFolder%\uosc_shared\elements\BufferingIndicator.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\elements\Button.lua" "%ScriptsFolder%\uosc_shared\elements\Button.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\elements\Controls.lua" "%ScriptsFolder%\uosc_shared\elements\Controls.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\elements\Curtain.lua" "%ScriptsFolder%\uosc_shared\elements\Curtain.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\elements\CycleButton.lua" "%ScriptsFolder%\uosc_shared\elements\CycleButton.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\elements\Element.lua" "%ScriptsFolder%\uosc_shared\elements\Element.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\elements\Elements.lua" "%ScriptsFolder%\uosc_shared\elements\Elements.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\elements\Menu.lua" "%ScriptsFolder%\uosc_shared\elements\Menu.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\elements\PauseIndicator.lua" "%ScriptsFolder%\uosc_shared\elements\PauseIndicator.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\elements\Speed.lua" "%ScriptsFolder%\uosc_shared\elements\Speed.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\elements\Timeline.lua" "%ScriptsFolder%\uosc_shared\elements\Timeline.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\elements\TopBar.lua" "%ScriptsFolder%\uosc_shared\elements\TopBar.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\elements\Volume.lua" "%ScriptsFolder%\uosc_shared\elements\Volume.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\elements\WindowBorder.lua" "%ScriptsFolder%\uosc_shared\elements\WindowBorder.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\lib\ass.lua" "%ScriptsFolder%\uosc_shared\lib\ass.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\lib\intl.lua" "%ScriptsFolder%\uosc_shared\lib\intl.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\lib\menus.lua" "%ScriptsFolder%\uosc_shared\lib\menus.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\lib\std.lua" "%ScriptsFolder%\uosc_shared\lib\std.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\lib\text.lua" "%ScriptsFolder%\uosc_shared\lib\text.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\lib\utils.lua" "%ScriptsFolder%\uosc_shared\lib\utils.lua"
copy /Y "%SourceFolder%\scripts\uosc_shared\main.lua" "%ScriptsFolder%\uosc_shared\main.lua"
copy /Y "%SourceFolder%\scripts\uosc.lua" "%ScriptsFolder%\uosc.lua"
@REM copy /Y "%SourceFolder%\script-opts\uosc.conf" "%ScriptOptsFolder%\uosc.conf"

@REM Anime4K
set SourceFolder=.\external\Anime4K

copy /Y "%SourceFolder%\glsl\Deblur\Anime4K_Deblur_DoG.glsl" "%ShadersFolder%\Anime4K\Deblur_DoG.glsl"
copy /Y "%SourceFolder%\glsl\Deblur\Anime4K_Deblur_Original.glsl" "%ShadersFolder%\Anime4K\Deblur_Original.glsl"
copy /Y "%SourceFolder%\glsl\Denoise\Anime4K_Denoise_Bilateral_Mean.glsl" "%ShadersFolder%\Anime4K\Denoise_Bilateral_Mean.glsl"
copy /Y "%SourceFolder%\glsl\Denoise\Anime4K_Denoise_Bilateral_Median.glsl" "%ShadersFolder%\Anime4K\Denoise_Bilateral_Median.glsl"
copy /Y "%SourceFolder%\glsl\Denoise\Anime4K_Denoise_Bilateral_Mode.glsl" "%ShadersFolder%\Anime4K\Denoise_Bilateral_Mode.glsl"
copy /Y "%SourceFolder%\glsl\Experimental-Effects\Anime4K_Darken_Fast.glsl" "%ShadersFolder%\Anime4K\Darken_Fast.glsl"
copy /Y "%SourceFolder%\glsl\Experimental-Effects\Anime4K_Darken_HQ.glsl" "%ShadersFolder%\Anime4K\Darken_HQ.glsl"
copy /Y "%SourceFolder%\glsl\Experimental-Effects\Anime4K_Darken_VeryFast.glsl" "%ShadersFolder%\Anime4K\Darken_VeryFast.glsl"
copy /Y "%SourceFolder%\glsl\Experimental-Effects\Anime4K_Thin_Fast.glsl" "%ShadersFolder%\Anime4K\Thin_Fast.glsl"
copy /Y "%SourceFolder%\glsl\Experimental-Effects\Anime4K_Thin_HQ.glsl" "%ShadersFolder%\Anime4K\Thin_HQ.glsl"
copy /Y "%SourceFolder%\glsl\Experimental-Effects\Anime4K_Thin_VeryFast.glsl" "%ShadersFolder%\Anime4K\Thin_VeryFast.glsl"
copy /Y "%SourceFolder%\glsl\Restore\Anime4K_Clamp_Highlights.glsl" "%ShadersFolder%\Anime4K\Clamp_Highlights.glsl"
copy /Y "%SourceFolder%\glsl\Restore\Anime4K_Restore_CNN_L.glsl" "%ShadersFolder%\Anime4K\Restore_CNN_L.glsl"
copy /Y "%SourceFolder%\glsl\Restore\Anime4K_Restore_CNN_M.glsl" "%ShadersFolder%\Anime4K\Restore_CNN_M.glsl"
copy /Y "%SourceFolder%\glsl\Restore\Anime4K_Restore_CNN_S.glsl" "%ShadersFolder%\Anime4K\Restore_CNN_S.glsl"
copy /Y "%SourceFolder%\glsl\Restore\Anime4K_Restore_CNN_Soft_L.glsl" "%ShadersFolder%\Anime4K\Restore_CNN_Soft_L.glsl"
copy /Y "%SourceFolder%\glsl\Restore\Anime4K_Restore_CNN_Soft_M.glsl" "%ShadersFolder%\Anime4K\Restore_CNN_Soft_M.glsl"
copy /Y "%SourceFolder%\glsl\Restore\Anime4K_Restore_CNN_Soft_S.glsl" "%ShadersFolder%\Anime4K\Restore_CNN_Soft_S.glsl"
copy /Y "%SourceFolder%\glsl\Restore\Anime4K_Restore_CNN_Soft_UL.glsl" "%ShadersFolder%\Anime4K\Restore_CNN_Soft_UL.glsl"
copy /Y "%SourceFolder%\glsl\Restore\Anime4K_Restore_CNN_Soft_VL.glsl" "%ShadersFolder%\Anime4K\Restore_CNN_Soft_VL.glsl"
copy /Y "%SourceFolder%\glsl\Restore\Anime4K_Restore_CNN_UL.glsl" "%ShadersFolder%\Anime4K\Restore_CNN_UL.glsl"
copy /Y "%SourceFolder%\glsl\Restore\Anime4K_Restore_CNN_VL.glsl" "%ShadersFolder%\Anime4K\Restore_CNN_VL.glsl"
copy /Y "%SourceFolder%\glsl\Upscale\Anime4K_AutoDownscalePre_x2.glsl" "%ShadersFolder%\Anime4K\AutoDownscalePre_x2.glsl"
copy /Y "%SourceFolder%\glsl\Upscale\Anime4K_AutoDownscalePre_x4.glsl" "%ShadersFolder%\Anime4K\AutoDownscalePre_x4.glsl"
copy /Y "%SourceFolder%\glsl\Upscale\Anime4K_Upscale_CNN_x2_L.glsl" "%ShadersFolder%\Anime4K\Upscale_CNN_x2_L.glsl"
copy /Y "%SourceFolder%\glsl\Upscale\Anime4K_Upscale_CNN_x2_M.glsl" "%ShadersFolder%\Anime4K\Upscale_CNN_x2_M.glsl"
copy /Y "%SourceFolder%\glsl\Upscale\Anime4K_Upscale_CNN_x2_S.glsl" "%ShadersFolder%\Anime4K\Upscale_CNN_x2_S.glsl"
copy /Y "%SourceFolder%\glsl\Upscale\Anime4K_Upscale_CNN_x2_UL.glsl" "%ShadersFolder%\Anime4K\Upscale_CNN_x2_UL.glsl"
copy /Y "%SourceFolder%\glsl\Upscale\Anime4K_Upscale_CNN_x2_VL.glsl" "%ShadersFolder%\Anime4K\Upscale_CNN_x2_VL.glsl"
copy /Y "%SourceFolder%\glsl\Upscale\Anime4K_Upscale_Deblur_DoG_x2.glsl" "%ShadersFolder%\Anime4K\Upscale_Deblur_DoG_x2.glsl"
copy /Y "%SourceFolder%\glsl\Upscale\Anime4K_Upscale_Deblur_Original_x2.glsl" "%ShadersFolder%\Anime4K\Upscale_Deblur_Original_x2.glsl"
copy /Y "%SourceFolder%\glsl\Upscale\Anime4K_Upscale_DoG_x2.glsl" "%ShadersFolder%\Anime4K\Upscale_DoG_x2.glsl"
copy /Y "%SourceFolder%\glsl\Upscale\Anime4K_Upscale_DTD_x2.glsl" "%ShadersFolder%\Anime4K\Upscale_DTD_x2.glsl"
copy /Y "%SourceFolder%\glsl\Upscale\Anime4K_Upscale_Original_x2.glsl" "%ShadersFolder%\Anime4K\Upscale_Original_x2.glsl"
copy /Y "%SourceFolder%\glsl\Upscale+Denoise\Anime4K_Upscale_Denoise_CNN_x2_L.glsl" "%ShadersFolder%\Anime4K\Upscale_Denoise_CNN_x2_L.glsl"
copy /Y "%SourceFolder%\glsl\Upscale+Denoise\Anime4K_Upscale_Denoise_CNN_x2_M.glsl" "%ShadersFolder%\Anime4K\Upscale_Denoise_CNN_x2_M.glsl"
copy /Y "%SourceFolder%\glsl\Upscale+Denoise\Anime4K_Upscale_Denoise_CNN_x2_S.glsl" "%ShadersFolder%\Anime4K\Upscale_Denoise_CNN_x2_S.glsl"
copy /Y "%SourceFolder%\glsl\Upscale+Denoise\Anime4K_Upscale_Denoise_CNN_x2_UL.glsl" "%ShadersFolder%\Anime4K\Upscale_Denoise_CNN_x2_UL.glsl"
copy /Y "%SourceFolder%\glsl\Upscale+Denoise\Anime4K_Upscale_Denoise_CNN_x2_VL.glsl" "%ShadersFolder%\Anime4K\Upscale_Denoise_CNN_x2_VL.glsl"

pause
