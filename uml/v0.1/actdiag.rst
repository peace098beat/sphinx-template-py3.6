###########################
アクティビティ図
###########################

| 試しに、こんな感じのページを
| 作ってみる！


.. actdiag::
   :desctable:

   actdiag {
     write -> convert -> image
   
     lane user {
        label = "User"
        write [label = "Writing reST"];
        image [label = "Get diagram IMAGE"];
     }
     lane actdiag {
        convert [label = "Convert reST to Image"];
     }
   }