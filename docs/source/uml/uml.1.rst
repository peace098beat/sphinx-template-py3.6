###########################
ユースケース図/シーケンス図
###########################


アクティビティ図
^^^^^^^^^^^^^^^^^

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


ブロック図
^^^^^^^^^^^

| 試しに、こんな感じのページを
| 作ってみる！


.. blockdiag::
   :desctable:

   blockdiag {
     // branching edges to multiple children
     A -> B, C;
   
     // branching edges from multiple parents
     D, E -> F;
   }
   



ネットワーク図
^^^^^^^^^^^^^^

| 試しに、こんな感じのページを
| 作ってみる！


.. nwdiag::
   :desctable:

    nwdiag {
      network dmz {
          address = "210.x.x.x/24"
    
          // set multiple addresses (using comma)
          web01 [address = "210.x.x.1, 210.x.x.20"];
          web02 [address = "210.x.x.2"];
      }
      network internal {
          address = "172.x.x.x/24";
    
          web01 [address = "172.x.x.1"];
          web02 [address = "172.x.x.2"];
          db01;
          db02;
      }
    }




シーケンス図
^^^^^^^^^^^^

| 試しに、こんな感じのページを
| 作ってみる！



.. seqdiag::
   :desctable:

   seqdiag {
     // auto return edge
     A => B [label = "call", return = "return"];
   
     // nested auto return edge
     A => B => C [label = "call", return = "return"];
   
     // nested sequence
     A => B [label = "nested call"]{
        B => C [label = "call 1"];
        B => D [label = "call 2"];
        B => E [label = "call 3"];
     }
   }



(以上)