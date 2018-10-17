###########################
ブロック図
###########################

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