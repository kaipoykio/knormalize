knormalize.pl

Is a tool for calculating suboptimal black and white levels for old typewriter written scanned images. And it's used in conjunction 
with Imagemagick's convert command.
It removes some background noise and saturates text so unclear characters become more visible.
Might be useful before doing OCR. My results indicate that this approach is quite promising without the need of extra filtering
or sharpening techniques.

knorm.sh

Is an example of how to use knormalize.pl.

Requirements:

perl5
imagemagick
