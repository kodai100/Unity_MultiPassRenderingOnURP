# Multipass Rendering on Universal Render Pipeline
![thumbnail](https://i.gyazo.com/e9bc43447fa86f682ab5a465c6249ebc.gif)

This unity project is a sample use case of multipass rendering (commonly used in pre-rendering workflow) on Universal Render Pipeline.
I used unity distributed packages only, so you don't have to install third-party packages.

## Master Render Result
![master](https://github.com/kodai100/Unity_MultiPassRenderingOnURP/blob/master/Thumbnails/master.png)

## Normal Pass
OpenGL formatted.
![normal](https://github.com/kodai100/Unity_MultiPassRenderingOnURP/blob/master/Thumbnails/normal.png)

## Depth Pass
![depth](https://github.com/kodai100/Unity_MultiPassRenderingOnURP/blob/master/Thumbnails/depth.png)

Known issue : it works after light baking.

## Character Mask
Isolate "Character" layer.
![chara](https://github.com/kodai100/Unity_MultiPassRenderingOnURP/blob/master/Thumbnails/chara.png)

## All Object Mask
Divide background and objects.
![obj](https://github.com/kodai100/Unity_MultiPassRenderingOnURP/blob/master/Thumbnails/obj.png)