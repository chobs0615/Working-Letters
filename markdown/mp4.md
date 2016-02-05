MP4 container
================
本篇主要是用來記憶以及介紹 mp4 幾個重要的 box

[TOC]

****
### box 階層
> moov
> > trak
> > > mdia
> > > > mdhd
> > > > stbl
> > > > > stsd
> > > > > stts
> > > > > stss
> > > > > stsc
> > > > > stsz
> > > > > stco

****
### moov box

****
### trak box

****
### mdia box

****
### mdhd box
- [ ] 說明如何利用 Time scale/Duration 計算播放長度.
- [ ] 說明如何利用 Time scale/Duration + frame number 計算 fps.

****
### stsd box
- [ ] 說如何利用 stsd 知道使用了何種的 codec.

****
### stts box
- [ ] 說明 sample count/sample delta 的關係.

****
### stss box
- [ ] 說明如何知道有幾個 key frame，第幾個 frame 是 key frame.

****
### stsc box
- [ ] 說明如何知道每一個 chunk 有幾個 frame.

****
### stsz box
- [ ] 說明如何知道每一個 frame size.

****
### stco box
- [ ] 說明如何知道有幾個 chunk 和每一個 chunk offset.





