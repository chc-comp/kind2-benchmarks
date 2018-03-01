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

; peterson
(declare-var peterson.e01 Bool)
(declare-var peterson.e02 Bool)
(declare-var peterson.e03 Bool)
(declare-var peterson.e04 Bool)
(declare-var peterson.e05 Bool)
(declare-var peterson.e06 Bool)
(declare-var peterson.e07 Bool)
(declare-var peterson.e08 Bool)
(declare-var peterson.e09 Bool)
(declare-var peterson.e10 Bool)
(declare-var peterson.e11 Bool)
(declare-var peterson.e12 Bool)
(declare-var peterson.x0 Int)
(declare-var peterson.x1 Int)
(declare-var peterson.x2 Int)
(declare-var peterson.x3 Int)
(declare-var peterson.x4 Int)
(declare-var peterson.x5 Int)
(declare-var peterson.x6 Int)
(declare-var peterson.x7 Int)
(declare-var peterson.x8 Int)
(declare-var peterson.x9 Int)
(declare-var peterson.x10 Int)
(declare-var peterson.x11 Int)
(declare-var peterson.x12 Int)
(declare-var peterson.x13 Int)
(declare-var peterson.__peterson_10_c Int)
(declare-var peterson.__peterson_11_c Int)
(declare-var peterson.__peterson_12_c Int)
(declare-var peterson.__peterson_13_c Int)
(declare-var peterson.__peterson_14_c Int)
(declare-var peterson.__peterson_15_c Int)
(declare-var peterson.__peterson_2_c Int)
(declare-var peterson.__peterson_3_c Int)
(declare-var peterson.__peterson_4_c Int)
(declare-var peterson.__peterson_5_c Int)
(declare-var peterson.__peterson_6_c Int)
(declare-var peterson.__peterson_7_c Int)
(declare-var peterson.__peterson_8_c Int)
(declare-var peterson.__peterson_9_c Int)
(declare-var peterson.ni_2._arrow._first_c Bool)
(declare-var peterson.__peterson_10_m Int)
(declare-var peterson.__peterson_11_m Int)
(declare-var peterson.__peterson_12_m Int)
(declare-var peterson.__peterson_13_m Int)
(declare-var peterson.__peterson_14_m Int)
(declare-var peterson.__peterson_15_m Int)
(declare-var peterson.__peterson_2_m Int)
(declare-var peterson.__peterson_3_m Int)
(declare-var peterson.__peterson_4_m Int)
(declare-var peterson.__peterson_5_m Int)
(declare-var peterson.__peterson_6_m Int)
(declare-var peterson.__peterson_7_m Int)
(declare-var peterson.__peterson_8_m Int)
(declare-var peterson.__peterson_9_m Int)
(declare-var peterson.ni_2._arrow._first_m Bool)
(declare-var peterson.__peterson_10_x Int)
(declare-var peterson.__peterson_11_x Int)
(declare-var peterson.__peterson_12_x Int)
(declare-var peterson.__peterson_13_x Int)
(declare-var peterson.__peterson_14_x Int)
(declare-var peterson.__peterson_15_x Int)
(declare-var peterson.__peterson_2_x Int)
(declare-var peterson.__peterson_3_x Int)
(declare-var peterson.__peterson_4_x Int)
(declare-var peterson.__peterson_5_x Int)
(declare-var peterson.__peterson_6_x Int)
(declare-var peterson.__peterson_7_x Int)
(declare-var peterson.__peterson_8_x Int)
(declare-var peterson.__peterson_9_x Int)
(declare-var peterson.ni_2._arrow._first_x Bool)
(declare-var peterson.__peterson_1 Bool)
(declare-var peterson.g01 Bool)
(declare-var peterson.g02 Bool)
(declare-var peterson.g03 Bool)
(declare-var peterson.g04 Bool)
(declare-var peterson.g05 Bool)
(declare-var peterson.g06 Bool)
(declare-var peterson.g07 Bool)
(declare-var peterson.g08 Bool)
(declare-var peterson.g09 Bool)
(declare-var peterson.g10 Bool)
(declare-var peterson.g11 Bool)
(declare-var peterson.g12 Bool)
(declare-rel peterson_reset (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool))
(declare-rel peterson_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool))

(rule (=> 
  (and 
       (= peterson.__peterson_10_m peterson.__peterson_10_c)
       (= peterson.__peterson_11_m peterson.__peterson_11_c)
       (= peterson.__peterson_12_m peterson.__peterson_12_c)
       (= peterson.__peterson_13_m peterson.__peterson_13_c)
       (= peterson.__peterson_14_m peterson.__peterson_14_c)
       (= peterson.__peterson_15_m peterson.__peterson_15_c)
       (= peterson.__peterson_2_m peterson.__peterson_2_c)
       (= peterson.__peterson_3_m peterson.__peterson_3_c)
       (= peterson.__peterson_4_m peterson.__peterson_4_c)
       (= peterson.__peterson_5_m peterson.__peterson_5_c)
       (= peterson.__peterson_6_m peterson.__peterson_6_c)
       (= peterson.__peterson_7_m peterson.__peterson_7_c)
       (= peterson.__peterson_8_m peterson.__peterson_8_c)
       (= peterson.__peterson_9_m peterson.__peterson_9_c)
       (= peterson.ni_2._arrow._first_m true)
  )
  (peterson_reset peterson.__peterson_10_c
                  peterson.__peterson_11_c
                  peterson.__peterson_12_c
                  peterson.__peterson_13_c
                  peterson.__peterson_14_c
                  peterson.__peterson_15_c
                  peterson.__peterson_2_c
                  peterson.__peterson_3_c
                  peterson.__peterson_4_c
                  peterson.__peterson_5_c
                  peterson.__peterson_6_c
                  peterson.__peterson_7_c
                  peterson.__peterson_8_c
                  peterson.__peterson_9_c
                  peterson.ni_2._arrow._first_c
                  peterson.__peterson_10_m
                  peterson.__peterson_11_m
                  peterson.__peterson_12_m
                  peterson.__peterson_13_m
                  peterson.__peterson_14_m
                  peterson.__peterson_15_m
                  peterson.__peterson_2_m
                  peterson.__peterson_3_m
                  peterson.__peterson_4_m
                  peterson.__peterson_5_m
                  peterson.__peterson_6_m
                  peterson.__peterson_7_m
                  peterson.__peterson_8_m
                  peterson.__peterson_9_m
                  peterson.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= peterson.g12 (and (>= peterson.__peterson_7_c 1) (>= peterson.__peterson_2_c 1)))
       (= peterson.g07 (and (>= peterson.__peterson_6_c 1) (>= peterson.__peterson_5_c 1)))
       (= peterson.ni_2._arrow._first_m peterson.ni_2._arrow._first_c)
       (and (= peterson.__peterson_1 (ite peterson.ni_2._arrow._first_m true false))
            (= peterson.ni_2._arrow._first_x false))
       (and (or (not (= peterson.__peterson_1 false))
               (and (or (not (= peterson.e07 false))
                       (and (or (not (= peterson.e12 false))
                               (and (= peterson.x9 peterson.__peterson_6_c)
                                    (= peterson.x8 peterson.__peterson_7_c)
                                    ))
                            (or (not (= peterson.e12 true))
                               (and (or (not (= peterson.g12 false))
                                       (and (= peterson.x9 peterson.__peterson_6_c)
                                            (= peterson.x8 peterson.__peterson_7_c)
                                            ))
                                    (or (not (= peterson.g12 true))
                                       (and (= peterson.x9 (+ peterson.__peterson_6_c 1))
                                            (= peterson.x8 (- peterson.__peterson_7_c 1))
                                            ))
                               ))
                       ))
                    (or (not (= peterson.e07 true))
                       (and (or (not (= peterson.g07 false))
                               (and (= peterson.x9 peterson.__peterson_6_c)
                                    (= peterson.x8 peterson.__peterson_7_c)
                                    ))
                            (or (not (= peterson.g07 true))
                               (and (= peterson.x9 (- peterson.__peterson_6_c 1))
                                    (= peterson.x8 (+ peterson.__peterson_7_c 1))
                                    ))
                       ))
               ))
            (or (not (= peterson.__peterson_1 true))
               (and (= peterson.x9 1)
                    (= peterson.x8 0)
                    ))
       )
       (= peterson.g08 (and (>= peterson.__peterson_8_c 1) (>= peterson.__peterson_4_c 1)))
       (= peterson.g02 (and (>= peterson.__peterson_14_c 1) (>= peterson.__peterson_9_c 1)))
       (and (or (not (= peterson.__peterson_1 false))
               (and (or (not (= peterson.e02 false))
                       (and (or (not (= peterson.e08 false))
                               (and (= peterson.x7 peterson.__peterson_8_c)
                                    (= peterson.x6 peterson.__peterson_9_c)
                                    ))
                            (or (not (= peterson.e08 true))
                               (and (or (not (= peterson.g08 false))
                                       (and (= peterson.x7 peterson.__peterson_8_c)
                                            (= peterson.x6 peterson.__peterson_9_c)
                                            ))
                                    (or (not (= peterson.g08 true))
                                       (and (= peterson.x7 (- peterson.__peterson_8_c 1))
                                            (= peterson.x6 (+ peterson.__peterson_9_c 1))
                                            ))
                               ))
                       ))
                    (or (not (= peterson.e02 true))
                       (and (or (not (= peterson.g02 false))
                               (and (= peterson.x7 peterson.__peterson_8_c)
                                    (= peterson.x6 peterson.__peterson_9_c)
                                    ))
                            (or (not (= peterson.g02 true))
                               (and (= peterson.x7 (+ peterson.__peterson_8_c 1))
                                    (= peterson.x6 (- peterson.__peterson_9_c 1))
                                    ))
                       ))
               ))
            (or (not (= peterson.__peterson_1 true))
               (and (= peterson.x7 1)
                    (= peterson.x6 0)
                    ))
       )
       (= peterson.g06 (and (>= peterson.__peterson_12_c 1) (>= peterson.__peterson_10_c 1)))
       (= peterson.g01 (and (>= peterson.__peterson_15_c 1) (>= peterson.__peterson_11_c 1)))
       (and (or (not (= peterson.__peterson_1 false))
               (and (or (not (= peterson.e01 false))
                       (and (or (not (= peterson.e06 false))
                               (and (= peterson.x5 peterson.__peterson_10_c)
                                    (= peterson.x4 peterson.__peterson_11_c)
                                    ))
                            (or (not (= peterson.e06 true))
                               (and (or (not (= peterson.g06 false))
                                       (and (= peterson.x5 peterson.__peterson_10_c)
                                            (= peterson.x4 peterson.__peterson_11_c)
                                            ))
                                    (or (not (= peterson.g06 true))
                                       (and (= peterson.x5 (- peterson.__peterson_10_c 1))
                                            (= peterson.x4 (+ peterson.__peterson_11_c 1))
                                            ))
                               ))
                       ))
                    (or (not (= peterson.e01 true))
                       (and (or (not (= peterson.g01 false))
                               (and (= peterson.x5 peterson.__peterson_10_c)
                                    (= peterson.x4 peterson.__peterson_11_c)
                                    ))
                            (or (not (= peterson.g01 true))
                               (and (= peterson.x5 (+ peterson.__peterson_10_c 1))
                                    (= peterson.x4 (- peterson.__peterson_11_c 1))
                                    ))
                       ))
               ))
            (or (not (= peterson.__peterson_1 true))
               (and (= peterson.x5 0)
                    (= peterson.x4 1)
                    ))
       )
       (= peterson.g05 (and (>= peterson.__peterson_13_c 1) (>= peterson.__peterson_9_c 1)))
       (= peterson.g04 (and (>= peterson.__peterson_13_c 1) (>= peterson.__peterson_6_c 1)))
       (and (or (not (= peterson.__peterson_1 true))
               (= peterson.x3 0))
            (or (not (= peterson.__peterson_1 false))
               (and (or (not (= peterson.e04 true))
                       (and (or (not (= peterson.g04 true))
                               (= peterson.x3 (+ peterson.__peterson_12_c 1)))
                            (or (not (= peterson.g04 false))
                               (= peterson.x3 peterson.__peterson_12_c))
                       ))
                    (or (not (= peterson.e04 false))
                       (and (or (not (= peterson.e05 true))
                               (and (or (not (= peterson.g05 true))
                                       (= peterson.x3 (+ peterson.__peterson_12_c 1)))
                                    (or (not (= peterson.g05 false))
                                       (= peterson.x3 peterson.__peterson_12_c))
                               ))
                            (or (not (= peterson.e05 false))
                               (and (or (not (= peterson.e06 true))
                                       (and (or (not (= peterson.g06 true))
                                               (= peterson.x3 (- peterson.__peterson_12_c 1)))
                                            (or (not (= peterson.g06 false))
                                               (= peterson.x3 peterson.__peterson_12_c))
                                       ))
                                    (or (not (= peterson.e06 false))
                                       (= peterson.x3 peterson.__peterson_12_c))
                               ))
                       ))
               ))
       )
       (= peterson.g03 (and (>= peterson.__peterson_14_c 1) (>= peterson.__peterson_8_c 1)))
       (and (or (not (= peterson.__peterson_1 true))
               (= peterson.x2 0))
            (or (not (= peterson.__peterson_1 false))
               (and (or (not (= peterson.e02 true))
                       (and (or (not (= peterson.g02 true))
                               (= peterson.x2 (+ peterson.__peterson_13_c 1)))
                            (or (not (= peterson.g02 false))
                               (= peterson.x2 peterson.__peterson_13_c))
                       ))
                    (or (not (= peterson.e02 false))
                       (and (or (not (= peterson.e03 true))
                               (and (or (not (= peterson.g03 true))
                                       (= peterson.x2 (+ peterson.__peterson_13_c 1)))
                                    (or (not (= peterson.g03 false))
                                       (= peterson.x2 peterson.__peterson_13_c))
                               ))
                            (or (not (= peterson.e03 false))
                               (and (or (not (= peterson.e04 true))
                                       (and (or (not (= peterson.g04 true))
                                               (= peterson.x2 (- peterson.__peterson_13_c 1)))
                                            (or (not (= peterson.g04 false))
                                               (= peterson.x2 peterson.__peterson_13_c))
                                       ))
                                    (or (not (= peterson.e04 false))
                                       (and (or (not (= peterson.e05 true))
                                               (and (or (not (= peterson.g05 true))
                                                       (= peterson.x2 (- peterson.__peterson_13_c 1)))
                                                    (or (not (= peterson.g05 false))
                                                       (= peterson.x2 peterson.__peterson_13_c))
                                               ))
                                            (or (not (= peterson.e05 false))
                                               (= peterson.x2 peterson.__peterson_13_c))
                                       ))
                               ))
                       ))
               ))
       )
       (= peterson.g11 (and (>= peterson.__peterson_8_c 1) (>= peterson.__peterson_3_c 1)))
       (= peterson.g10 (and (>= peterson.__peterson_11_c 1) (>= peterson.__peterson_3_c 1)))
       (and (or (not (= peterson.__peterson_1 true))
               (= peterson.x13 0))
            (or (not (= peterson.__peterson_1 false))
               (and (or (not (= peterson.e10 true))
                       (and (or (not (= peterson.g10 true))
                               (= peterson.x13 (+ peterson.__peterson_2_c 1)))
                            (or (not (= peterson.g10 false))
                               (= peterson.x13 peterson.__peterson_2_c))
                       ))
                    (or (not (= peterson.e10 false))
                       (and (or (not (= peterson.e11 true))
                               (and (or (not (= peterson.g11 true))
                                       (= peterson.x13 (+ peterson.__peterson_2_c 1)))
                                    (or (not (= peterson.g11 false))
                                       (= peterson.x13 peterson.__peterson_2_c))
                               ))
                            (or (not (= peterson.e11 false))
                               (and (or (not (= peterson.e12 true))
                                       (and (or (not (= peterson.g12 true))
                                               (= peterson.x13 (- peterson.__peterson_2_c 1)))
                                            (or (not (= peterson.g12 false))
                                               (= peterson.x13 peterson.__peterson_2_c))
                                       ))
                                    (or (not (= peterson.e12 false))
                                       (= peterson.x13 peterson.__peterson_2_c))
                               ))
                       ))
               ))
       )
       (= peterson.g09 (and (>= peterson.__peterson_9_c 1) (>= peterson.__peterson_4_c 1)))
       (and (or (not (= peterson.__peterson_1 false))
               (and (and (or (not (= peterson.e08 true))
                            (and (or (not (= peterson.g08 true))
                                    (= peterson.x12 (+ peterson.__peterson_3_c 1)))
                                 (or (not (= peterson.g08 false))
                                    (= peterson.x12 peterson.__peterson_3_c))
                            ))
                         (or (not (= peterson.e08 false))
                            (and (or (not (= peterson.e09 true))
                                    (and (or (not (= peterson.g09 true))
                                            (= peterson.x12 (+ peterson.__peterson_3_c 1)))
                                         (or (not (= peterson.g09 false))
                                            (= peterson.x12 peterson.__peterson_3_c))
                                    ))
                                 (or (not (= peterson.e09 false))
                                    (and (or (not (= peterson.e10 true))
                                            (and (or (not (= peterson.g10 true))
                                                    (= peterson.x12 (- peterson.__peterson_3_c 1)))
                                                 (or (not (= peterson.g10 false))
                                                    (= peterson.x12 peterson.__peterson_3_c))
                                            ))
                                         (or (not (= peterson.e10 false))
                                            (and (or (not (= peterson.e11 true))
                                                    (and (or (not (= peterson.g11 true))
                                                            (= peterson.x12 (- peterson.__peterson_3_c 1)))
                                                         (or (not (= peterson.g11 false))
                                                            (= peterson.x12 peterson.__peterson_3_c))
                                                    ))
                                                 (or (not (= peterson.e11 false))
                                                    (= peterson.x12 peterson.__peterson_3_c))
                                            ))
                                    ))
                            ))
                    )
                    (and (or (not (= peterson.e07 false))
                            (and (and (or (not (= peterson.e08 true))
                                         (and (or (not (= peterson.g08 true))
                                                 (= peterson.x11 (- peterson.__peterson_4_c 1)))
                                              (or (not (= peterson.g08 false))
                                                 (= peterson.x11 peterson.__peterson_4_c))
                                         ))
                                      (or (not (= peterson.e08 false))
                                         (and (or (not (= peterson.e09 true))
                                                 (and (or (not (= peterson.g09 true))
                                                         (= peterson.x11 (- peterson.__peterson_4_c 1)))
                                                      (or (not (= peterson.g09 false))
                                                         (= peterson.x11 peterson.__peterson_4_c))
                                                 ))
                                              (or (not (= peterson.e09 false))
                                                 (= peterson.x11 peterson.__peterson_4_c))
                                         ))
                                 )
                                 (and (or (not (= peterson.e12 true))
                                         (and (or (not (= peterson.g12 true))
                                                 (= peterson.x10 (+ peterson.__peterson_5_c 1)))
                                              (or (not (= peterson.g12 false))
                                                 (= peterson.x10 peterson.__peterson_5_c))
                                         ))
                                      (or (not (= peterson.e12 false))
                                         (= peterson.x10 peterson.__peterson_5_c))
                                 )
                                 ))
                         (or (not (= peterson.e07 true))
                            (and (or (not (= peterson.g07 false))
                                    (and (= peterson.x11 peterson.__peterson_4_c)
                                         (= peterson.x10 peterson.__peterson_5_c)
                                         ))
                                 (or (not (= peterson.g07 true))
                                    (and (= peterson.x11 (+ peterson.__peterson_4_c 1))
                                         (= peterson.x10 (- peterson.__peterson_5_c 1))
                                         ))
                            ))
                    )
                    (and (or (not (= peterson.e01 false))
                            (and (and (or (not (= peterson.e02 true))
                                         (and (or (not (= peterson.g02 true))
                                                 (= peterson.x1 (- peterson.__peterson_14_c 1)))
                                              (or (not (= peterson.g02 false))
                                                 (= peterson.x1 peterson.__peterson_14_c))
                                         ))
                                      (or (not (= peterson.e02 false))
                                         (and (or (not (= peterson.e03 true))
                                                 (and (or (not (= peterson.g03 true))
                                                         (= peterson.x1 (- peterson.__peterson_14_c 1)))
                                                      (or (not (= peterson.g03 false))
                                                         (= peterson.x1 peterson.__peterson_14_c))
                                                 ))
                                              (or (not (= peterson.e03 false))
                                                 (= peterson.x1 peterson.__peterson_14_c))
                                         ))
                                 )
                                 (and (or (not (= peterson.e06 true))
                                         (and (or (not (= peterson.g06 true))
                                                 (= peterson.x0 (+ peterson.__peterson_15_c 1)))
                                              (or (not (= peterson.g06 false))
                                                 (= peterson.x0 peterson.__peterson_15_c))
                                         ))
                                      (or (not (= peterson.e06 false))
                                         (= peterson.x0 peterson.__peterson_15_c))
                                 )
                                 ))
                         (or (not (= peterson.e01 true))
                            (and (or (not (= peterson.g01 false))
                                    (and (= peterson.x1 peterson.__peterson_14_c)
                                         (= peterson.x0 peterson.__peterson_15_c)
                                         ))
                                 (or (not (= peterson.g01 true))
                                    (and (= peterson.x1 (+ peterson.__peterson_14_c 1))
                                         (= peterson.x0 (- peterson.__peterson_15_c 1))
                                         ))
                            ))
                    )
                    ))
            (or (not (= peterson.__peterson_1 true))
               (and (= peterson.x12 0)
                    (= peterson.x11 0)
                    (= peterson.x10 1)
                    (= peterson.x1 0)
                    (= peterson.x0 1)
                    ))
       )
       (= peterson.__peterson_9_x peterson.x6)
       (= peterson.__peterson_8_x peterson.x7)
       (= peterson.__peterson_7_x peterson.x8)
       (= peterson.__peterson_6_x peterson.x9)
       (= peterson.__peterson_5_x peterson.x10)
       (= peterson.__peterson_4_x peterson.x11)
       (= peterson.__peterson_3_x peterson.x12)
       (= peterson.__peterson_2_x peterson.x13)
       (= peterson.__peterson_15_x peterson.x0)
       (= peterson.__peterson_14_x peterson.x1)
       (= peterson.__peterson_13_x peterson.x2)
       (= peterson.__peterson_12_x peterson.x3)
       (= peterson.__peterson_11_x peterson.x4)
       (= peterson.__peterson_10_x peterson.x5)
       )
  (peterson_step peterson.e01
                 peterson.e02
                 peterson.e03
                 peterson.e04
                 peterson.e05
                 peterson.e06
                 peterson.e07
                 peterson.e08
                 peterson.e09
                 peterson.e10
                 peterson.e11
                 peterson.e12
                 peterson.x0
                 peterson.x1
                 peterson.x2
                 peterson.x3
                 peterson.x4
                 peterson.x5
                 peterson.x6
                 peterson.x7
                 peterson.x8
                 peterson.x9
                 peterson.x10
                 peterson.x11
                 peterson.x12
                 peterson.x13
                 peterson.__peterson_10_c
                 peterson.__peterson_11_c
                 peterson.__peterson_12_c
                 peterson.__peterson_13_c
                 peterson.__peterson_14_c
                 peterson.__peterson_15_c
                 peterson.__peterson_2_c
                 peterson.__peterson_3_c
                 peterson.__peterson_4_c
                 peterson.__peterson_5_c
                 peterson.__peterson_6_c
                 peterson.__peterson_7_c
                 peterson.__peterson_8_c
                 peterson.__peterson_9_c
                 peterson.ni_2._arrow._first_c
                 peterson.__peterson_10_x
                 peterson.__peterson_11_x
                 peterson.__peterson_12_x
                 peterson.__peterson_13_x
                 peterson.__peterson_14_x
                 peterson.__peterson_15_x
                 peterson.__peterson_2_x
                 peterson.__peterson_3_x
                 peterson.__peterson_4_x
                 peterson.__peterson_5_x
                 peterson.__peterson_6_x
                 peterson.__peterson_7_x
                 peterson.__peterson_8_x
                 peterson.__peterson_9_x
                 peterson.ni_2._arrow._first_x)
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
(declare-var top.ni_1.peterson.__peterson_10_c Int)
(declare-var top.ni_1.peterson.__peterson_11_c Int)
(declare-var top.ni_1.peterson.__peterson_12_c Int)
(declare-var top.ni_1.peterson.__peterson_13_c Int)
(declare-var top.ni_1.peterson.__peterson_14_c Int)
(declare-var top.ni_1.peterson.__peterson_15_c Int)
(declare-var top.ni_1.peterson.__peterson_2_c Int)
(declare-var top.ni_1.peterson.__peterson_3_c Int)
(declare-var top.ni_1.peterson.__peterson_4_c Int)
(declare-var top.ni_1.peterson.__peterson_5_c Int)
(declare-var top.ni_1.peterson.__peterson_6_c Int)
(declare-var top.ni_1.peterson.__peterson_7_c Int)
(declare-var top.ni_1.peterson.__peterson_8_c Int)
(declare-var top.ni_1.peterson.__peterson_9_c Int)
(declare-var top.ni_1.peterson.ni_2._arrow._first_c Bool)
(declare-var top.ni_0.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_0.Sofar.ni_3._arrow._first_m Bool)
(declare-var top.ni_1.peterson.__peterson_10_m Int)
(declare-var top.ni_1.peterson.__peterson_11_m Int)
(declare-var top.ni_1.peterson.__peterson_12_m Int)
(declare-var top.ni_1.peterson.__peterson_13_m Int)
(declare-var top.ni_1.peterson.__peterson_14_m Int)
(declare-var top.ni_1.peterson.__peterson_15_m Int)
(declare-var top.ni_1.peterson.__peterson_2_m Int)
(declare-var top.ni_1.peterson.__peterson_3_m Int)
(declare-var top.ni_1.peterson.__peterson_4_m Int)
(declare-var top.ni_1.peterson.__peterson_5_m Int)
(declare-var top.ni_1.peterson.__peterson_6_m Int)
(declare-var top.ni_1.peterson.__peterson_7_m Int)
(declare-var top.ni_1.peterson.__peterson_8_m Int)
(declare-var top.ni_1.peterson.__peterson_9_m Int)
(declare-var top.ni_1.peterson.ni_2._arrow._first_m Bool)
(declare-var top.ni_0.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_0.Sofar.ni_3._arrow._first_x Bool)
(declare-var top.ni_1.peterson.__peterson_10_x Int)
(declare-var top.ni_1.peterson.__peterson_11_x Int)
(declare-var top.ni_1.peterson.__peterson_12_x Int)
(declare-var top.ni_1.peterson.__peterson_13_x Int)
(declare-var top.ni_1.peterson.__peterson_14_x Int)
(declare-var top.ni_1.peterson.__peterson_15_x Int)
(declare-var top.ni_1.peterson.__peterson_2_x Int)
(declare-var top.ni_1.peterson.__peterson_3_x Int)
(declare-var top.ni_1.peterson.__peterson_4_x Int)
(declare-var top.ni_1.peterson.__peterson_5_x Int)
(declare-var top.ni_1.peterson.__peterson_6_x Int)
(declare-var top.ni_1.peterson.__peterson_7_x Int)
(declare-var top.ni_1.peterson.__peterson_8_x Int)
(declare-var top.ni_1.peterson.__peterson_9_x Int)
(declare-var top.ni_1.peterson.ni_2._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.env Bool)
(declare-var top.x0 Int)
(declare-var top.x1 Int)
(declare-var top.x10 Int)
(declare-var top.x11 Int)
(declare-var top.x12 Int)
(declare-var top.x13 Int)
(declare-var top.x2 Int)
(declare-var top.x3 Int)
(declare-var top.x4 Int)
(declare-var top.x5 Int)
(declare-var top.x6 Int)
(declare-var top.x7 Int)
(declare-var top.x8 Int)
(declare-var top.x9 Int)
(declare-rel top_reset (Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool))

(rule (=> 
  (and 
       
       (peterson_reset top.ni_1.peterson.__peterson_10_c
                       top.ni_1.peterson.__peterson_11_c
                       top.ni_1.peterson.__peterson_12_c
                       top.ni_1.peterson.__peterson_13_c
                       top.ni_1.peterson.__peterson_14_c
                       top.ni_1.peterson.__peterson_15_c
                       top.ni_1.peterson.__peterson_2_c
                       top.ni_1.peterson.__peterson_3_c
                       top.ni_1.peterson.__peterson_4_c
                       top.ni_1.peterson.__peterson_5_c
                       top.ni_1.peterson.__peterson_6_c
                       top.ni_1.peterson.__peterson_7_c
                       top.ni_1.peterson.__peterson_8_c
                       top.ni_1.peterson.__peterson_9_c
                       top.ni_1.peterson.ni_2._arrow._first_c
                       top.ni_1.peterson.__peterson_10_m
                       top.ni_1.peterson.__peterson_11_m
                       top.ni_1.peterson.__peterson_12_m
                       top.ni_1.peterson.__peterson_13_m
                       top.ni_1.peterson.__peterson_14_m
                       top.ni_1.peterson.__peterson_15_m
                       top.ni_1.peterson.__peterson_2_m
                       top.ni_1.peterson.__peterson_3_m
                       top.ni_1.peterson.__peterson_4_m
                       top.ni_1.peterson.__peterson_5_m
                       top.ni_1.peterson.__peterson_6_m
                       top.ni_1.peterson.__peterson_7_m
                       top.ni_1.peterson.__peterson_8_m
                       top.ni_1.peterson.__peterson_9_m
                       top.ni_1.peterson.ni_2._arrow._first_m)
       (Sofar_reset top.ni_0.Sofar.__Sofar_2_c
                    top.ni_0.Sofar.ni_3._arrow._first_c
                    top.ni_0.Sofar.__Sofar_2_m
                    top.ni_0.Sofar.ni_3._arrow._first_m)
  )
  (top_reset top.ni_0.Sofar.__Sofar_2_c
             top.ni_0.Sofar.ni_3._arrow._first_c
             top.ni_1.peterson.__peterson_10_c
             top.ni_1.peterson.__peterson_11_c
             top.ni_1.peterson.__peterson_12_c
             top.ni_1.peterson.__peterson_13_c
             top.ni_1.peterson.__peterson_14_c
             top.ni_1.peterson.__peterson_15_c
             top.ni_1.peterson.__peterson_2_c
             top.ni_1.peterson.__peterson_3_c
             top.ni_1.peterson.__peterson_4_c
             top.ni_1.peterson.__peterson_5_c
             top.ni_1.peterson.__peterson_6_c
             top.ni_1.peterson.__peterson_7_c
             top.ni_1.peterson.__peterson_8_c
             top.ni_1.peterson.__peterson_9_c
             top.ni_1.peterson.ni_2._arrow._first_c
             top.ni_0.Sofar.__Sofar_2_m
             top.ni_0.Sofar.ni_3._arrow._first_m
             top.ni_1.peterson.__peterson_10_m
             top.ni_1.peterson.__peterson_11_m
             top.ni_1.peterson.__peterson_12_m
             top.ni_1.peterson.__peterson_13_m
             top.ni_1.peterson.__peterson_14_m
             top.ni_1.peterson.__peterson_15_m
             top.ni_1.peterson.__peterson_2_m
             top.ni_1.peterson.__peterson_3_m
             top.ni_1.peterson.__peterson_4_m
             top.ni_1.peterson.__peterson_5_m
             top.ni_1.peterson.__peterson_6_m
             top.ni_1.peterson.__peterson_7_m
             top.ni_1.peterson.__peterson_8_m
             top.ni_1.peterson.__peterson_9_m
             top.ni_1.peterson.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_1.peterson.__peterson_10_m top.ni_1.peterson.__peterson_10_c)
            (= top.ni_1.peterson.__peterson_11_m top.ni_1.peterson.__peterson_11_c)
            (= top.ni_1.peterson.__peterson_12_m top.ni_1.peterson.__peterson_12_c)
            (= top.ni_1.peterson.__peterson_13_m top.ni_1.peterson.__peterson_13_c)
            (= top.ni_1.peterson.__peterson_14_m top.ni_1.peterson.__peterson_14_c)
            (= top.ni_1.peterson.__peterson_15_m top.ni_1.peterson.__peterson_15_c)
            (= top.ni_1.peterson.__peterson_2_m top.ni_1.peterson.__peterson_2_c)
            (= top.ni_1.peterson.__peterson_3_m top.ni_1.peterson.__peterson_3_c)
            (= top.ni_1.peterson.__peterson_4_m top.ni_1.peterson.__peterson_4_c)
            (= top.ni_1.peterson.__peterson_5_m top.ni_1.peterson.__peterson_5_c)
            (= top.ni_1.peterson.__peterson_6_m top.ni_1.peterson.__peterson_6_c)
            (= top.ni_1.peterson.__peterson_7_m top.ni_1.peterson.__peterson_7_c)
            (= top.ni_1.peterson.__peterson_8_m top.ni_1.peterson.__peterson_8_c)
            (= top.ni_1.peterson.__peterson_9_m top.ni_1.peterson.__peterson_9_c)
            (= top.ni_1.peterson.ni_2._arrow._first_m top.ni_1.peterson.ni_2._arrow._first_c)
            )
       (peterson_step top.e01
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
                      top.x0
                      top.x1
                      top.x2
                      top.x3
                      top.x4
                      top.x5
                      top.x6
                      top.x7
                      top.x8
                      top.x9
                      top.x10
                      top.x11
                      top.x12
                      top.x13
                      top.ni_1.peterson.__peterson_10_m
                      top.ni_1.peterson.__peterson_11_m
                      top.ni_1.peterson.__peterson_12_m
                      top.ni_1.peterson.__peterson_13_m
                      top.ni_1.peterson.__peterson_14_m
                      top.ni_1.peterson.__peterson_15_m
                      top.ni_1.peterson.__peterson_2_m
                      top.ni_1.peterson.__peterson_3_m
                      top.ni_1.peterson.__peterson_4_m
                      top.ni_1.peterson.__peterson_5_m
                      top.ni_1.peterson.__peterson_6_m
                      top.ni_1.peterson.__peterson_7_m
                      top.ni_1.peterson.__peterson_8_m
                      top.ni_1.peterson.__peterson_9_m
                      top.ni_1.peterson.ni_2._arrow._first_m
                      top.ni_1.peterson.__peterson_10_x
                      top.ni_1.peterson.__peterson_11_x
                      top.ni_1.peterson.__peterson_12_x
                      top.ni_1.peterson.__peterson_13_x
                      top.ni_1.peterson.__peterson_14_x
                      top.ni_1.peterson.__peterson_15_x
                      top.ni_1.peterson.__peterson_2_x
                      top.ni_1.peterson.__peterson_3_x
                      top.ni_1.peterson.__peterson_4_x
                      top.ni_1.peterson.__peterson_5_x
                      top.ni_1.peterson.__peterson_6_x
                      top.ni_1.peterson.__peterson_7_x
                      top.ni_1.peterson.__peterson_8_x
                      top.ni_1.peterson.__peterson_9_x
                      top.ni_1.peterson.ni_2._arrow._first_x)
       (excludes12_fun top.e01
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
       (and (= top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.__Sofar_2_c)
            (= top.ni_0.Sofar.ni_3._arrow._first_m top.ni_0.Sofar.ni_3._arrow._first_c)
            )
       (Sofar_step (and top.__top_1 (< top.x0 32767))
                   top.env
                   top.ni_0.Sofar.__Sofar_2_m
                   top.ni_0.Sofar.ni_3._arrow._first_m
                   top.ni_0.Sofar.__Sofar_2_x
                   top.ni_0.Sofar.ni_3._arrow._first_x)
       (= top.OK (=> top.env (>= top.x0 0)))
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
            top.ni_1.peterson.__peterson_10_c
            top.ni_1.peterson.__peterson_11_c
            top.ni_1.peterson.__peterson_12_c
            top.ni_1.peterson.__peterson_13_c
            top.ni_1.peterson.__peterson_14_c
            top.ni_1.peterson.__peterson_15_c
            top.ni_1.peterson.__peterson_2_c
            top.ni_1.peterson.__peterson_3_c
            top.ni_1.peterson.__peterson_4_c
            top.ni_1.peterson.__peterson_5_c
            top.ni_1.peterson.__peterson_6_c
            top.ni_1.peterson.__peterson_7_c
            top.ni_1.peterson.__peterson_8_c
            top.ni_1.peterson.__peterson_9_c
            top.ni_1.peterson.ni_2._arrow._first_c
            top.ni_0.Sofar.__Sofar_2_x
            top.ni_0.Sofar.ni_3._arrow._first_x
            top.ni_1.peterson.__peterson_10_x
            top.ni_1.peterson.__peterson_11_x
            top.ni_1.peterson.__peterson_12_x
            top.ni_1.peterson.__peterson_13_x
            top.ni_1.peterson.__peterson_14_x
            top.ni_1.peterson.__peterson_15_x
            top.ni_1.peterson.__peterson_2_x
            top.ni_1.peterson.__peterson_3_x
            top.ni_1.peterson.__peterson_4_x
            top.ni_1.peterson.__peterson_5_x
            top.ni_1.peterson.__peterson_6_x
            top.ni_1.peterson.__peterson_7_x
            top.ni_1.peterson.__peterson_8_x
            top.ni_1.peterson.__peterson_9_x
            top.ni_1.peterson.ni_2._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_3._arrow._first_c top.ni_1.peterson.__peterson_10_c top.ni_1.peterson.__peterson_11_c top.ni_1.peterson.__peterson_12_c top.ni_1.peterson.__peterson_13_c top.ni_1.peterson.__peterson_14_c top.ni_1.peterson.__peterson_15_c top.ni_1.peterson.__peterson_2_c top.ni_1.peterson.__peterson_3_c top.ni_1.peterson.__peterson_4_c top.ni_1.peterson.__peterson_5_c top.ni_1.peterson.__peterson_6_c top.ni_1.peterson.__peterson_7_c top.ni_1.peterson.__peterson_8_c top.ni_1.peterson.__peterson_9_c top.ni_1.peterson.ni_2._arrow._first_c top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.ni_3._arrow._first_m top.ni_1.peterson.__peterson_10_m top.ni_1.peterson.__peterson_11_m top.ni_1.peterson.__peterson_12_m top.ni_1.peterson.__peterson_13_m top.ni_1.peterson.__peterson_14_m top.ni_1.peterson.__peterson_15_m top.ni_1.peterson.__peterson_2_m top.ni_1.peterson.__peterson_3_m top.ni_1.peterson.__peterson_4_m top.ni_1.peterson.__peterson_5_m top.ni_1.peterson.__peterson_6_m top.ni_1.peterson.__peterson_7_m top.ni_1.peterson.__peterson_8_m top.ni_1.peterson.__peterson_9_m top.ni_1.peterson.ni_2._arrow._first_m)
       (top_step top.e01 top.e02 top.e03 top.e04 top.e05 top.e06 top.e07 top.e08 top.e09 top.e10 top.e11 top.e12 top.OK top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.ni_3._arrow._first_m top.ni_1.peterson.__peterson_10_m top.ni_1.peterson.__peterson_11_m top.ni_1.peterson.__peterson_12_m top.ni_1.peterson.__peterson_13_m top.ni_1.peterson.__peterson_14_m top.ni_1.peterson.__peterson_15_m top.ni_1.peterson.__peterson_2_m top.ni_1.peterson.__peterson_3_m top.ni_1.peterson.__peterson_4_m top.ni_1.peterson.__peterson_5_m top.ni_1.peterson.__peterson_6_m top.ni_1.peterson.__peterson_7_m top.ni_1.peterson.__peterson_8_m top.ni_1.peterson.__peterson_9_m top.ni_1.peterson.ni_2._arrow._first_m top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.peterson.__peterson_10_x top.ni_1.peterson.__peterson_11_x top.ni_1.peterson.__peterson_12_x top.ni_1.peterson.__peterson_13_x top.ni_1.peterson.__peterson_14_x top.ni_1.peterson.__peterson_15_x top.ni_1.peterson.__peterson_2_x top.ni_1.peterson.__peterson_3_x top.ni_1.peterson.__peterson_4_x top.ni_1.peterson.__peterson_5_x top.ni_1.peterson.__peterson_6_x top.ni_1.peterson.__peterson_7_x top.ni_1.peterson.__peterson_8_x top.ni_1.peterson.__peterson_9_x top.ni_1.peterson.ni_2._arrow._first_x)
  )
  (MAIN top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.peterson.__peterson_10_x top.ni_1.peterson.__peterson_11_x top.ni_1.peterson.__peterson_12_x top.ni_1.peterson.__peterson_13_x top.ni_1.peterson.__peterson_14_x top.ni_1.peterson.__peterson_15_x top.ni_1.peterson.__peterson_2_x top.ni_1.peterson.__peterson_3_x top.ni_1.peterson.__peterson_4_x top.ni_1.peterson.__peterson_5_x top.ni_1.peterson.__peterson_6_x top.ni_1.peterson.__peterson_7_x top.ni_1.peterson.__peterson_8_x top.ni_1.peterson.__peterson_9_x top.ni_1.peterson.ni_2._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_3._arrow._first_c top.ni_1.peterson.__peterson_10_c top.ni_1.peterson.__peterson_11_c top.ni_1.peterson.__peterson_12_c top.ni_1.peterson.__peterson_13_c top.ni_1.peterson.__peterson_14_c top.ni_1.peterson.__peterson_15_c top.ni_1.peterson.__peterson_2_c top.ni_1.peterson.__peterson_3_c top.ni_1.peterson.__peterson_4_c top.ni_1.peterson.__peterson_5_c top.ni_1.peterson.__peterson_6_c top.ni_1.peterson.__peterson_7_c top.ni_1.peterson.__peterson_8_c top.ni_1.peterson.__peterson_9_c top.ni_1.peterson.ni_2._arrow._first_c dummytop.OK)
       (top_step top.e01 top.e02 top.e03 top.e04 top.e05 top.e06 top.e07 top.e08 top.e09 top.e10 top.e11 top.e12 top.OK top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_3._arrow._first_c top.ni_1.peterson.__peterson_10_c top.ni_1.peterson.__peterson_11_c top.ni_1.peterson.__peterson_12_c top.ni_1.peterson.__peterson_13_c top.ni_1.peterson.__peterson_14_c top.ni_1.peterson.__peterson_15_c top.ni_1.peterson.__peterson_2_c top.ni_1.peterson.__peterson_3_c top.ni_1.peterson.__peterson_4_c top.ni_1.peterson.__peterson_5_c top.ni_1.peterson.__peterson_6_c top.ni_1.peterson.__peterson_7_c top.ni_1.peterson.__peterson_8_c top.ni_1.peterson.__peterson_9_c top.ni_1.peterson.ni_2._arrow._first_c top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.peterson.__peterson_10_x top.ni_1.peterson.__peterson_11_x top.ni_1.peterson.__peterson_12_x top.ni_1.peterson.__peterson_13_x top.ni_1.peterson.__peterson_14_x top.ni_1.peterson.__peterson_15_x top.ni_1.peterson.__peterson_2_x top.ni_1.peterson.__peterson_3_x top.ni_1.peterson.__peterson_4_x top.ni_1.peterson.__peterson_5_x top.ni_1.peterson.__peterson_6_x top.ni_1.peterson.__peterson_7_x top.ni_1.peterson.__peterson_8_x top.ni_1.peterson.__peterson_9_x top.ni_1.peterson.ni_2._arrow._first_x)
  )
  (MAIN top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.peterson.__peterson_10_x top.ni_1.peterson.__peterson_11_x top.ni_1.peterson.__peterson_12_x top.ni_1.peterson.__peterson_13_x top.ni_1.peterson.__peterson_14_x top.ni_1.peterson.__peterson_15_x top.ni_1.peterson.__peterson_2_x top.ni_1.peterson.__peterson_3_x top.ni_1.peterson.__peterson_4_x top.ni_1.peterson.__peterson_5_x top.ni_1.peterson.__peterson_6_x top.ni_1.peterson.__peterson_7_x top.ni_1.peterson.__peterson_8_x top.ni_1.peterson.__peterson_9_x top.ni_1.peterson.ni_2._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.peterson.__peterson_10_x top.ni_1.peterson.__peterson_11_x top.ni_1.peterson.__peterson_12_x top.ni_1.peterson.__peterson_13_x top.ni_1.peterson.__peterson_14_x top.ni_1.peterson.__peterson_15_x top.ni_1.peterson.__peterson_2_x top.ni_1.peterson.__peterson_3_x top.ni_1.peterson.__peterson_4_x top.ni_1.peterson.__peterson_5_x top.ni_1.peterson.__peterson_6_x top.ni_1.peterson.__peterson_7_x top.ni_1.peterson.__peterson_8_x top.ni_1.peterson.__peterson_9_x top.ni_1.peterson.ni_2._arrow._first_x top.OK))
  ERR))
(query ERR)
