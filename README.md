# gimp-vintage

![original](https://github.com/mobody/gimp-vintage/blob/master/orig.jpg "original image") ![vintage](https://github.com/mobody/gimp-vintage/blob/master/vint.jpg "filter applied image")
## plugin

This is a fork of [El Samukos gimp-fu](https://sites.google.com/site/elsamuko/gimp/vintage) script mm1-vintage-look. I added the ability of changing the Bypass opacity.

Place `vintage-look.scm` it in ~/.gimp-2.8/scripts, you will find it then under Filters -> Artistic -> Vintage Look. 

## batch script

Place `batch-vintage.scm` in ~/.gimp-2.8/scripts for calling it through gimp batch:
```
gimp -i -b '(batch-vintage "*.JPG" 17 10 35 TRUE 53)' -b '(gimp-quit TRUE)'
```
Be aware that this overrides the original files.

batch-vintage takes 6 arguments:

+ pattern
+ opacity cyan layer
+ opacity purple layer
+ opacity yellow layer
+ bypass?
+ opacity bypass