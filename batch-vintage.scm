(define (batch-vintage pattern
                        VarCyan
                        VarMagenta
                        VarYellow
                        Overlay
                        VarOverlay)  
  (let* (
          (filelist (cadr (file-glob pattern 1)))
        )
        (while (not (null? filelist))
         (let* (
                  (filename (car filelist))
                  (image (car (gimp-file-load RUN-NONINTERACTIVE
                                            filename filename)))
                  (drawable (car (gimp-image-get-active-layer image)))
                )
                (mm1-vintage-look 
                          image drawable VarCyan VarMagenta VarYellow Overlay VarOverlay)
                (let* (
                        (layer (car (gimp-image-merge-visible-layers image CLIP-TO-IMAGE)))
                      )
                      (gimp-file-save RUN-NONINTERACTIVE
                                image layer filename filename)
                      (gimp-image-delete image)
                )
          )
          (set! filelist (cdr filelist))
        )
  )
)
