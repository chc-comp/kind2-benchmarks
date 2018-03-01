; Statically linked libraries
; MoreThanOneSec
(declare-var MoreThanOneSec.X Bool)
(declare-var MoreThanOneSec.Y Bool)
(declare-var MoreThanOneSec.__MoreThanOneSec_2_c Bool)
(declare-var MoreThanOneSec.ni_21._arrow._first_c Bool)
(declare-var MoreThanOneSec.__MoreThanOneSec_2_m Bool)
(declare-var MoreThanOneSec.ni_21._arrow._first_m Bool)
(declare-var MoreThanOneSec.__MoreThanOneSec_2_x Bool)
(declare-var MoreThanOneSec.ni_21._arrow._first_x Bool)
(declare-var MoreThanOneSec.__MoreThanOneSec_1 Bool)
(declare-rel MoreThanOneSec_reset (Bool Bool Bool Bool))
(declare-rel MoreThanOneSec_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= MoreThanOneSec.__MoreThanOneSec_2_m MoreThanOneSec.__MoreThanOneSec_2_c)
       (= MoreThanOneSec.ni_21._arrow._first_m true)
  )
  (MoreThanOneSec_reset MoreThanOneSec.__MoreThanOneSec_2_c
                        MoreThanOneSec.ni_21._arrow._first_c
                        MoreThanOneSec.__MoreThanOneSec_2_m
                        MoreThanOneSec.ni_21._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= MoreThanOneSec.ni_21._arrow._first_m MoreThanOneSec.ni_21._arrow._first_c)
       (and (= MoreThanOneSec.__MoreThanOneSec_1 (ite MoreThanOneSec.ni_21._arrow._first_m true false))
            (= MoreThanOneSec.ni_21._arrow._first_x false))
       (and (or (not (= MoreThanOneSec.__MoreThanOneSec_1 true))
               (= MoreThanOneSec.Y false))
            (or (not (= MoreThanOneSec.__MoreThanOneSec_1 false))
               (= MoreThanOneSec.Y (and MoreThanOneSec.__MoreThanOneSec_2_c MoreThanOneSec.X)))
       )
       (= MoreThanOneSec.__MoreThanOneSec_2_x MoreThanOneSec.X)
       )
  (MoreThanOneSec_step MoreThanOneSec.X
                       MoreThanOneSec.Y
                       MoreThanOneSec.__MoreThanOneSec_2_c
                       MoreThanOneSec.ni_21._arrow._first_c
                       MoreThanOneSec.__MoreThanOneSec_2_x
                       MoreThanOneSec.ni_21._arrow._first_x)
))

; MoreThanTwoSec
(declare-var MoreThanTwoSec.X Bool)
(declare-var MoreThanTwoSec.Y Bool)
(declare-var MoreThanTwoSec.__MoreThanTwoSec_2_c Bool)
(declare-var MoreThanTwoSec.__MoreThanTwoSec_4_c Bool)
(declare-var MoreThanTwoSec.ni_20._arrow._first_c Bool)
(declare-var MoreThanTwoSec.__MoreThanTwoSec_2_m Bool)
(declare-var MoreThanTwoSec.__MoreThanTwoSec_4_m Bool)
(declare-var MoreThanTwoSec.ni_20._arrow._first_m Bool)
(declare-var MoreThanTwoSec.__MoreThanTwoSec_2_x Bool)
(declare-var MoreThanTwoSec.__MoreThanTwoSec_4_x Bool)
(declare-var MoreThanTwoSec.ni_20._arrow._first_x Bool)
(declare-var MoreThanTwoSec.__MoreThanTwoSec_1 Bool)
(declare-var MoreThanTwoSec.__MoreThanTwoSec_3 Bool)
(declare-rel MoreThanTwoSec_reset (Bool Bool Bool Bool Bool Bool))
(declare-rel MoreThanTwoSec_step (Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= MoreThanTwoSec.__MoreThanTwoSec_2_m MoreThanTwoSec.__MoreThanTwoSec_2_c)
       (= MoreThanTwoSec.__MoreThanTwoSec_4_m MoreThanTwoSec.__MoreThanTwoSec_4_c)
       (= MoreThanTwoSec.ni_20._arrow._first_m true)
  )
  (MoreThanTwoSec_reset MoreThanTwoSec.__MoreThanTwoSec_2_c
                        MoreThanTwoSec.__MoreThanTwoSec_4_c
                        MoreThanTwoSec.ni_20._arrow._first_c
                        MoreThanTwoSec.__MoreThanTwoSec_2_m
                        MoreThanTwoSec.__MoreThanTwoSec_4_m
                        MoreThanTwoSec.ni_20._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= MoreThanTwoSec.ni_20._arrow._first_m MoreThanTwoSec.ni_20._arrow._first_c)
       (and (= MoreThanTwoSec.__MoreThanTwoSec_1 (ite MoreThanTwoSec.ni_20._arrow._first_m true false))
            (= MoreThanTwoSec.ni_20._arrow._first_x false))
       (and (or (not (= MoreThanTwoSec.__MoreThanTwoSec_1 false))
               (and (= MoreThanTwoSec.__MoreThanTwoSec_3 (and MoreThanTwoSec.__MoreThanTwoSec_2_c MoreThanTwoSec.X))
                    (= MoreThanTwoSec.Y (and MoreThanTwoSec.__MoreThanTwoSec_4_c MoreThanTwoSec.X))
                    ))
            (or (not (= MoreThanTwoSec.__MoreThanTwoSec_1 true))
               (and (= MoreThanTwoSec.__MoreThanTwoSec_3 false)
                    (= MoreThanTwoSec.Y false)
                    ))
       )
       (= MoreThanTwoSec.__MoreThanTwoSec_4_x MoreThanTwoSec.__MoreThanTwoSec_3)
       (= MoreThanTwoSec.__MoreThanTwoSec_2_x MoreThanTwoSec.X)
       )
  (MoreThanTwoSec_step MoreThanTwoSec.X
                       MoreThanTwoSec.Y
                       MoreThanTwoSec.__MoreThanTwoSec_2_c
                       MoreThanTwoSec.__MoreThanTwoSec_4_c
                       MoreThanTwoSec.ni_20._arrow._first_c
                       MoreThanTwoSec.__MoreThanTwoSec_2_x
                       MoreThanTwoSec.__MoreThanTwoSec_4_x
                       MoreThanTwoSec.ni_20._arrow._first_x)
))

; AtLeastOnceSince
(declare-var AtLeastOnceSince.X Bool)
(declare-var AtLeastOnceSince.Y Bool)
(declare-var AtLeastOnceSince.XsinceY Bool)
(declare-var AtLeastOnceSince.__AtLeastOnceSince_2_c Bool)
(declare-var AtLeastOnceSince.ni_19._arrow._first_c Bool)
(declare-var AtLeastOnceSince.__AtLeastOnceSince_2_m Bool)
(declare-var AtLeastOnceSince.ni_19._arrow._first_m Bool)
(declare-var AtLeastOnceSince.__AtLeastOnceSince_2_x Bool)
(declare-var AtLeastOnceSince.ni_19._arrow._first_x Bool)
(declare-var AtLeastOnceSince.__AtLeastOnceSince_1 Bool)
(declare-var AtLeastOnceSince.__AtLeastOnceSince_3 Bool)
(declare-rel AtLeastOnceSince_reset (Bool Bool Bool Bool))
(declare-rel AtLeastOnceSince_step (Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= AtLeastOnceSince.__AtLeastOnceSince_2_m AtLeastOnceSince.__AtLeastOnceSince_2_c)
       (= AtLeastOnceSince.ni_19._arrow._first_m true)
  )
  (AtLeastOnceSince_reset AtLeastOnceSince.__AtLeastOnceSince_2_c
                          AtLeastOnceSince.ni_19._arrow._first_c
                          AtLeastOnceSince.__AtLeastOnceSince_2_m
                          AtLeastOnceSince.ni_19._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= AtLeastOnceSince.ni_19._arrow._first_m AtLeastOnceSince.ni_19._arrow._first_c)
       (and (= AtLeastOnceSince.__AtLeastOnceSince_1 (ite AtLeastOnceSince.ni_19._arrow._first_m true false))
            (= AtLeastOnceSince.ni_19._arrow._first_x false))
       (and (or (not (= AtLeastOnceSince.__AtLeastOnceSince_1 true))
               (= AtLeastOnceSince.__AtLeastOnceSince_3 true))
            (or (not (= AtLeastOnceSince.__AtLeastOnceSince_1 false))
               (= AtLeastOnceSince.__AtLeastOnceSince_3 (or AtLeastOnceSince.X AtLeastOnceSince.__AtLeastOnceSince_2_c)))
       )
       (and (or (not (= AtLeastOnceSince.Y true))
               (= AtLeastOnceSince.XsinceY AtLeastOnceSince.X))
            (or (not (= AtLeastOnceSince.Y false))
               (= AtLeastOnceSince.XsinceY AtLeastOnceSince.__AtLeastOnceSince_3))
       )
       (= AtLeastOnceSince.__AtLeastOnceSince_2_x AtLeastOnceSince.XsinceY)
       )
  (AtLeastOnceSince_step AtLeastOnceSince.X
                         AtLeastOnceSince.Y
                         AtLeastOnceSince.XsinceY
                         AtLeastOnceSince.__AtLeastOnceSince_2_c
                         AtLeastOnceSince.ni_19._arrow._first_c
                         AtLeastOnceSince.__AtLeastOnceSince_2_x
                         AtLeastOnceSince.ni_19._arrow._first_x)
))

; PosEdge
(declare-var PosEdge.X Bool)
(declare-var PosEdge.Y Bool)
(declare-var PosEdge.__PosEdge_2_c Bool)
(declare-var PosEdge.ni_18._arrow._first_c Bool)
(declare-var PosEdge.__PosEdge_2_m Bool)
(declare-var PosEdge.ni_18._arrow._first_m Bool)
(declare-var PosEdge.__PosEdge_2_x Bool)
(declare-var PosEdge.ni_18._arrow._first_x Bool)
(declare-var PosEdge.__PosEdge_1 Bool)
(declare-rel PosEdge_reset (Bool Bool Bool Bool))
(declare-rel PosEdge_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= PosEdge.__PosEdge_2_m PosEdge.__PosEdge_2_c)
       (= PosEdge.ni_18._arrow._first_m true)
  )
  (PosEdge_reset PosEdge.__PosEdge_2_c
                 PosEdge.ni_18._arrow._first_c
                 PosEdge.__PosEdge_2_m
                 PosEdge.ni_18._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= PosEdge.ni_18._arrow._first_m PosEdge.ni_18._arrow._first_c)
       (and (= PosEdge.__PosEdge_1 (ite PosEdge.ni_18._arrow._first_m true false))
            (= PosEdge.ni_18._arrow._first_x false))
       (and (or (not (= PosEdge.__PosEdge_1 true))
               (= PosEdge.Y false))
            (or (not (= PosEdge.__PosEdge_1 false))
               (= PosEdge.Y (or PosEdge.X (not PosEdge.__PosEdge_2_c))))
       )
       (= PosEdge.__PosEdge_2_x PosEdge.X)
       )
  (PosEdge_step PosEdge.X
                PosEdge.Y
                PosEdge.__PosEdge_2_c
                PosEdge.ni_18._arrow._first_c
                PosEdge.__PosEdge_2_x
                PosEdge.ni_18._arrow._first_x)
))

; one_button
(declare-var one_button.ccseti Bool)
(declare-var one_button.ccsetd Bool)
(declare-var one_button.ccr Bool)
(declare-var one_button.ob Bool)
(declare-rel one_button_fun (Bool Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (= one_button.ob (or (or (and (and one_button.ccseti (not one_button.ccsetd)) (not one_button.ccr)) (and (and (not one_button.ccseti) one_button.ccsetd) (not one_button.ccr))) (and (and (not one_button.ccseti) (not one_button.ccsetd)) one_button.ccr)))
  (one_button_fun one_button.ccseti one_button.ccsetd one_button.ccr one_button.ob)
))

; prev_no_button
(declare-var prev_no_button.ccseti Bool)
(declare-var prev_no_button.ccsetd Bool)
(declare-var prev_no_button.ccr Bool)
(declare-var prev_no_button.pnb Bool)
(declare-var prev_no_button.__prev_no_button_2_c Bool)
(declare-var prev_no_button.ni_17._arrow._first_c Bool)
(declare-var prev_no_button.__prev_no_button_2_m Bool)
(declare-var prev_no_button.ni_17._arrow._first_m Bool)
(declare-var prev_no_button.__prev_no_button_2_x Bool)
(declare-var prev_no_button.ni_17._arrow._first_x Bool)
(declare-var prev_no_button.__prev_no_button_1 Bool)
(declare-rel prev_no_button_reset (Bool Bool Bool Bool))
(declare-rel prev_no_button_step (Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= prev_no_button.__prev_no_button_2_m prev_no_button.__prev_no_button_2_c)
       (= prev_no_button.ni_17._arrow._first_m true)
  )
  (prev_no_button_reset prev_no_button.__prev_no_button_2_c
                        prev_no_button.ni_17._arrow._first_c
                        prev_no_button.__prev_no_button_2_m
                        prev_no_button.ni_17._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= prev_no_button.ni_17._arrow._first_m prev_no_button.ni_17._arrow._first_c)
       (and (= prev_no_button.__prev_no_button_1 (ite prev_no_button.ni_17._arrow._first_m true false))
            (= prev_no_button.ni_17._arrow._first_x false))
       (and (or (not (= prev_no_button.__prev_no_button_1 true))
               (= prev_no_button.pnb true))
            (or (not (= prev_no_button.__prev_no_button_1 false))
               (= prev_no_button.pnb prev_no_button.__prev_no_button_2_c))
       )
       (= prev_no_button.__prev_no_button_2_x (and (and (not prev_no_button.ccseti) (not prev_no_button.ccsetd)) (not prev_no_button.ccr)))
       )
  (prev_no_button_step prev_no_button.ccseti
                       prev_no_button.ccsetd
                       prev_no_button.ccr
                       prev_no_button.pnb
                       prev_no_button.__prev_no_button_2_c
                       prev_no_button.ni_17._arrow._first_c
                       prev_no_button.__prev_no_button_2_x
                       prev_no_button.ni_17._arrow._first_x)
))

; Edge
(declare-var Edge.X Bool)
(declare-var Edge.Y Bool)
(declare-var Edge.__Edge_2_c Bool)
(declare-var Edge.ni_16._arrow._first_c Bool)
(declare-var Edge.__Edge_2_m Bool)
(declare-var Edge.ni_16._arrow._first_m Bool)
(declare-var Edge.__Edge_2_x Bool)
(declare-var Edge.ni_16._arrow._first_x Bool)
(declare-var Edge.__Edge_1 Bool)
(declare-rel Edge_reset (Bool Bool Bool Bool))
(declare-rel Edge_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= Edge.__Edge_2_m Edge.__Edge_2_c)
       (= Edge.ni_16._arrow._first_m true)
  )
  (Edge_reset Edge.__Edge_2_c
              Edge.ni_16._arrow._first_c
              Edge.__Edge_2_m
              Edge.ni_16._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Edge.ni_16._arrow._first_m Edge.ni_16._arrow._first_c)(and (= Edge.__Edge_1 (ite Edge.ni_16._arrow._first_m true false))
                                                                    (= Edge.ni_16._arrow._first_x false))
       (and (or (not (= Edge.__Edge_1 true))
               (= Edge.Y false))
            (or (not (= Edge.__Edge_1 false))
               (= Edge.Y (or (or Edge.X (not Edge.__Edge_2_c)) (and (not Edge.X) Edge.__Edge_2_c))))
       )
       (= Edge.__Edge_2_x Edge.X)
       )
  (Edge_step Edge.X
             Edge.Y
             Edge.__Edge_2_c
             Edge.ni_16._arrow._first_c
             Edge.__Edge_2_x
             Edge.ni_16._arrow._first_x)
))

; cc_allowed
(declare-var cc_allowed.ccont Bool)
(declare-var cc_allowed.igsw Bool)
(declare-var cc_allowed.bpa Bool)
(declare-var cc_allowed.cccanc Bool)
(declare-var cc_allowed.battok Bool)
(declare-var cc_allowed.gearok Bool)
(declare-var cc_allowed.qfok Bool)
(declare-var cc_allowed.sdok Bool)
(declare-var cc_allowed.accok Bool)
(declare-var cc_allowed.vs Int)
(declare-var cc_allowed.ccall Bool)
(declare-var cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c Bool)
(declare-var cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c Bool)
(declare-var cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c Bool)
(declare-var cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c Bool)
(declare-var cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c Bool)
(declare-var cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m Bool)
(declare-var cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m Bool)
(declare-var cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m Bool)
(declare-var cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m Bool)
(declare-var cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m Bool)
(declare-var cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_x Bool)
(declare-var cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_x Bool)
(declare-var cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_x Bool)
(declare-var cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_x Bool)
(declare-var cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_x Bool)
(declare-var cc_allowed.__cc_allowed_1 Bool)
(declare-var cc_allowed.__cc_allowed_2 Bool)
(declare-rel cc_allowed_reset (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel cc_allowed_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       
       (MoreThanOneSec_reset cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c
                             cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c
                             cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m
                             cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m)
       (MoreThanTwoSec_reset cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c
                             cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c
                             cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c
                             cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m
                             cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m
                             cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m)
  )
  (cc_allowed_reset cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c
                    cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c
                    cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c
                    cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c
                    cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c
                    cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m
                    cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m
                    cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m
                    cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m
                    cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c)
            (= cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c)
            )
       (MoreThanOneSec_step cc_allowed.sdok
                            cc_allowed.__cc_allowed_2
                            cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m
                            cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m
                            cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_x
                            cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_x)
       (and (= cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c)
            (= cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c)
            (= cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c)
            )
       (MoreThanTwoSec_step cc_allowed.accok
                            cc_allowed.__cc_allowed_1
                            cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m
                            cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m
                            cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m
                            cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_x
                            cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_x
                            cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_x)
       (= cc_allowed.ccall (and (and (and (and (and (and (and (and (and cc_allowed.ccont (not cc_allowed.bpa)) cc_allowed.battok) cc_allowed.gearok) cc_allowed.qfok) cc_allowed.__cc_allowed_2) (<= 35 cc_allowed.vs)) (<= cc_allowed.vs 200)) cc_allowed.__cc_allowed_1) (not cc_allowed.cccanc)))
       )
  (cc_allowed_step cc_allowed.ccont
                   cc_allowed.igsw
                   cc_allowed.bpa
                   cc_allowed.cccanc
                   cc_allowed.battok
                   cc_allowed.gearok
                   cc_allowed.qfok
                   cc_allowed.sdok
                   cc_allowed.accok
                   cc_allowed.vs
                   cc_allowed.ccall
                   cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c
                   cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c
                   cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c
                   cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c
                   cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c
                   cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_x
                   cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_x
                   cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_x
                   cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_x
                   cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_x)
))

; one_button_accept
(declare-var one_button_accept.ccseti Bool)
(declare-var one_button_accept.ccsetd Bool)
(declare-var one_button_accept.ccr Bool)
(declare-var one_button_accept.ccont Bool)
(declare-var one_button_accept.cca Bool)
(declare-var one_button_accept.oba Bool)
(declare-var one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c Bool)
(declare-var one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c Bool)
(declare-var one_button_accept.ni_12.PosEdge.__PosEdge_2_c Bool)
(declare-var one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c Bool)
(declare-var one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c Bool)
(declare-var one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c Bool)
(declare-var one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m Bool)
(declare-var one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m Bool)
(declare-var one_button_accept.ni_12.PosEdge.__PosEdge_2_m Bool)
(declare-var one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m Bool)
(declare-var one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m Bool)
(declare-var one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m Bool)
(declare-var one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_x Bool)
(declare-var one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_x Bool)
(declare-var one_button_accept.ni_12.PosEdge.__PosEdge_2_x Bool)
(declare-var one_button_accept.ni_12.PosEdge.ni_18._arrow._first_x Bool)
(declare-var one_button_accept.ni_13.prev_no_button.__prev_no_button_2_x Bool)
(declare-var one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_x Bool)
(declare-var one_button_accept.__one_button_accept_3 Bool)
(declare-var one_button_accept.__one_button_accept_4 Bool)
(declare-var one_button_accept.ob Bool)
(declare-var one_button_accept.pnb Bool)
(declare-rel one_button_accept_reset (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel one_button_accept_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       
       (prev_no_button_reset one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c
                             one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c
                             one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m
                             one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m)
       (PosEdge_reset one_button_accept.ni_12.PosEdge.__PosEdge_2_c
                      one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c
                      one_button_accept.ni_12.PosEdge.__PosEdge_2_m
                      one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m)
       (AtLeastOnceSince_reset one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c
                               one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c
                               one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m
                               one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m)
  )
  (one_button_accept_reset one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c
                           one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c
                           one_button_accept.ni_12.PosEdge.__PosEdge_2_c
                           one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c
                           one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c
                           one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c
                           one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m
                           one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m
                           one_button_accept.ni_12.PosEdge.__PosEdge_2_m
                           one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m
                           one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m
                           one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c)
            (= one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c)
            )
       (prev_no_button_step one_button_accept.ccseti
                            one_button_accept.ccsetd
                            one_button_accept.ccr
                            one_button_accept.pnb
                            one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m
                            one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m
                            one_button_accept.ni_13.prev_no_button.__prev_no_button_2_x
                            one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_x)
       (one_button_fun one_button_accept.ccseti
                       one_button_accept.ccsetd
                       one_button_accept.ccr
                       one_button_accept.ob)
       (and (= one_button_accept.ni_12.PosEdge.__PosEdge_2_m one_button_accept.ni_12.PosEdge.__PosEdge_2_c)
            (= one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c)
            )
       (PosEdge_step one_button_accept.ccont
                     one_button_accept.__one_button_accept_3
                     one_button_accept.ni_12.PosEdge.__PosEdge_2_m
                     one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m
                     one_button_accept.ni_12.PosEdge.__PosEdge_2_x
                     one_button_accept.ni_12.PosEdge.ni_18._arrow._first_x)
       (and (= one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c)
            (= one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c)
            )
       (AtLeastOnceSince_step one_button_accept.cca
                              one_button_accept.__one_button_accept_3
                              one_button_accept.__one_button_accept_4
                              one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m
                              one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m
                              one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_x
                              one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_x)
       (and (or (not (= (and one_button_accept.pnb one_button_accept.ob) true))
               (and (or (not (= (not one_button_accept.ccr) true))
                       (= one_button_accept.oba true))
                    (or (not (= (not one_button_accept.ccr) false))
                       (= one_button_accept.oba one_button_accept.__one_button_accept_4))
               ))
            (or (not (= (and one_button_accept.pnb one_button_accept.ob) false))
               (= one_button_accept.oba false))
       )
       )
  (one_button_accept_step one_button_accept.ccseti
                          one_button_accept.ccsetd
                          one_button_accept.ccr
                          one_button_accept.ccont
                          one_button_accept.cca
                          one_button_accept.oba
                          one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c
                          one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c
                          one_button_accept.ni_12.PosEdge.__PosEdge_2_c
                          one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c
                          one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c
                          one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c
                          one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_x
                          one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_x
                          one_button_accept.ni_12.PosEdge.__PosEdge_2_x
                          one_button_accept.ni_12.PosEdge.ni_18._arrow._first_x
                          one_button_accept.ni_13.prev_no_button.__prev_no_button_2_x
                          one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_x)
))

; main
(declare-var main.igsw Bool)
(declare-var main.ccd Bool)
(declare-var main.cconoff Bool)
(declare-var main.bpa Bool)
(declare-var main.cccanc Bool)
(declare-var main.battok Bool)
(declare-var main.gearok Bool)
(declare-var main.qfok Bool)
(declare-var main.sdok Bool)
(declare-var main.accok Bool)
(declare-var main.ccseti Bool)
(declare-var main.ccsetd Bool)
(declare-var main.ccr Bool)
(declare-var main.vs Int)
(declare-var main.ccont Bool)
(declare-var main.cca Bool)
(declare-var main.__main_10_c Bool)
(declare-var main.__main_2_c Bool)
(declare-var main.__main_7_c Bool)
(declare-var main.ni_10.Edge.__Edge_2_c Bool)
(declare-var main.ni_10.Edge.ni_16._arrow._first_c Bool)
(declare-var main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c Bool)
(declare-var main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c Bool)
(declare-var main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_c Bool)
(declare-var main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c Bool)
(declare-var main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c Bool)
(declare-var main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c Bool)
(declare-var main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c Bool)
(declare-var main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c Bool)
(declare-var main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c Bool)
(declare-var main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c Bool)
(declare-var main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c Bool)
(declare-var main.ni_8._arrow._first_c Bool)
(declare-var main.ni_9.PosEdge.__PosEdge_2_c Bool)
(declare-var main.ni_9.PosEdge.ni_18._arrow._first_c Bool)
(declare-var main.__main_10_m Bool)
(declare-var main.__main_2_m Bool)
(declare-var main.__main_7_m Bool)
(declare-var main.ni_10.Edge.__Edge_2_m Bool)
(declare-var main.ni_10.Edge.ni_16._arrow._first_m Bool)
(declare-var main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m Bool)
(declare-var main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m Bool)
(declare-var main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_m Bool)
(declare-var main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m Bool)
(declare-var main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m Bool)
(declare-var main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m Bool)
(declare-var main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m Bool)
(declare-var main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m Bool)
(declare-var main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m Bool)
(declare-var main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m Bool)
(declare-var main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m Bool)
(declare-var main.ni_8._arrow._first_m Bool)
(declare-var main.ni_9.PosEdge.__PosEdge_2_m Bool)
(declare-var main.ni_9.PosEdge.ni_18._arrow._first_m Bool)
(declare-var main.__main_10_x Bool)
(declare-var main.__main_2_x Bool)
(declare-var main.__main_7_x Bool)
(declare-var main.ni_10.Edge.__Edge_2_x Bool)
(declare-var main.ni_10.Edge.ni_16._arrow._first_x Bool)
(declare-var main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_x Bool)
(declare-var main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_x Bool)
(declare-var main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_x Bool)
(declare-var main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_x Bool)
(declare-var main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_x Bool)
(declare-var main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_x Bool)
(declare-var main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_x Bool)
(declare-var main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_x Bool)
(declare-var main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_x Bool)
(declare-var main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_x Bool)
(declare-var main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_x Bool)
(declare-var main.ni_8._arrow._first_x Bool)
(declare-var main.ni_9.PosEdge.__PosEdge_2_x Bool)
(declare-var main.ni_9.PosEdge.ni_18._arrow._first_x Bool)
(declare-var main.__main_1 Bool)
(declare-var main.__main_11 Bool)
(declare-var main.__main_3 Bool)
(declare-var main.__main_6 Bool)
(declare-var main.__main_8 Bool)
(declare-var main.__main_9 Bool)
(declare-var main.ccall Bool)
(declare-rel main_reset (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel main_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= main.__main_10_m main.__main_10_c)
       (= main.__main_2_m main.__main_2_c)
       (= main.__main_7_m main.__main_7_c)
       (PosEdge_reset main.ni_9.PosEdge.__PosEdge_2_c
                      main.ni_9.PosEdge.ni_18._arrow._first_c
                      main.ni_9.PosEdge.__PosEdge_2_m
                      main.ni_9.PosEdge.ni_18._arrow._first_m)
       (= main.ni_8._arrow._first_m true)
       (cc_allowed_reset main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c
                         main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c
                         main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c
                         main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c
                         main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c
                         main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m
                         main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m
                         main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m
                         main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m
                         main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m)
       (one_button_accept_reset main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c
                                main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c
                                main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_c
                                main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c
                                main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c
                                main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c
                                main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m
                                main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m
                                main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_m
                                main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m
                                main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m
                                main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m)
       (Edge_reset main.ni_10.Edge.__Edge_2_c
                   main.ni_10.Edge.ni_16._arrow._first_c
                   main.ni_10.Edge.__Edge_2_m
                   main.ni_10.Edge.ni_16._arrow._first_m)
  )
  (main_reset main.__main_10_c
              main.__main_2_c
              main.__main_7_c
              main.ni_10.Edge.__Edge_2_c
              main.ni_10.Edge.ni_16._arrow._first_c
              main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c
              main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c
              main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_c
              main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c
              main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c
              main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c
              main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c
              main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c
              main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c
              main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c
              main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c
              main.ni_8._arrow._first_c
              main.ni_9.PosEdge.__PosEdge_2_c
              main.ni_9.PosEdge.ni_18._arrow._first_c
              main.__main_10_m
              main.__main_2_m
              main.__main_7_m
              main.ni_10.Edge.__Edge_2_m
              main.ni_10.Edge.ni_16._arrow._first_m
              main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m
              main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m
              main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_m
              main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m
              main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m
              main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m
              main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m
              main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m
              main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m
              main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m
              main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m
              main.ni_8._arrow._first_m
              main.ni_9.PosEdge.__PosEdge_2_m
              main.ni_9.PosEdge.ni_18._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= main.ni_10.Edge.__Edge_2_m main.ni_10.Edge.__Edge_2_c)
            (= main.ni_10.Edge.ni_16._arrow._first_m main.ni_10.Edge.ni_16._arrow._first_c)
            )
       (Edge_step main.igsw
                  main.__main_8
                  main.ni_10.Edge.__Edge_2_m
                  main.ni_10.Edge.ni_16._arrow._first_m
                  main.ni_10.Edge.__Edge_2_x
                  main.ni_10.Edge.ni_16._arrow._first_x)
       (and (= main.ni_9.PosEdge.__PosEdge_2_m main.ni_9.PosEdge.__PosEdge_2_c)
            (= main.ni_9.PosEdge.ni_18._arrow._first_m main.ni_9.PosEdge.ni_18._arrow._first_c)
            )
       (PosEdge_step main.cconoff
                     main.__main_6
                     main.ni_9.PosEdge.__PosEdge_2_m
                     main.ni_9.PosEdge.ni_18._arrow._first_m
                     main.ni_9.PosEdge.__PosEdge_2_x
                     main.ni_9.PosEdge.ni_18._arrow._first_x)
       (= main.__main_9 (or (or main.__main_8 main.ccd) (and main.__main_7_c main.__main_6)))
       (= main.__main_11 (and main.__main_10_c main.__main_6))
       (= main.ni_8._arrow._first_m main.ni_8._arrow._first_c)(and (= main.__main_1 (ite main.ni_8._arrow._first_m true false))
                                                                   (= main.ni_8._arrow._first_x false))
       (and (or (not (= main.__main_1 true))
               (= main.ccont false))
            (or (not (= main.__main_1 false))
               (and (or (not (= main.__main_9 true))
                       (= main.ccont false))
                    (or (not (= main.__main_9 false))
                       (and (or (not (= main.__main_11 true))
                               (= main.ccont true))
                            (or (not (= main.__main_11 false))
                               (= main.ccont main.__main_7_c))
                       ))
               ))
       )
       (and (= main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c)
            (= main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c)
            (= main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c)
            (= main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c)
            (= main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c)
            )
       (cc_allowed_step main.ccont
                        main.igsw
                        main.bpa
                        main.cccanc
                        main.battok
                        main.gearok
                        main.qfok
                        main.sdok
                        main.accok
                        main.vs
                        main.ccall
                        main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m
                        main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m
                        main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m
                        main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m
                        main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m
                        main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_x
                        main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_x
                        main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_x
                        main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_x
                        main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_x)
       (and (= main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c)
            (= main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c)
            (= main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_m main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_c)
            (= main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c)
            (= main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c)
            (= main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c)
            )
       (one_button_accept_step main.ccseti
                               main.ccsetd
                               main.ccr
                               main.ccont
                               main.__main_2_c
                               main.__main_3
                               main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m
                               main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m
                               main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_m
                               main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m
                               main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m
                               main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m
                               main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_x
                               main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_x
                               main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_x
                               main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_x
                               main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_x
                               main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_x)
       (and (or (not (= main.__main_1 true))
               (= main.cca false))
            (or (not (= main.__main_1 false))
               (and (or (not (= (and main.__main_3 main.ccall) true))
                       (= main.cca true))
                    (or (not (= (and main.__main_3 main.ccall) false))
                       (and (or (not (= (not main.ccall) true))
                               (= main.cca false))
                            (or (not (= (not main.ccall) false))
                               (= main.cca main.__main_2_c))
                       ))
               ))
       )
       (= main.__main_7_x main.ccont)
       (= main.__main_2_x main.cca)
       (= main.__main_10_x (not main.ccont))
       )
  (main_step main.igsw
             main.ccd
             main.cconoff
             main.bpa
             main.cccanc
             main.battok
             main.gearok
             main.qfok
             main.sdok
             main.accok
             main.ccseti
             main.ccsetd
             main.ccr
             main.vs
             main.ccont
             main.cca
             main.__main_10_c
             main.__main_2_c
             main.__main_7_c
             main.ni_10.Edge.__Edge_2_c
             main.ni_10.Edge.ni_16._arrow._first_c
             main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c
             main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c
             main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_c
             main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c
             main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c
             main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c
             main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c
             main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c
             main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c
             main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c
             main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c
             main.ni_8._arrow._first_c
             main.ni_9.PosEdge.__PosEdge_2_c
             main.ni_9.PosEdge.ni_18._arrow._first_c
             main.__main_10_x
             main.__main_2_x
             main.__main_7_x
             main.ni_10.Edge.__Edge_2_x
             main.ni_10.Edge.ni_16._arrow._first_x
             main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_x
             main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_x
             main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_x
             main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_x
             main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_x
             main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_x
             main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_x
             main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_x
             main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_x
             main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_x
             main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_x
             main.ni_8._arrow._first_x
             main.ni_9.PosEdge.__PosEdge_2_x
             main.ni_9.PosEdge.ni_18._arrow._first_x)
))

; top
(declare-var top.igsw Bool)
(declare-var top.ccd Bool)
(declare-var top.cconoff Bool)
(declare-var top.bpa Bool)
(declare-var top.cccanc Bool)
(declare-var top.battok Bool)
(declare-var top.gearok Bool)
(declare-var top.qfok Bool)
(declare-var top.sdok Bool)
(declare-var top.accok Bool)
(declare-var top.ccseti Bool)
(declare-var top.ccsetd Bool)
(declare-var top.ccr Bool)
(declare-var top.vs Int)
(declare-var top.OK Bool)
(declare-var top.ni_0.PosEdge.__PosEdge_2_c Bool)
(declare-var top.ni_0.PosEdge.ni_18._arrow._first_c Bool)
(declare-var top.ni_1.PosEdge.__PosEdge_2_c Bool)
(declare-var top.ni_1.PosEdge.ni_18._arrow._first_c Bool)
(declare-var top.ni_2.PosEdge.__PosEdge_2_c Bool)
(declare-var top.ni_2.PosEdge.ni_18._arrow._first_c Bool)
(declare-var top.ni_3.PosEdge.__PosEdge_2_c Bool)
(declare-var top.ni_3.PosEdge.ni_18._arrow._first_c Bool)
(declare-var top.ni_4.main.__main_10_c Bool)
(declare-var top.ni_4.main.__main_2_c Bool)
(declare-var top.ni_4.main.__main_7_c Bool)
(declare-var top.ni_4.main.ni_10.Edge.__Edge_2_c Bool)
(declare-var top.ni_4.main.ni_10.Edge.ni_16._arrow._first_c Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_c Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c Bool)
(declare-var top.ni_4.main.ni_8._arrow._first_c Bool)
(declare-var top.ni_4.main.ni_9.PosEdge.__PosEdge_2_c Bool)
(declare-var top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_c Bool)
(declare-var top.ni_5._arrow._first_c Bool)
(declare-var top.ni_0.PosEdge.__PosEdge_2_m Bool)
(declare-var top.ni_0.PosEdge.ni_18._arrow._first_m Bool)
(declare-var top.ni_1.PosEdge.__PosEdge_2_m Bool)
(declare-var top.ni_1.PosEdge.ni_18._arrow._first_m Bool)
(declare-var top.ni_2.PosEdge.__PosEdge_2_m Bool)
(declare-var top.ni_2.PosEdge.ni_18._arrow._first_m Bool)
(declare-var top.ni_3.PosEdge.__PosEdge_2_m Bool)
(declare-var top.ni_3.PosEdge.ni_18._arrow._first_m Bool)
(declare-var top.ni_4.main.__main_10_m Bool)
(declare-var top.ni_4.main.__main_2_m Bool)
(declare-var top.ni_4.main.__main_7_m Bool)
(declare-var top.ni_4.main.ni_10.Edge.__Edge_2_m Bool)
(declare-var top.ni_4.main.ni_10.Edge.ni_16._arrow._first_m Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_m Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m Bool)
(declare-var top.ni_4.main.ni_8._arrow._first_m Bool)
(declare-var top.ni_4.main.ni_9.PosEdge.__PosEdge_2_m Bool)
(declare-var top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_m Bool)
(declare-var top.ni_5._arrow._first_m Bool)
(declare-var top.ni_0.PosEdge.__PosEdge_2_x Bool)
(declare-var top.ni_0.PosEdge.ni_18._arrow._first_x Bool)
(declare-var top.ni_1.PosEdge.__PosEdge_2_x Bool)
(declare-var top.ni_1.PosEdge.ni_18._arrow._first_x Bool)
(declare-var top.ni_2.PosEdge.__PosEdge_2_x Bool)
(declare-var top.ni_2.PosEdge.ni_18._arrow._first_x Bool)
(declare-var top.ni_3.PosEdge.__PosEdge_2_x Bool)
(declare-var top.ni_3.PosEdge.ni_18._arrow._first_x Bool)
(declare-var top.ni_4.main.__main_10_x Bool)
(declare-var top.ni_4.main.__main_2_x Bool)
(declare-var top.ni_4.main.__main_7_x Bool)
(declare-var top.ni_4.main.ni_10.Edge.__Edge_2_x Bool)
(declare-var top.ni_4.main.ni_10.Edge.ni_16._arrow._first_x Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_x Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_x Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_x Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_x Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_x Bool)
(declare-var top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_x Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_x Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_x Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_x Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_x Bool)
(declare-var top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_x Bool)
(declare-var top.ni_4.main.ni_8._arrow._first_x Bool)
(declare-var top.ni_4.main.ni_9.PosEdge.__PosEdge_2_x Bool)
(declare-var top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_x Bool)
(declare-var top.ni_5._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.__top_2 Bool)
(declare-var top.__top_3 Bool)
(declare-var top.__top_4 Bool)
(declare-var top.__top_5 Bool)
(declare-var top.cca Bool)
(declare-var top.ccont Bool)
(declare-var top.env Bool)
(declare-rel top_reset (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       
       (= top.ni_5._arrow._first_m true)
       (main_reset top.ni_4.main.__main_10_c top.ni_4.main.__main_2_c
                   top.ni_4.main.__main_7_c
                   top.ni_4.main.ni_10.Edge.__Edge_2_c
                   top.ni_4.main.ni_10.Edge.ni_16._arrow._first_c
                   top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c
                   top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c
                   top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_c
                   top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c
                   top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c
                   top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c
                   top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c
                   top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c
                   top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c
                   top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c
                   top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c
                   top.ni_4.main.ni_8._arrow._first_c
                   top.ni_4.main.ni_9.PosEdge.__PosEdge_2_c
                   top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_c
                   top.ni_4.main.__main_10_m top.ni_4.main.__main_2_m
                   top.ni_4.main.__main_7_m
                   top.ni_4.main.ni_10.Edge.__Edge_2_m
                   top.ni_4.main.ni_10.Edge.ni_16._arrow._first_m
                   top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m
                   top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m
                   top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_m
                   top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m
                   top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m
                   top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m
                   top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m
                   top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m
                   top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m
                   top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m
                   top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m
                   top.ni_4.main.ni_8._arrow._first_m
                   top.ni_4.main.ni_9.PosEdge.__PosEdge_2_m
                   top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_m)
       (PosEdge_reset top.ni_3.PosEdge.__PosEdge_2_c
                      top.ni_3.PosEdge.ni_18._arrow._first_c
                      top.ni_3.PosEdge.__PosEdge_2_m
                      top.ni_3.PosEdge.ni_18._arrow._first_m)
       (PosEdge_reset top.ni_2.PosEdge.__PosEdge_2_c
                      top.ni_2.PosEdge.ni_18._arrow._first_c
                      top.ni_2.PosEdge.__PosEdge_2_m
                      top.ni_2.PosEdge.ni_18._arrow._first_m)
       (PosEdge_reset top.ni_1.PosEdge.__PosEdge_2_c
                      top.ni_1.PosEdge.ni_18._arrow._first_c
                      top.ni_1.PosEdge.__PosEdge_2_m
                      top.ni_1.PosEdge.ni_18._arrow._first_m)
       (PosEdge_reset top.ni_0.PosEdge.__PosEdge_2_c
                      top.ni_0.PosEdge.ni_18._arrow._first_c
                      top.ni_0.PosEdge.__PosEdge_2_m
                      top.ni_0.PosEdge.ni_18._arrow._first_m)
  )
  (top_reset top.ni_0.PosEdge.__PosEdge_2_c
             top.ni_0.PosEdge.ni_18._arrow._first_c
             top.ni_1.PosEdge.__PosEdge_2_c
             top.ni_1.PosEdge.ni_18._arrow._first_c
             top.ni_2.PosEdge.__PosEdge_2_c
             top.ni_2.PosEdge.ni_18._arrow._first_c
             top.ni_3.PosEdge.__PosEdge_2_c
             top.ni_3.PosEdge.ni_18._arrow._first_c
             top.ni_4.main.__main_10_c
             top.ni_4.main.__main_2_c
             top.ni_4.main.__main_7_c
             top.ni_4.main.ni_10.Edge.__Edge_2_c
             top.ni_4.main.ni_10.Edge.ni_16._arrow._first_c
             top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c
             top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c
             top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_c
             top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c
             top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c
             top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c
             top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c
             top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c
             top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c
             top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c
             top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c
             top.ni_4.main.ni_8._arrow._first_c
             top.ni_4.main.ni_9.PosEdge.__PosEdge_2_c
             top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_c
             top.ni_5._arrow._first_c
             top.ni_0.PosEdge.__PosEdge_2_m
             top.ni_0.PosEdge.ni_18._arrow._first_m
             top.ni_1.PosEdge.__PosEdge_2_m
             top.ni_1.PosEdge.ni_18._arrow._first_m
             top.ni_2.PosEdge.__PosEdge_2_m
             top.ni_2.PosEdge.ni_18._arrow._first_m
             top.ni_3.PosEdge.__PosEdge_2_m
             top.ni_3.PosEdge.ni_18._arrow._first_m
             top.ni_4.main.__main_10_m
             top.ni_4.main.__main_2_m
             top.ni_4.main.__main_7_m
             top.ni_4.main.ni_10.Edge.__Edge_2_m
             top.ni_4.main.ni_10.Edge.ni_16._arrow._first_m
             top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m
             top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m
             top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_m
             top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m
             top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m
             top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m
             top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m
             top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m
             top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m
             top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m
             top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m
             top.ni_4.main.ni_8._arrow._first_m
             top.ni_4.main.ni_9.PosEdge.__PosEdge_2_m
             top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_m
             top.ni_5._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= top.ni_5._arrow._first_m top.ni_5._arrow._first_c)(and (= top.__top_5 (ite top.ni_5._arrow._first_m true false))
                                                                 (= top.ni_5._arrow._first_x false))
       (and (or (not (= top.__top_5 true))
               (= top.env (not top.igsw)))
            (or (not (= top.__top_5 false))
               (= top.env true))
       )
       (and (= top.ni_4.main.__main_10_m top.ni_4.main.__main_10_c)
            (= top.ni_4.main.__main_2_m top.ni_4.main.__main_2_c)
            (= top.ni_4.main.__main_7_m top.ni_4.main.__main_7_c)
            (= top.ni_4.main.ni_10.Edge.__Edge_2_m top.ni_4.main.ni_10.Edge.__Edge_2_c)
            (= top.ni_4.main.ni_10.Edge.ni_16._arrow._first_m top.ni_4.main.ni_10.Edge.ni_16._arrow._first_c)
            (= top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c)
            (= top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c)
            (= top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_m top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_c)
            (= top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c)
            (= top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c)
            (= top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c)
            (= top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c)
            (= top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c)
            (= top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c)
            (= top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c)
            (= top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c)
            (= top.ni_4.main.ni_8._arrow._first_m top.ni_4.main.ni_8._arrow._first_c)
            (= top.ni_4.main.ni_9.PosEdge.__PosEdge_2_m top.ni_4.main.ni_9.PosEdge.__PosEdge_2_c)
            (= top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_m top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_c)
            )
       (main_step top.igsw
                  top.ccd
                  top.cconoff
                  top.bpa
                  top.cccanc
                  top.battok
                  top.gearok
                  top.qfok
                  top.sdok
                  top.accok
                  top.ccseti
                  top.ccsetd
                  top.ccr
                  top.vs
                  top.ccont
                  top.cca
                  top.ni_4.main.__main_10_m
                  top.ni_4.main.__main_2_m
                  top.ni_4.main.__main_7_m
                  top.ni_4.main.ni_10.Edge.__Edge_2_m
                  top.ni_4.main.ni_10.Edge.ni_16._arrow._first_m
                  top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m
                  top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m
                  top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_m
                  top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m
                  top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m
                  top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m
                  top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m
                  top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m
                  top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m
                  top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m
                  top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m
                  top.ni_4.main.ni_8._arrow._first_m
                  top.ni_4.main.ni_9.PosEdge.__PosEdge_2_m
                  top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_m
                  top.ni_4.main.__main_10_x
                  top.ni_4.main.__main_2_x
                  top.ni_4.main.__main_7_x
                  top.ni_4.main.ni_10.Edge.__Edge_2_x
                  top.ni_4.main.ni_10.Edge.ni_16._arrow._first_x
                  top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_x
                  top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_x
                  top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_x
                  top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_x
                  top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_x
                  top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_x
                  top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_x
                  top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_x
                  top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_x
                  top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_x
                  top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_x
                  top.ni_4.main.ni_8._arrow._first_x
                  top.ni_4.main.ni_9.PosEdge.__PosEdge_2_x
                  top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_x)
       (and (= top.ni_3.PosEdge.__PosEdge_2_m top.ni_3.PosEdge.__PosEdge_2_c)
            (= top.ni_3.PosEdge.ni_18._arrow._first_m top.ni_3.PosEdge.ni_18._arrow._first_c)
            )
       (PosEdge_step top.ccseti
                     top.__top_4
                     top.ni_3.PosEdge.__PosEdge_2_m
                     top.ni_3.PosEdge.ni_18._arrow._first_m
                     top.ni_3.PosEdge.__PosEdge_2_x
                     top.ni_3.PosEdge.ni_18._arrow._first_x)
       (and (= top.ni_2.PosEdge.__PosEdge_2_m top.ni_2.PosEdge.__PosEdge_2_c)
            (= top.ni_2.PosEdge.ni_18._arrow._first_m top.ni_2.PosEdge.ni_18._arrow._first_c)
            )
       (PosEdge_step top.ccsetd
                     top.__top_3
                     top.ni_2.PosEdge.__PosEdge_2_m
                     top.ni_2.PosEdge.ni_18._arrow._first_m
                     top.ni_2.PosEdge.__PosEdge_2_x
                     top.ni_2.PosEdge.ni_18._arrow._first_x)
       (and (= top.ni_1.PosEdge.__PosEdge_2_m top.ni_1.PosEdge.__PosEdge_2_c)
            (= top.ni_1.PosEdge.ni_18._arrow._first_m top.ni_1.PosEdge.ni_18._arrow._first_c)
            )
       (PosEdge_step top.ccr
                     top.__top_2
                     top.ni_1.PosEdge.__PosEdge_2_m
                     top.ni_1.PosEdge.ni_18._arrow._first_m
                     top.ni_1.PosEdge.__PosEdge_2_x
                     top.ni_1.PosEdge.ni_18._arrow._first_x)
       (and (= top.ni_0.PosEdge.__PosEdge_2_m top.ni_0.PosEdge.__PosEdge_2_c)
            (= top.ni_0.PosEdge.ni_18._arrow._first_m top.ni_0.PosEdge.ni_18._arrow._first_c)
            )
       (PosEdge_step top.cca
                     top.__top_1
                     top.ni_0.PosEdge.__PosEdge_2_m
                     top.ni_0.PosEdge.ni_18._arrow._first_m
                     top.ni_0.PosEdge.__PosEdge_2_x
                     top.ni_0.PosEdge.ni_18._arrow._first_x)
       (and (or (not (= top.__top_1 true))
               (= top.OK (or (or top.__top_4 top.__top_3) top.__top_2)))
            (or (not (= top.__top_1 false))
               (= top.OK true))
       )
       )
  (top_step top.igsw
            top.ccd
            top.cconoff
            top.bpa
            top.cccanc
            top.battok
            top.gearok
            top.qfok
            top.sdok
            top.accok
            top.ccseti
            top.ccsetd
            top.ccr
            top.vs
            top.OK
            top.ni_0.PosEdge.__PosEdge_2_c
            top.ni_0.PosEdge.ni_18._arrow._first_c
            top.ni_1.PosEdge.__PosEdge_2_c
            top.ni_1.PosEdge.ni_18._arrow._first_c
            top.ni_2.PosEdge.__PosEdge_2_c
            top.ni_2.PosEdge.ni_18._arrow._first_c
            top.ni_3.PosEdge.__PosEdge_2_c
            top.ni_3.PosEdge.ni_18._arrow._first_c
            top.ni_4.main.__main_10_c
            top.ni_4.main.__main_2_c
            top.ni_4.main.__main_7_c
            top.ni_4.main.ni_10.Edge.__Edge_2_c
            top.ni_4.main.ni_10.Edge.ni_16._arrow._first_c
            top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c
            top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c
            top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_c
            top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c
            top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c
            top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c
            top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c
            top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c
            top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c
            top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c
            top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c
            top.ni_4.main.ni_8._arrow._first_c
            top.ni_4.main.ni_9.PosEdge.__PosEdge_2_c
            top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_c
            top.ni_5._arrow._first_c
            top.ni_0.PosEdge.__PosEdge_2_x
            top.ni_0.PosEdge.ni_18._arrow._first_x
            top.ni_1.PosEdge.__PosEdge_2_x
            top.ni_1.PosEdge.ni_18._arrow._first_x
            top.ni_2.PosEdge.__PosEdge_2_x
            top.ni_2.PosEdge.ni_18._arrow._first_x
            top.ni_3.PosEdge.__PosEdge_2_x
            top.ni_3.PosEdge.ni_18._arrow._first_x
            top.ni_4.main.__main_10_x
            top.ni_4.main.__main_2_x
            top.ni_4.main.__main_7_x
            top.ni_4.main.ni_10.Edge.__Edge_2_x
            top.ni_4.main.ni_10.Edge.ni_16._arrow._first_x
            top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_x
            top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_x
            top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_x
            top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_x
            top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_x
            top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_x
            top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_x
            top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_x
            top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_x
            top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_x
            top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_x
            top.ni_4.main.ni_8._arrow._first_x
            top.ni_4.main.ni_9.PosEdge.__PosEdge_2_x
            top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_x
            top.ni_5._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.PosEdge.__PosEdge_2_c top.ni_0.PosEdge.ni_18._arrow._first_c top.ni_1.PosEdge.__PosEdge_2_c top.ni_1.PosEdge.ni_18._arrow._first_c top.ni_2.PosEdge.__PosEdge_2_c top.ni_2.PosEdge.ni_18._arrow._first_c top.ni_3.PosEdge.__PosEdge_2_c top.ni_3.PosEdge.ni_18._arrow._first_c top.ni_4.main.__main_10_c top.ni_4.main.__main_2_c top.ni_4.main.__main_7_c top.ni_4.main.ni_10.Edge.__Edge_2_c top.ni_4.main.ni_10.Edge.ni_16._arrow._first_c top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_c top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c top.ni_4.main.ni_8._arrow._first_c top.ni_4.main.ni_9.PosEdge.__PosEdge_2_c top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_c top.ni_5._arrow._first_c top.ni_0.PosEdge.__PosEdge_2_m top.ni_0.PosEdge.ni_18._arrow._first_m top.ni_1.PosEdge.__PosEdge_2_m top.ni_1.PosEdge.ni_18._arrow._first_m top.ni_2.PosEdge.__PosEdge_2_m top.ni_2.PosEdge.ni_18._arrow._first_m top.ni_3.PosEdge.__PosEdge_2_m top.ni_3.PosEdge.ni_18._arrow._first_m top.ni_4.main.__main_10_m top.ni_4.main.__main_2_m top.ni_4.main.__main_7_m top.ni_4.main.ni_10.Edge.__Edge_2_m top.ni_4.main.ni_10.Edge.ni_16._arrow._first_m top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_m top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m top.ni_4.main.ni_8._arrow._first_m top.ni_4.main.ni_9.PosEdge.__PosEdge_2_m top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_m top.ni_5._arrow._first_m)
       (top_step top.igsw top.ccd top.cconoff top.bpa top.cccanc top.battok top.gearok top.qfok top.sdok top.accok top.ccseti top.ccsetd top.ccr top.vs top.OK top.ni_0.PosEdge.__PosEdge_2_m top.ni_0.PosEdge.ni_18._arrow._first_m top.ni_1.PosEdge.__PosEdge_2_m top.ni_1.PosEdge.ni_18._arrow._first_m top.ni_2.PosEdge.__PosEdge_2_m top.ni_2.PosEdge.ni_18._arrow._first_m top.ni_3.PosEdge.__PosEdge_2_m top.ni_3.PosEdge.ni_18._arrow._first_m top.ni_4.main.__main_10_m top.ni_4.main.__main_2_m top.ni_4.main.__main_7_m top.ni_4.main.ni_10.Edge.__Edge_2_m top.ni_4.main.ni_10.Edge.ni_16._arrow._first_m top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_m top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_m top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_m top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_m top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_m top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_m top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_m top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_m top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_m top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_m top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_m top.ni_4.main.ni_8._arrow._first_m top.ni_4.main.ni_9.PosEdge.__PosEdge_2_m top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_m top.ni_5._arrow._first_m top.ni_0.PosEdge.__PosEdge_2_x top.ni_0.PosEdge.ni_18._arrow._first_x top.ni_1.PosEdge.__PosEdge_2_x top.ni_1.PosEdge.ni_18._arrow._first_x top.ni_2.PosEdge.__PosEdge_2_x top.ni_2.PosEdge.ni_18._arrow._first_x top.ni_3.PosEdge.__PosEdge_2_x top.ni_3.PosEdge.ni_18._arrow._first_x top.ni_4.main.__main_10_x top.ni_4.main.__main_2_x top.ni_4.main.__main_7_x top.ni_4.main.ni_10.Edge.__Edge_2_x top.ni_4.main.ni_10.Edge.ni_16._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_x top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_x top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_x top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_x top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_x top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_x top.ni_4.main.ni_8._arrow._first_x top.ni_4.main.ni_9.PosEdge.__PosEdge_2_x top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_x top.ni_5._arrow._first_x)
  )
  (MAIN top.ni_0.PosEdge.__PosEdge_2_x top.ni_0.PosEdge.ni_18._arrow._first_x top.ni_1.PosEdge.__PosEdge_2_x top.ni_1.PosEdge.ni_18._arrow._first_x top.ni_2.PosEdge.__PosEdge_2_x top.ni_2.PosEdge.ni_18._arrow._first_x top.ni_3.PosEdge.__PosEdge_2_x top.ni_3.PosEdge.ni_18._arrow._first_x top.ni_4.main.__main_10_x top.ni_4.main.__main_2_x top.ni_4.main.__main_7_x top.ni_4.main.ni_10.Edge.__Edge_2_x top.ni_4.main.ni_10.Edge.ni_16._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_x top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_x top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_x top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_x top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_x top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_x top.ni_4.main.ni_8._arrow._first_x top.ni_4.main.ni_9.PosEdge.__PosEdge_2_x top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_x top.ni_5._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.PosEdge.__PosEdge_2_c top.ni_0.PosEdge.ni_18._arrow._first_c top.ni_1.PosEdge.__PosEdge_2_c top.ni_1.PosEdge.ni_18._arrow._first_c top.ni_2.PosEdge.__PosEdge_2_c top.ni_2.PosEdge.ni_18._arrow._first_c top.ni_3.PosEdge.__PosEdge_2_c top.ni_3.PosEdge.ni_18._arrow._first_c top.ni_4.main.__main_10_c top.ni_4.main.__main_2_c top.ni_4.main.__main_7_c top.ni_4.main.ni_10.Edge.__Edge_2_c top.ni_4.main.ni_10.Edge.ni_16._arrow._first_c top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_c top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c top.ni_4.main.ni_8._arrow._first_c top.ni_4.main.ni_9.PosEdge.__PosEdge_2_c top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_c top.ni_5._arrow._first_c dummytop.OK)
       (top_step top.igsw top.ccd top.cconoff top.bpa top.cccanc top.battok top.gearok top.qfok top.sdok top.accok top.ccseti top.ccsetd top.ccr top.vs top.OK top.ni_0.PosEdge.__PosEdge_2_c top.ni_0.PosEdge.ni_18._arrow._first_c top.ni_1.PosEdge.__PosEdge_2_c top.ni_1.PosEdge.ni_18._arrow._first_c top.ni_2.PosEdge.__PosEdge_2_c top.ni_2.PosEdge.ni_18._arrow._first_c top.ni_3.PosEdge.__PosEdge_2_c top.ni_3.PosEdge.ni_18._arrow._first_c top.ni_4.main.__main_10_c top.ni_4.main.__main_2_c top.ni_4.main.__main_7_c top.ni_4.main.ni_10.Edge.__Edge_2_c top.ni_4.main.ni_10.Edge.ni_16._arrow._first_c top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_c top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_c top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_c top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_c top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_c top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_c top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_c top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_c top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_c top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_c top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_c top.ni_4.main.ni_8._arrow._first_c top.ni_4.main.ni_9.PosEdge.__PosEdge_2_c top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_c top.ni_5._arrow._first_c top.ni_0.PosEdge.__PosEdge_2_x top.ni_0.PosEdge.ni_18._arrow._first_x top.ni_1.PosEdge.__PosEdge_2_x top.ni_1.PosEdge.ni_18._arrow._first_x top.ni_2.PosEdge.__PosEdge_2_x top.ni_2.PosEdge.ni_18._arrow._first_x top.ni_3.PosEdge.__PosEdge_2_x top.ni_3.PosEdge.ni_18._arrow._first_x top.ni_4.main.__main_10_x top.ni_4.main.__main_2_x top.ni_4.main.__main_7_x top.ni_4.main.ni_10.Edge.__Edge_2_x top.ni_4.main.ni_10.Edge.ni_16._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_x top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_x top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_x top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_x top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_x top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_x top.ni_4.main.ni_8._arrow._first_x top.ni_4.main.ni_9.PosEdge.__PosEdge_2_x top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_x top.ni_5._arrow._first_x)
  )
  (MAIN top.ni_0.PosEdge.__PosEdge_2_x top.ni_0.PosEdge.ni_18._arrow._first_x top.ni_1.PosEdge.__PosEdge_2_x top.ni_1.PosEdge.ni_18._arrow._first_x top.ni_2.PosEdge.__PosEdge_2_x top.ni_2.PosEdge.ni_18._arrow._first_x top.ni_3.PosEdge.__PosEdge_2_x top.ni_3.PosEdge.ni_18._arrow._first_x top.ni_4.main.__main_10_x top.ni_4.main.__main_2_x top.ni_4.main.__main_7_x top.ni_4.main.ni_10.Edge.__Edge_2_x top.ni_4.main.ni_10.Edge.ni_16._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_x top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_x top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_x top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_x top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_x top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_x top.ni_4.main.ni_8._arrow._first_x top.ni_4.main.ni_9.PosEdge.__PosEdge_2_x top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_x top.ni_5._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.PosEdge.__PosEdge_2_x top.ni_0.PosEdge.ni_18._arrow._first_x top.ni_1.PosEdge.__PosEdge_2_x top.ni_1.PosEdge.ni_18._arrow._first_x top.ni_2.PosEdge.__PosEdge_2_x top.ni_2.PosEdge.ni_18._arrow._first_x top.ni_3.PosEdge.__PosEdge_2_x top.ni_3.PosEdge.ni_18._arrow._first_x top.ni_4.main.__main_10_x top.ni_4.main.__main_2_x top.ni_4.main.__main_7_x top.ni_4.main.ni_10.Edge.__Edge_2_x top.ni_4.main.ni_10.Edge.ni_16._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.__AtLeastOnceSince_2_x top.ni_4.main.ni_6.one_button_accept.ni_11.AtLeastOnceSince.ni_19._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.__PosEdge_2_x top.ni_4.main.ni_6.one_button_accept.ni_12.PosEdge.ni_18._arrow._first_x top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.__prev_no_button_2_x top.ni_4.main.ni_6.one_button_accept.ni_13.prev_no_button.ni_17._arrow._first_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_2_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.__MoreThanTwoSec_4_x top.ni_4.main.ni_7.cc_allowed.ni_14.MoreThanTwoSec.ni_20._arrow._first_x top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.__MoreThanOneSec_2_x top.ni_4.main.ni_7.cc_allowed.ni_15.MoreThanOneSec.ni_21._arrow._first_x top.ni_4.main.ni_8._arrow._first_x top.ni_4.main.ni_9.PosEdge.__PosEdge_2_x top.ni_4.main.ni_9.PosEdge.ni_18._arrow._first_x top.ni_5._arrow._first_x top.OK))
  ERR))
(query ERR)
