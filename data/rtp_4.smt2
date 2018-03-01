; Statically linked libraries
; Sofar
(declare-var Sofar.X Bool)
(declare-var Sofar.Sofar Bool)
(declare-var Sofar.__Sofar_2_c Bool)
(declare-var Sofar.ni_3._arrow._first_c Bool)
(declare-var Sofar.__Sofar_2_m Bool)
(declare-var Sofar.ni_3._arrow._first_m Bool)
(declare-var Sofar.__Sofar_2_x Bool)
(declare-var Sofar.ni_3._arrow._first_x Bool)
(declare-var Sofar.__Sofar_1 Bool)
(declare-rel Sofar_reset (Bool Bool Bool Bool))
(declare-rel Sofar_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= Sofar.__Sofar_2_m Sofar.__Sofar_2_c)
       (= Sofar.ni_3._arrow._first_m true)
  )
  (Sofar_reset Sofar.__Sofar_2_c
               Sofar.ni_3._arrow._first_c
               Sofar.__Sofar_2_m
               Sofar.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Sofar.ni_3._arrow._first_m Sofar.ni_3._arrow._first_c)(and (= Sofar.__Sofar_1 (ite Sofar.ni_3._arrow._first_m true false))
                                                                    (= Sofar.ni_3._arrow._first_x false))
       (and (or (not (= Sofar.__Sofar_1 true))
               (= Sofar.Sofar Sofar.X))
            (or (not (= Sofar.__Sofar_1 false))
               (= Sofar.Sofar (and Sofar.X Sofar.__Sofar_2_c)))
       )
       (= Sofar.__Sofar_2_x Sofar.Sofar)
       )
  (Sofar_step Sofar.X
              Sofar.Sofar
              Sofar.__Sofar_2_c
              Sofar.ni_3._arrow._first_c
              Sofar.__Sofar_2_x
              Sofar.ni_3._arrow._first_x)
))

; excludes12
(declare-var excludes12.X1 Bool)
(declare-var excludes12.X2 Bool)
(declare-var excludes12.X3 Bool)
(declare-var excludes12.X4 Bool)
(declare-var excludes12.X5 Bool)
(declare-var excludes12.X6 Bool)
(declare-var excludes12.X7 Bool)
(declare-var excludes12.X8 Bool)
(declare-var excludes12.X9 Bool)
(declare-var excludes12.X10 Bool)
(declare-var excludes12.X11 Bool)
(declare-var excludes12.X12 Bool)
(declare-var excludes12.excludes Bool)
(declare-rel excludes12_fun (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (= excludes12.excludes (or (or (or (or (or (or (or (or (or (or (or (or (and (and (and (and (and (and (and (and (and (and (and (not excludes12.X1) (not excludes12.X2)) (not excludes12.X3)) (not excludes12.X4)) (not excludes12.X5)) (not excludes12.X6)) (not excludes12.X7)) (not excludes12.X8)) (not excludes12.X9)) (not excludes12.X10)) (not excludes12.X11)) (not excludes12.X12)) (and (and (and (and (and (and (and (and (and (and (and excludes12.X1 (not excludes12.X2)) (not excludes12.X3)) (not excludes12.X4)) (not excludes12.X5)) (not excludes12.X6)) (not excludes12.X7)) (not excludes12.X8)) (not excludes12.X9)) (not excludes12.X10)) (not excludes12.X11)) (not excludes12.X12))) (and (and (and (and (and (and (and (and (and (and (and (not excludes12.X1) excludes12.X2) (not excludes12.X3)) (not excludes12.X4)) (not excludes12.X5)) (not excludes12.X6)) (not excludes12.X7)) (not excludes12.X8)) (not excludes12.X9)) (not excludes12.X10)) (not excludes12.X11)) (not excludes12.X12))) (and (and (and (and (and (and (and (and (and (and (and (not excludes12.X1) (not excludes12.X2)) excludes12.X3) (not excludes12.X4)) (not excludes12.X5)) (not excludes12.X6)) (not excludes12.X7)) (not excludes12.X8)) (not excludes12.X9)) (not excludes12.X10)) (not excludes12.X11)) (not excludes12.X12))) (and (and (and (and (and (and (and (and (and (and (and (not excludes12.X1) (not excludes12.X2)) (not excludes12.X3)) excludes12.X4) (not excludes12.X5)) (not excludes12.X6)) (not excludes12.X7)) (not excludes12.X8)) (not excludes12.X9)) (not excludes12.X10)) (not excludes12.X11)) (not excludes12.X12))) (and (and (and (and (and (and (and (and (and (and (and (not excludes12.X1) (not excludes12.X2)) (not excludes12.X3)) (not excludes12.X4)) excludes12.X5) (not excludes12.X6)) (not excludes12.X7)) (not excludes12.X8)) (not excludes12.X9)) (not excludes12.X10)) (not excludes12.X11)) (not excludes12.X12))) (and (and (and (and (and (and (and (and (and (and (and (not excludes12.X1) (not excludes12.X2)) (not excludes12.X3)) (not excludes12.X4)) (not excludes12.X5)) excludes12.X6) (not excludes12.X7)) (not excludes12.X8)) (not excludes12.X9)) (not excludes12.X10)) (not excludes12.X11)) (not excludes12.X12))) (and (and (and (and (and (and (and (and (and (and (and (not excludes12.X1) (not excludes12.X2)) (not excludes12.X3)) (not excludes12.X4)) (not excludes12.X5)) (not excludes12.X6)) excludes12.X7) (not excludes12.X8)) (not excludes12.X9)) (not excludes12.X10)) (not excludes12.X11)) (not excludes12.X12))) (and (and (and (and (and (and (and (and (and (and (and (not excludes12.X1) (not excludes12.X2)) (not excludes12.X3)) (not excludes12.X4)) (not excludes12.X5)) (not excludes12.X6)) (not excludes12.X7)) excludes12.X8) (not excludes12.X9)) (not excludes12.X10)) (not excludes12.X11)) (not excludes12.X12))) (and (and (and (and (and (and (and (and (and (and (and (not excludes12.X1) (not excludes12.X2)) (not excludes12.X3)) (not excludes12.X4)) (not excludes12.X5)) (not excludes12.X6)) (not excludes12.X7)) (not excludes12.X8)) excludes12.X9) (not excludes12.X10)) (not excludes12.X11)) (not excludes12.X12))) (and (and (and (and (and (and (and (and (and (and (and (not excludes12.X1) (not excludes12.X2)) (not excludes12.X3)) (not excludes12.X4)) (not excludes12.X5)) (not excludes12.X6)) (not excludes12.X7)) (not excludes12.X8)) (not excludes12.X9)) excludes12.X10) (not excludes12.X11)) (not excludes12.X12))) (and (and (and (and (and (and (and (and (and (and (and (not excludes12.X1) (not excludes12.X2)) (not excludes12.X3)) (not excludes12.X4)) (not excludes12.X5)) (not excludes12.X6)) (not excludes12.X7)) (not excludes12.X8)) (not excludes12.X9)) (not excludes12.X10)) excludes12.X11) (not excludes12.X12))) (and (and (and (and (and (and (and (and (and (and (and (not excludes12.X1) (not excludes12.X2)) (not excludes12.X3)) (not excludes12.X4)) (not excludes12.X5)) (not excludes12.X6)) (not excludes12.X7)) (not excludes12.X8)) (not excludes12.X9)) (not excludes12.X10)) (not excludes12.X11)) excludes12.X12)))
  (excludes12_fun excludes12.X1 excludes12.X2 excludes12.X3 excludes12.X4 excludes12.X5 excludes12.X6 excludes12.X7 excludes12.X8 excludes12.X9 excludes12.X10 excludes12.X11 excludes12.X12 excludes12.excludes)
))

; rtp
(declare-var rtp.e01 Bool)
(declare-var rtp.e02 Bool)
(declare-var rtp.e03 Bool)
(declare-var rtp.e04 Bool)
(declare-var rtp.e05 Bool)
(declare-var rtp.e06 Bool)
(declare-var rtp.e07 Bool)
(declare-var rtp.e08 Bool)
(declare-var rtp.e09 Bool)
(declare-var rtp.e10 Bool)
(declare-var rtp.e11 Bool)
(declare-var rtp.e12 Bool)
(declare-var rtp.X1 Int)
(declare-var rtp.X2 Int)
(declare-var rtp.X3 Int)
(declare-var rtp.X4 Int)
(declare-var rtp.X5 Int)
(declare-var rtp.X6 Int)
(declare-var rtp.X7 Int)
(declare-var rtp.X8 Int)
(declare-var rtp.X9 Int)
(declare-var rtp.erreur Bool)
(declare-var rtp.__rtp_10_c Int)
(declare-var rtp.__rtp_2_c Int)
(declare-var rtp.__rtp_3_c Int)
(declare-var rtp.__rtp_4_c Int)
(declare-var rtp.__rtp_5_c Int)
(declare-var rtp.__rtp_6_c Int)
(declare-var rtp.__rtp_7_c Int)
(declare-var rtp.__rtp_8_c Int)
(declare-var rtp.__rtp_9_c Int)
(declare-var rtp.ni_2._arrow._first_c Bool)
(declare-var rtp.__rtp_10_m Int)
(declare-var rtp.__rtp_2_m Int)
(declare-var rtp.__rtp_3_m Int)
(declare-var rtp.__rtp_4_m Int)
(declare-var rtp.__rtp_5_m Int)
(declare-var rtp.__rtp_6_m Int)
(declare-var rtp.__rtp_7_m Int)
(declare-var rtp.__rtp_8_m Int)
(declare-var rtp.__rtp_9_m Int)
(declare-var rtp.ni_2._arrow._first_m Bool)
(declare-var rtp.__rtp_10_x Int)
(declare-var rtp.__rtp_2_x Int)
(declare-var rtp.__rtp_3_x Int)
(declare-var rtp.__rtp_4_x Int)
(declare-var rtp.__rtp_5_x Int)
(declare-var rtp.__rtp_6_x Int)
(declare-var rtp.__rtp_7_x Int)
(declare-var rtp.__rtp_8_x Int)
(declare-var rtp.__rtp_9_x Int)
(declare-var rtp.ni_2._arrow._first_x Bool)
(declare-var rtp.__rtp_1 Bool)
(declare-var rtp.g01 Bool)
(declare-var rtp.g02 Bool)
(declare-var rtp.g03 Bool)
(declare-var rtp.g04 Bool)
(declare-var rtp.g05 Bool)
(declare-var rtp.g06 Bool)
(declare-var rtp.g07 Bool)
(declare-var rtp.g08 Bool)
(declare-var rtp.g09 Bool)
(declare-var rtp.g10 Bool)
(declare-var rtp.g11 Bool)
(declare-var rtp.g12 Bool)
(declare-rel rtp_reset (Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Bool))
(declare-rel rtp_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Bool))

(rule (=> 
  (and 
       (= rtp.__rtp_10_m rtp.__rtp_10_c)
       (= rtp.__rtp_2_m rtp.__rtp_2_c)
       (= rtp.__rtp_3_m rtp.__rtp_3_c)
       (= rtp.__rtp_4_m rtp.__rtp_4_c)
       (= rtp.__rtp_5_m rtp.__rtp_5_c)
       (= rtp.__rtp_6_m rtp.__rtp_6_c)
       (= rtp.__rtp_7_m rtp.__rtp_7_c)
       (= rtp.__rtp_8_m rtp.__rtp_8_c)
       (= rtp.__rtp_9_m rtp.__rtp_9_c)
       (= rtp.ni_2._arrow._first_m true)
  )
  (rtp_reset rtp.__rtp_10_c
             rtp.__rtp_2_c
             rtp.__rtp_3_c
             rtp.__rtp_4_c
             rtp.__rtp_5_c
             rtp.__rtp_6_c
             rtp.__rtp_7_c
             rtp.__rtp_8_c
             rtp.__rtp_9_c
             rtp.ni_2._arrow._first_c
             rtp.__rtp_10_m
             rtp.__rtp_2_m
             rtp.__rtp_3_m
             rtp.__rtp_4_m
             rtp.__rtp_5_m
             rtp.__rtp_6_m
             rtp.__rtp_7_m
             rtp.__rtp_8_m
             rtp.__rtp_9_m
             rtp.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= rtp.g12 (>= rtp.__rtp_2_c 1))
       (= rtp.g11 (>= rtp.__rtp_3_c 1))
       (= rtp.g10 (>= rtp.__rtp_4_c 1))
       (= rtp.g09 (>= rtp.__rtp_5_c 1))
       (= rtp.g08 (>= rtp.__rtp_5_c 1))
       (= rtp.g07 (>= rtp.__rtp_5_c 1))
       (= rtp.g06 (>= rtp.__rtp_6_c 1))
       (= rtp.g05 (>= rtp.__rtp_7_c 1))
       (= rtp.g04 (>= rtp.__rtp_7_c 1))
       (= rtp.g03 (>= rtp.__rtp_8_c 1))
       (= rtp.g02 (>= rtp.__rtp_9_c 1))
       (= rtp.g01 (>= rtp.__rtp_10_c 1))
       (= rtp.ni_2._arrow._first_m rtp.ni_2._arrow._first_c)(and (= rtp.__rtp_1 (ite rtp.ni_2._arrow._first_m true false))
                                                                 (= rtp.ni_2._arrow._first_x false))
       (and (or (not (= rtp.__rtp_1 true))
               (= rtp.X1 1))
            (or (not (= rtp.__rtp_1 false))
               (and (or (not (= rtp.e01 true))
                       (and (or (not (= rtp.g01 true))
                               (= rtp.X1 (- rtp.__rtp_10_c 1)))
                            (or (not (= rtp.g01 false))
                               (= rtp.X1 rtp.__rtp_10_c))
                       ))
                    (or (not (= rtp.e01 false))
                       (= rtp.X1 rtp.__rtp_10_c))
               ))
       )
       (and (or (not (= (>= rtp.X1 2) true))
               (= rtp.erreur true))
            (or (not (= (>= rtp.X1 2) false))
               (= rtp.erreur false))
       )
       (and (or (not (= rtp.__rtp_1 true))
               (= rtp.X2 0))
            (or (not (= rtp.__rtp_1 false))
               (and (or (not (= rtp.e01 true))
                       (and (or (not (= rtp.g01 true))
                               (= rtp.X2 (+ rtp.__rtp_9_c 1)))
                            (or (not (= rtp.g01 false))
                               (= rtp.X2 rtp.__rtp_9_c))
                       ))
                    (or (not (= rtp.e01 false))
                       (and (or (not (= rtp.e02 true))
                               (and (or (not (= rtp.g02 true))
                                       (= rtp.X2 (- rtp.__rtp_9_c 1)))
                                    (or (not (= rtp.g02 false))
                                       (= rtp.X2 rtp.__rtp_9_c))
                               ))
                            (or (not (= rtp.e02 false))
                               (and (or (not (= rtp.e12 true))
                                       (and (or (not (= rtp.g12 true))
                                               (= rtp.X2 (+ rtp.__rtp_9_c 1)))
                                            (or (not (= rtp.g12 false))
                                               (= rtp.X2 rtp.__rtp_9_c))
                                       ))
                                    (or (not (= rtp.e12 false))
                                       (= rtp.X2 rtp.__rtp_9_c))
                               ))
                       ))
               ))
       )
       (= rtp.__rtp_9_x rtp.X2)
       (and (or (not (= rtp.__rtp_1 true))
               (= rtp.X3 0))
            (or (not (= rtp.__rtp_1 false))
               (and (or (not (= rtp.e02 true))
                       (and (or (not (= rtp.g02 true))
                               (= rtp.X3 (+ rtp.__rtp_8_c 1)))
                            (or (not (= rtp.g02 false))
                               (= rtp.X3 rtp.__rtp_8_c))
                       ))
                    (or (not (= rtp.e02 false))
                       (and (or (not (= rtp.e03 true))
                               (and (or (not (= rtp.g03 true))
                                       (= rtp.X3 (- rtp.__rtp_8_c 1)))
                                    (or (not (= rtp.g03 false))
                                       (= rtp.X3 rtp.__rtp_8_c))
                               ))
                            (or (not (= rtp.e03 false))
                               (= rtp.X3 rtp.__rtp_8_c))
                       ))
               ))
       )
       (= rtp.__rtp_8_x rtp.X3)
       (and (or (not (= rtp.__rtp_1 true))
               (= rtp.X4 0))
            (or (not (= rtp.__rtp_1 false))
               (and (or (not (= rtp.e03 true))
                       (and (or (not (= rtp.g03 true))
                               (= rtp.X4 (+ rtp.__rtp_7_c 1)))
                            (or (not (= rtp.g03 false))
                               (= rtp.X4 rtp.__rtp_7_c))
                       ))
                    (or (not (= rtp.e03 false))
                       (and (or (not (= rtp.e04 true))
                               (and (or (not (= rtp.g04 true))
                                       (= rtp.X4 (- rtp.__rtp_7_c 1)))
                                    (or (not (= rtp.g04 false))
                                       (= rtp.X4 rtp.__rtp_7_c))
                               ))
                            (or (not (= rtp.e04 false))
                               (and (or (not (= rtp.e05 true))
                                       (and (or (not (= rtp.g05 true))
                                               (= rtp.X4 (- rtp.__rtp_7_c 1)))
                                            (or (not (= rtp.g05 false))
                                               (= rtp.X4 rtp.__rtp_7_c))
                                       ))
                                    (or (not (= rtp.e05 false))
                                       (= rtp.X4 rtp.__rtp_7_c))
                               ))
                       ))
               ))
       )
       (= rtp.__rtp_7_x rtp.X4)
       (and (or (not (= rtp.__rtp_1 true))
               (= rtp.X5 0))
            (or (not (= rtp.__rtp_1 false))
               (and (or (not (= rtp.e04 true))
                       (and (or (not (= rtp.g04 true))
                               (= rtp.X5 (+ rtp.__rtp_6_c 1)))
                            (or (not (= rtp.g04 false))
                               (= rtp.X5 rtp.__rtp_6_c))
                       ))
                    (or (not (= rtp.e04 false))
                       (and (or (not (= rtp.e06 true))
                               (and (or (not (= rtp.g06 true))
                                       (= rtp.X5 (- rtp.__rtp_6_c 1)))
                                    (or (not (= rtp.g06 false))
                                       (= rtp.X5 rtp.__rtp_6_c))
                               ))
                            (or (not (= rtp.e06 false))
                               (= rtp.X5 rtp.__rtp_6_c))
                       ))
               ))
       )
       (= rtp.__rtp_6_x rtp.X5)
       (and (or (not (= rtp.__rtp_1 true))
               (= rtp.X6 0))
            (or (not (= rtp.__rtp_1 false))
               (and (or (not (= rtp.e06 true))
                       (and (or (not (= rtp.g06 true))
                               (= rtp.X6 (+ rtp.__rtp_5_c 1)))
                            (or (not (= rtp.g06 false))
                               (= rtp.X6 rtp.__rtp_5_c))
                       ))
                    (or (not (= rtp.e06 false))
                       (and (or (not (= rtp.e07 true))
                               (and (or (not (= rtp.g07 true))
                                       (= rtp.X6 (- rtp.__rtp_5_c 1)))
                                    (or (not (= rtp.g07 false))
                                       (= rtp.X6 rtp.__rtp_5_c))
                               ))
                            (or (not (= rtp.e07 false))
                               (and (or (not (= rtp.e08 true))
                                       (and (or (not (= rtp.g08 true))
                                               (= rtp.X6 (- rtp.__rtp_5_c 1)))
                                            (or (not (= rtp.g08 false))
                                               (= rtp.X6 rtp.__rtp_5_c))
                                       ))
                                    (or (not (= rtp.e08 false))
                                       (and (or (not (= rtp.e09 true))
                                               (and (or (not (= rtp.g09 true))
                                                       (= rtp.X6 (- rtp.__rtp_5_c 1)))
                                                    (or (not (= rtp.g09 false))
                                                       (= rtp.X6 rtp.__rtp_5_c))
                                               ))
                                            (or (not (= rtp.e09 false))
                                               (= rtp.X6 rtp.__rtp_5_c))
                                       ))
                               ))
                       ))
               ))
       )
       (= rtp.__rtp_5_x rtp.X6)
       (and (or (not (= rtp.__rtp_1 true))
               (= rtp.X7 0))
            (or (not (= rtp.__rtp_1 false))
               (and (or (not (= rtp.e08 true))
                       (and (or (not (= rtp.g08 true))
                               (= rtp.X7 (+ rtp.__rtp_4_c 1)))
                            (or (not (= rtp.g08 false))
                               (= rtp.X7 rtp.__rtp_4_c))
                       ))
                    (or (not (= rtp.e08 false))
                       (and (or (not (= rtp.e10 true))
                               (and (or (not (= rtp.g10 true))
                                       (= rtp.X7 (- rtp.__rtp_4_c 1)))
                                    (or (not (= rtp.g10 false))
                                       (= rtp.X7 rtp.__rtp_4_c))
                               ))
                            (or (not (= rtp.e10 false))
                               (= rtp.X7 rtp.__rtp_4_c))
                       ))
               ))
       )
       (= rtp.__rtp_4_x rtp.X7)
       (and (or (not (= rtp.__rtp_1 true))
               (= rtp.X8 0))
            (or (not (= rtp.__rtp_1 false))
               (and (or (not (= rtp.e09 true))
                       (and (or (not (= rtp.g09 true))
                               (= rtp.X8 (+ rtp.__rtp_3_c 1)))
                            (or (not (= rtp.g09 false))
                               (= rtp.X8 rtp.__rtp_3_c))
                       ))
                    (or (not (= rtp.e09 false))
                       (and (or (not (= rtp.e11 true))
                               (and (or (not (= rtp.g11 true))
                                       (= rtp.X8 (- rtp.__rtp_3_c 1)))
                                    (or (not (= rtp.g11 false))
                                       (= rtp.X8 rtp.__rtp_3_c))
                               ))
                            (or (not (= rtp.e11 false))
                               (= rtp.X8 rtp.__rtp_3_c))
                       ))
               ))
       )
       (= rtp.__rtp_3_x rtp.X8)
       (and (or (not (= rtp.__rtp_1 true))
               (= rtp.X9 0))
            (or (not (= rtp.__rtp_1 false))
               (and (or (not (= rtp.e05 true))
                       (and (or (not (= rtp.g05 true))
                               (= rtp.X9 (+ rtp.__rtp_2_c 1)))
                            (or (not (= rtp.g05 false))
                               (= rtp.X9 rtp.__rtp_2_c))
                       ))
                    (or (not (= rtp.e05 false))
                       (and (or (not (= rtp.e07 true))
                               (and (or (not (= rtp.g07 true))
                                       (= rtp.X9 (+ rtp.__rtp_2_c 1)))
                                    (or (not (= rtp.g07 false))
                                       (= rtp.X9 rtp.__rtp_2_c))
                               ))
                            (or (not (= rtp.e07 false))
                               (and (or (not (= rtp.e10 true))
                                       (and (or (not (= rtp.g10 true))
                                               (= rtp.X9 (+ rtp.__rtp_2_c 1)))
                                            (or (not (= rtp.g10 false))
                                               (= rtp.X9 rtp.__rtp_2_c))
                                       ))
                                    (or (not (= rtp.e10 false))
                                       (and (or (not (= rtp.e11 true))
                                               (and (or (not (= rtp.g11 true))
                                                       (= rtp.X9 (+ rtp.__rtp_2_c 1)))
                                                    (or (not (= rtp.g11 false))
                                                       (= rtp.X9 rtp.__rtp_2_c))
                                               ))
                                            (or (not (= rtp.e11 false))
                                               (and (or (not (= rtp.e12 true))
                                                       (and (or (not (= rtp.g12 true))
                                                               (= rtp.X9 (- rtp.__rtp_2_c 1)))
                                                            (or (not (= rtp.g12 false))
                                                               (= rtp.X9 rtp.__rtp_2_c))
                                                       ))
                                                    (or (not (= rtp.e12 false))
                                                       (= rtp.X9 rtp.__rtp_2_c))
                                               ))
                                       ))
                               ))
                       ))
               ))
       )
       (= rtp.__rtp_2_x rtp.X9)
       (= rtp.__rtp_10_x rtp.X1)
       )
  (rtp_step rtp.e01
            rtp.e02
            rtp.e03
            rtp.e04
            rtp.e05
            rtp.e06
            rtp.e07
            rtp.e08
            rtp.e09
            rtp.e10
            rtp.e11
            rtp.e12
            rtp.X1
            rtp.X2
            rtp.X3
            rtp.X4
            rtp.X5
            rtp.X6
            rtp.X7
            rtp.X8
            rtp.X9
            rtp.erreur
            rtp.__rtp_10_c
            rtp.__rtp_2_c
            rtp.__rtp_3_c
            rtp.__rtp_4_c
            rtp.__rtp_5_c
            rtp.__rtp_6_c
            rtp.__rtp_7_c
            rtp.__rtp_8_c
            rtp.__rtp_9_c
            rtp.ni_2._arrow._first_c
            rtp.__rtp_10_x
            rtp.__rtp_2_x
            rtp.__rtp_3_x
            rtp.__rtp_4_x
            rtp.__rtp_5_x
            rtp.__rtp_6_x
            rtp.__rtp_7_x
            rtp.__rtp_8_x
            rtp.__rtp_9_x
            rtp.ni_2._arrow._first_x)
))

; top
(declare-var top.e01 Bool)
(declare-var top.e02 Bool)
(declare-var top.e03 Bool)
(declare-var top.e04 Bool)
(declare-var top.e05 Bool)
(declare-var top.e06 Bool)
(declare-var top.e07 Bool)
(declare-var top.e08 Bool)
(declare-var top.e09 Bool)
(declare-var top.e10 Bool)
(declare-var top.e11 Bool)
(declare-var top.e12 Bool)
(declare-var top.OK Bool)
(declare-var top.ni_0.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_0.Sofar.ni_3._arrow._first_c Bool)
(declare-var top.ni_1.rtp.__rtp_10_c Int)
(declare-var top.ni_1.rtp.__rtp_2_c Int)
(declare-var top.ni_1.rtp.__rtp_3_c Int)
(declare-var top.ni_1.rtp.__rtp_4_c Int)
(declare-var top.ni_1.rtp.__rtp_5_c Int)
(declare-var top.ni_1.rtp.__rtp_6_c Int)
(declare-var top.ni_1.rtp.__rtp_7_c Int)
(declare-var top.ni_1.rtp.__rtp_8_c Int)
(declare-var top.ni_1.rtp.__rtp_9_c Int)
(declare-var top.ni_1.rtp.ni_2._arrow._first_c Bool)
(declare-var top.ni_0.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_0.Sofar.ni_3._arrow._first_m Bool)
(declare-var top.ni_1.rtp.__rtp_10_m Int)
(declare-var top.ni_1.rtp.__rtp_2_m Int)
(declare-var top.ni_1.rtp.__rtp_3_m Int)
(declare-var top.ni_1.rtp.__rtp_4_m Int)
(declare-var top.ni_1.rtp.__rtp_5_m Int)
(declare-var top.ni_1.rtp.__rtp_6_m Int)
(declare-var top.ni_1.rtp.__rtp_7_m Int)
(declare-var top.ni_1.rtp.__rtp_8_m Int)
(declare-var top.ni_1.rtp.__rtp_9_m Int)
(declare-var top.ni_1.rtp.ni_2._arrow._first_m Bool)
(declare-var top.ni_0.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_0.Sofar.ni_3._arrow._first_x Bool)
(declare-var top.ni_1.rtp.__rtp_10_x Int)
(declare-var top.ni_1.rtp.__rtp_2_x Int)
(declare-var top.ni_1.rtp.__rtp_3_x Int)
(declare-var top.ni_1.rtp.__rtp_4_x Int)
(declare-var top.ni_1.rtp.__rtp_5_x Int)
(declare-var top.ni_1.rtp.__rtp_6_x Int)
(declare-var top.ni_1.rtp.__rtp_7_x Int)
(declare-var top.ni_1.rtp.__rtp_8_x Int)
(declare-var top.ni_1.rtp.__rtp_9_x Int)
(declare-var top.ni_1.rtp.ni_2._arrow._first_x Bool)
(declare-var top.X1 Int)
(declare-var top.X2 Int)
(declare-var top.X3 Int)
(declare-var top.X4 Int)
(declare-var top.X5 Int)
(declare-var top.X6 Int)
(declare-var top.X7 Int)
(declare-var top.X8 Int)
(declare-var top.X9 Int)
(declare-var top.__top_1 Bool)
(declare-var top.env Bool)
(declare-var top.erreur Bool)
(declare-rel top_reset (Bool Bool Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Bool))

(rule (=> 
  (and 
       
       (rtp_reset top.ni_1.rtp.__rtp_10_c top.ni_1.rtp.__rtp_2_c
                  top.ni_1.rtp.__rtp_3_c top.ni_1.rtp.__rtp_4_c
                  top.ni_1.rtp.__rtp_5_c top.ni_1.rtp.__rtp_6_c
                  top.ni_1.rtp.__rtp_7_c top.ni_1.rtp.__rtp_8_c
                  top.ni_1.rtp.__rtp_9_c top.ni_1.rtp.ni_2._arrow._first_c
                  top.ni_1.rtp.__rtp_10_m top.ni_1.rtp.__rtp_2_m
                  top.ni_1.rtp.__rtp_3_m top.ni_1.rtp.__rtp_4_m
                  top.ni_1.rtp.__rtp_5_m top.ni_1.rtp.__rtp_6_m
                  top.ni_1.rtp.__rtp_7_m top.ni_1.rtp.__rtp_8_m
                  top.ni_1.rtp.__rtp_9_m top.ni_1.rtp.ni_2._arrow._first_m)
       (Sofar_reset top.ni_0.Sofar.__Sofar_2_c
                    top.ni_0.Sofar.ni_3._arrow._first_c
                    top.ni_0.Sofar.__Sofar_2_m
                    top.ni_0.Sofar.ni_3._arrow._first_m)
  )
  (top_reset top.ni_0.Sofar.__Sofar_2_c
             top.ni_0.Sofar.ni_3._arrow._first_c
             top.ni_1.rtp.__rtp_10_c
             top.ni_1.rtp.__rtp_2_c
             top.ni_1.rtp.__rtp_3_c
             top.ni_1.rtp.__rtp_4_c
             top.ni_1.rtp.__rtp_5_c
             top.ni_1.rtp.__rtp_6_c
             top.ni_1.rtp.__rtp_7_c
             top.ni_1.rtp.__rtp_8_c
             top.ni_1.rtp.__rtp_9_c
             top.ni_1.rtp.ni_2._arrow._first_c
             top.ni_0.Sofar.__Sofar_2_m
             top.ni_0.Sofar.ni_3._arrow._first_m
             top.ni_1.rtp.__rtp_10_m
             top.ni_1.rtp.__rtp_2_m
             top.ni_1.rtp.__rtp_3_m
             top.ni_1.rtp.__rtp_4_m
             top.ni_1.rtp.__rtp_5_m
             top.ni_1.rtp.__rtp_6_m
             top.ni_1.rtp.__rtp_7_m
             top.ni_1.rtp.__rtp_8_m
             top.ni_1.rtp.__rtp_9_m
             top.ni_1.rtp.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (excludes12_fun top.e01
                       top.e02
                       top.e03
                       top.e04
                       top.e05
                       top.e06
                       top.e07
                       top.e08
                       top.e09
                       top.e10
                       top.e11
                       top.e12
                       top.__top_1)
       (and (= top.ni_1.rtp.__rtp_10_m top.ni_1.rtp.__rtp_10_c)
            (= top.ni_1.rtp.__rtp_2_m top.ni_1.rtp.__rtp_2_c)
            (= top.ni_1.rtp.__rtp_3_m top.ni_1.rtp.__rtp_3_c)
            (= top.ni_1.rtp.__rtp_4_m top.ni_1.rtp.__rtp_4_c)
            (= top.ni_1.rtp.__rtp_5_m top.ni_1.rtp.__rtp_5_c)
            (= top.ni_1.rtp.__rtp_6_m top.ni_1.rtp.__rtp_6_c)
            (= top.ni_1.rtp.__rtp_7_m top.ni_1.rtp.__rtp_7_c)
            (= top.ni_1.rtp.__rtp_8_m top.ni_1.rtp.__rtp_8_c)
            (= top.ni_1.rtp.__rtp_9_m top.ni_1.rtp.__rtp_9_c)
            (= top.ni_1.rtp.ni_2._arrow._first_m top.ni_1.rtp.ni_2._arrow._first_c)
            )
       (rtp_step top.e01
                 top.e02
                 top.e03
                 top.e04
                 top.e05
                 top.e06
                 top.e07
                 top.e08
                 top.e09
                 top.e10
                 top.e11
                 top.e12
                 top.X1
                 top.X2
                 top.X3
                 top.X4
                 top.X5
                 top.X6
                 top.X7
                 top.X8
                 top.X9
                 top.erreur
                 top.ni_1.rtp.__rtp_10_m
                 top.ni_1.rtp.__rtp_2_m
                 top.ni_1.rtp.__rtp_3_m
                 top.ni_1.rtp.__rtp_4_m
                 top.ni_1.rtp.__rtp_5_m
                 top.ni_1.rtp.__rtp_6_m
                 top.ni_1.rtp.__rtp_7_m
                 top.ni_1.rtp.__rtp_8_m
                 top.ni_1.rtp.__rtp_9_m
                 top.ni_1.rtp.ni_2._arrow._first_m
                 top.ni_1.rtp.__rtp_10_x
                 top.ni_1.rtp.__rtp_2_x
                 top.ni_1.rtp.__rtp_3_x
                 top.ni_1.rtp.__rtp_4_x
                 top.ni_1.rtp.__rtp_5_x
                 top.ni_1.rtp.__rtp_6_x
                 top.ni_1.rtp.__rtp_7_x
                 top.ni_1.rtp.__rtp_8_x
                 top.ni_1.rtp.__rtp_9_x
                 top.ni_1.rtp.ni_2._arrow._first_x)
       (and (= top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.__Sofar_2_c)
            (= top.ni_0.Sofar.ni_3._arrow._first_m top.ni_0.Sofar.ni_3._arrow._first_c)
            )
       (Sofar_step (and top.__top_1 (< top.X2 32767))
                   top.env
                   top.ni_0.Sofar.__Sofar_2_m
                   top.ni_0.Sofar.ni_3._arrow._first_m
                   top.ni_0.Sofar.__Sofar_2_x
                   top.ni_0.Sofar.ni_3._arrow._first_x)
       (= top.OK (=> top.env (>= top.X2 0)))
       )
  (top_step top.e01
            top.e02
            top.e03
            top.e04
            top.e05
            top.e06
            top.e07
            top.e08
            top.e09
            top.e10
            top.e11
            top.e12
            top.OK
            top.ni_0.Sofar.__Sofar_2_c
            top.ni_0.Sofar.ni_3._arrow._first_c
            top.ni_1.rtp.__rtp_10_c
            top.ni_1.rtp.__rtp_2_c
            top.ni_1.rtp.__rtp_3_c
            top.ni_1.rtp.__rtp_4_c
            top.ni_1.rtp.__rtp_5_c
            top.ni_1.rtp.__rtp_6_c
            top.ni_1.rtp.__rtp_7_c
            top.ni_1.rtp.__rtp_8_c
            top.ni_1.rtp.__rtp_9_c
            top.ni_1.rtp.ni_2._arrow._first_c
            top.ni_0.Sofar.__Sofar_2_x
            top.ni_0.Sofar.ni_3._arrow._first_x
            top.ni_1.rtp.__rtp_10_x
            top.ni_1.rtp.__rtp_2_x
            top.ni_1.rtp.__rtp_3_x
            top.ni_1.rtp.__rtp_4_x
            top.ni_1.rtp.__rtp_5_x
            top.ni_1.rtp.__rtp_6_x
            top.ni_1.rtp.__rtp_7_x
            top.ni_1.rtp.__rtp_8_x
            top.ni_1.rtp.__rtp_9_x
            top.ni_1.rtp.ni_2._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Bool Int Int Int Int Int Int Int Int Int Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_3._arrow._first_c top.ni_1.rtp.__rtp_10_c top.ni_1.rtp.__rtp_2_c top.ni_1.rtp.__rtp_3_c top.ni_1.rtp.__rtp_4_c top.ni_1.rtp.__rtp_5_c top.ni_1.rtp.__rtp_6_c top.ni_1.rtp.__rtp_7_c top.ni_1.rtp.__rtp_8_c top.ni_1.rtp.__rtp_9_c top.ni_1.rtp.ni_2._arrow._first_c top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.ni_3._arrow._first_m top.ni_1.rtp.__rtp_10_m top.ni_1.rtp.__rtp_2_m top.ni_1.rtp.__rtp_3_m top.ni_1.rtp.__rtp_4_m top.ni_1.rtp.__rtp_5_m top.ni_1.rtp.__rtp_6_m top.ni_1.rtp.__rtp_7_m top.ni_1.rtp.__rtp_8_m top.ni_1.rtp.__rtp_9_m top.ni_1.rtp.ni_2._arrow._first_m)
       (top_step top.e01 top.e02 top.e03 top.e04 top.e05 top.e06 top.e07 top.e08 top.e09 top.e10 top.e11 top.e12 top.OK top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.ni_3._arrow._first_m top.ni_1.rtp.__rtp_10_m top.ni_1.rtp.__rtp_2_m top.ni_1.rtp.__rtp_3_m top.ni_1.rtp.__rtp_4_m top.ni_1.rtp.__rtp_5_m top.ni_1.rtp.__rtp_6_m top.ni_1.rtp.__rtp_7_m top.ni_1.rtp.__rtp_8_m top.ni_1.rtp.__rtp_9_m top.ni_1.rtp.ni_2._arrow._first_m top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.rtp.__rtp_10_x top.ni_1.rtp.__rtp_2_x top.ni_1.rtp.__rtp_3_x top.ni_1.rtp.__rtp_4_x top.ni_1.rtp.__rtp_5_x top.ni_1.rtp.__rtp_6_x top.ni_1.rtp.__rtp_7_x top.ni_1.rtp.__rtp_8_x top.ni_1.rtp.__rtp_9_x top.ni_1.rtp.ni_2._arrow._first_x)
  )
  (MAIN top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.rtp.__rtp_10_x top.ni_1.rtp.__rtp_2_x top.ni_1.rtp.__rtp_3_x top.ni_1.rtp.__rtp_4_x top.ni_1.rtp.__rtp_5_x top.ni_1.rtp.__rtp_6_x top.ni_1.rtp.__rtp_7_x top.ni_1.rtp.__rtp_8_x top.ni_1.rtp.__rtp_9_x top.ni_1.rtp.ni_2._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_3._arrow._first_c top.ni_1.rtp.__rtp_10_c top.ni_1.rtp.__rtp_2_c top.ni_1.rtp.__rtp_3_c top.ni_1.rtp.__rtp_4_c top.ni_1.rtp.__rtp_5_c top.ni_1.rtp.__rtp_6_c top.ni_1.rtp.__rtp_7_c top.ni_1.rtp.__rtp_8_c top.ni_1.rtp.__rtp_9_c top.ni_1.rtp.ni_2._arrow._first_c dummytop.OK)
       (top_step top.e01 top.e02 top.e03 top.e04 top.e05 top.e06 top.e07 top.e08 top.e09 top.e10 top.e11 top.e12 top.OK top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_3._arrow._first_c top.ni_1.rtp.__rtp_10_c top.ni_1.rtp.__rtp_2_c top.ni_1.rtp.__rtp_3_c top.ni_1.rtp.__rtp_4_c top.ni_1.rtp.__rtp_5_c top.ni_1.rtp.__rtp_6_c top.ni_1.rtp.__rtp_7_c top.ni_1.rtp.__rtp_8_c top.ni_1.rtp.__rtp_9_c top.ni_1.rtp.ni_2._arrow._first_c top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.rtp.__rtp_10_x top.ni_1.rtp.__rtp_2_x top.ni_1.rtp.__rtp_3_x top.ni_1.rtp.__rtp_4_x top.ni_1.rtp.__rtp_5_x top.ni_1.rtp.__rtp_6_x top.ni_1.rtp.__rtp_7_x top.ni_1.rtp.__rtp_8_x top.ni_1.rtp.__rtp_9_x top.ni_1.rtp.ni_2._arrow._first_x)
  )
  (MAIN top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.rtp.__rtp_10_x top.ni_1.rtp.__rtp_2_x top.ni_1.rtp.__rtp_3_x top.ni_1.rtp.__rtp_4_x top.ni_1.rtp.__rtp_5_x top.ni_1.rtp.__rtp_6_x top.ni_1.rtp.__rtp_7_x top.ni_1.rtp.__rtp_8_x top.ni_1.rtp.__rtp_9_x top.ni_1.rtp.ni_2._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.rtp.__rtp_10_x top.ni_1.rtp.__rtp_2_x top.ni_1.rtp.__rtp_3_x top.ni_1.rtp.__rtp_4_x top.ni_1.rtp.__rtp_5_x top.ni_1.rtp.__rtp_6_x top.ni_1.rtp.__rtp_7_x top.ni_1.rtp.__rtp_8_x top.ni_1.rtp.__rtp_9_x top.ni_1.rtp.ni_2._arrow._first_x top.OK))
  ERR))
(query ERR)
