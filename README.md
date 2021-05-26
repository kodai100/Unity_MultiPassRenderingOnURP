# Multipass Rendering on Universal Render Pipeline
![thumbnail](https://github.com/kodai100/Unity_MultiPassRenderingOnURP/blob/master/Thumbnails/thumbnail.png)

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

# Technique
## Create URP Asset and Forward Renderer Datas for each pass
![urp](https://github.com/kodai100/Unity_MultiPassRenderingOnURP/blob/master/Thumbnails/tech/urp.png)

## Add Render Object Renderer Feature to each Forward Renderer Data
I used Render Object renderer feature to replace specific objects' (layers') material.

See : https://learn.unity.com/tutorial/custom-render-passes-with-urp

![srp-render-object](https://github.com/kodai100/Unity_MultiPassRenderingOnURP/blob/master/Thumbnails/tech/srp-render-object.png)

## Universal Render Pipeline Asset
Add previous Forward Renderer Datas to Renderer List

![urp-asset](https://github.com/kodai100/Unity_MultiPassRenderingOnURP/blob/master/Thumbnails/tech/urp-asset.png)

## Camera
Set Forward Renderer Data you want to Rendering > Renderer

![camera](https://github.com/kodai100/Unity_MultiPassRenderingOnURP/blob/master/Thumbnails/tech/camera.png)