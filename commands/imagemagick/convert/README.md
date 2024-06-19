- convert `.webp` image to `.jpg`
  ```bash
  convert new_york.webp old_york.jpg
  ```
- rotate image in degrees
  ```bash
  convert old_york.jpg -rotate 90 right_york.jpg
  ```
- Several images into one single PDF
    - ```bash
      $ ls
      IMG_20240415_121442.jpg  IMG_20240415_122205_177.jpg  IMG_20240415_214955.jpg
      $ convert *.jpg output.pdf
      convert-im6.q16: attempt to perform an operation not allowed by the security policy `PDF' @ error/constitute.c/IsCoderAuthorized/426.
(base) phunc20@durian:~/Downloads/frigo_tax$ cd /etc/ImageMagick-6/
(base) phunc20@durian:/etc/ImageMagick-6$ ls
coder.xml      log.xml    policy.xml              type-apple.xml        type-urw-base35.xml
colors.xml     magic.xml  quantization-table.xml  type-dejavu.xml       type-windows.xml
delegates.xml  mime.xml   thresholds.xml          type-ghostscript.xml  type.xml
(base) phunc20@durian:/etc/ImageMagick-6$ cp policy.xml policy.xml.backup
      $ ls
      IMG_20240415_121442.jpg  IMG_20240415_122205_177.jpg  IMG_20240415_214955.jpg  output.pdf
      ```
    - Change the line from
    ```
<policy domain="coder" rights="none" pattern="PDF" />
    ```
    to 
    ```
<policy domain="coder" rights="read | write" pattern="PDF" />
    ```



