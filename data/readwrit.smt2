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

; excludes9
(declare-var excludes9.X1 Bool)
(declare-var excludes9.X2 Bool)
(declare-var excludes9.X3 Bool)
(declare-var excludes9.X4 Bool)
(declare-var excludes9.X5 Bool)
(declare-var excludes9.X6 Bool)
(declare-var excludes9.X7 Bool)
(declare-var excludes9.X8 Bool)
(declare-var excludes9.X9 Bool)
(declare-var excludes9.excludes Bool)
(declare-rel excludes9_fun (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (= excludes9.excludes (or (or (or (or (or (or (or (or (or (and (and (and (and (and (and (and (and (not excludes9.X1) (not excludes9.X2)) (not excludes9.X3)) (not excludes9.X4)) (not excludes9.X5)) (not excludes9.X6)) (not excludes9.X7)) (not excludes9.X8)) (not excludes9.X9)) (and (and (and (and (and (and (and (and excludes9.X1 (not excludes9.X2)) (not excludes9.X3)) (not excludes9.X4)) (not excludes9.X5)) (not excludes9.X6)) (not excludes9.X7)) (not excludes9.X8)) (not excludes9.X9))) (and (and (and (and (and (and (and (and (not excludes9.X1) excludes9.X2) (not excludes9.X3)) (not excludes9.X4)) (not excludes9.X5)) (not excludes9.X6)) (not excludes9.X7)) (not excludes9.X8)) (not excludes9.X9))) (and (and (and (and (and (and (and (and (not excludes9.X1) (not excludes9.X2)) excludes9.X3) (not excludes9.X4)) (not excludes9.X5)) (not excludes9.X6)) (not excludes9.X7)) (not excludes9.X8)) (not excludes9.X9))) (and (and (and (and (and (and (and (and (not excludes9.X1) (not excludes9.X2)) (not excludes9.X3)) excludes9.X4) (not excludes9.X5)) (not excludes9.X6)) (not excludes9.X7)) (not excludes9.X8)) (not excludes9.X9))) (and (and (and (and (and (and (and (and (not excludes9.X1) (not excludes9.X2)) (not excludes9.X3)) (not excludes9.X4)) excludes9.X5) (not excludes9.X6)) (not excludes9.X7)) (not excludes9.X8)) (not excludes9.X9))) (and (and (and (and (and (and (and (and (not excludes9.X1) (not excludes9.X2)) (not excludes9.X3)) (not excludes9.X4)) (not excludes9.X5)) excludes9.X6) (not excludes9.X7)) (not excludes9.X8)) (not excludes9.X9))) (and (and (and (and (and (and (and (and (not excludes9.X1) (not excludes9.X2)) (not excludes9.X3)) (not excludes9.X4)) (not excludes9.X5)) (not excludes9.X6)) excludes9.X7) (not excludes9.X8)) (not excludes9.X9))) (and (and (and (and (and (and (and (and (not excludes9.X1) (not excludes9.X2)) (not excludes9.X3)) (not excludes9.X4)) (not excludes9.X5)) (not excludes9.X6)) (not excludes9.X7)) excludes9.X8) (not excludes9.X9))) (and (and (and (and (and (and (and (and (not excludes9.X1) (not excludes9.X2)) (not excludes9.X3)) (not excludes9.X4)) (not excludes9.X5)) (not excludes9.X6)) (not excludes9.X7)) (not excludes9.X8)) excludes9.X9)))
  (excludes9_fun excludes9.X1 excludes9.X2 excludes9.X3 excludes9.X4 excludes9.X5 excludes9.X6 excludes9.X7 excludes9.X8 excludes9.X9 excludes9.excludes)
))

; readwrite
(declare-var readwrite.etat1 Bool)
(declare-var readwrite.etat2 Bool)
(declare-var readwrite.etat3 Bool)
(declare-var readwrite.etat4 Bool)
(declare-var readwrite.etat5 Bool)
(declare-var readwrite.etat6 Bool)
(declare-var readwrite.etat7 Bool)
(declare-var readwrite.etat8 Bool)
(declare-var readwrite.etat9 Bool)
(declare-var readwrite.x0 Int)
(declare-var readwrite.x1 Int)
(declare-var readwrite.x2 Int)
(declare-var readwrite.x3 Int)
(declare-var readwrite.x4 Int)
(declare-var readwrite.x5 Int)
(declare-var readwrite.x6 Int)
(declare-var readwrite.x7 Int)
(declare-var readwrite.x8 Int)
(declare-var readwrite.x9 Int)
(declare-var readwrite.x10 Int)
(declare-var readwrite.x11 Int)
(declare-var readwrite.x12 Int)
(declare-var readwrite.__readwrite_10_c Int)
(declare-var readwrite.__readwrite_11_c Int)
(declare-var readwrite.__readwrite_12_c Int)
(declare-var readwrite.__readwrite_13_c Int)
(declare-var readwrite.__readwrite_14_c Int)
(declare-var readwrite.__readwrite_2_c Int)
(declare-var readwrite.__readwrite_3_c Int)
(declare-var readwrite.__readwrite_4_c Int)
(declare-var readwrite.__readwrite_5_c Int)
(declare-var readwrite.__readwrite_6_c Int)
(declare-var readwrite.__readwrite_7_c Int)
(declare-var readwrite.__readwrite_8_c Int)
(declare-var readwrite.__readwrite_9_c Int)
(declare-var readwrite.ni_2._arrow._first_c Bool)
(declare-var readwrite.__readwrite_10_m Int)
(declare-var readwrite.__readwrite_11_m Int)
(declare-var readwrite.__readwrite_12_m Int)
(declare-var readwrite.__readwrite_13_m Int)
(declare-var readwrite.__readwrite_14_m Int)
(declare-var readwrite.__readwrite_2_m Int)
(declare-var readwrite.__readwrite_3_m Int)
(declare-var readwrite.__readwrite_4_m Int)
(declare-var readwrite.__readwrite_5_m Int)
(declare-var readwrite.__readwrite_6_m Int)
(declare-var readwrite.__readwrite_7_m Int)
(declare-var readwrite.__readwrite_8_m Int)
(declare-var readwrite.__readwrite_9_m Int)
(declare-var readwrite.ni_2._arrow._first_m Bool)
(declare-var readwrite.__readwrite_10_x Int)
(declare-var readwrite.__readwrite_11_x Int)
(declare-var readwrite.__readwrite_12_x Int)
(declare-var readwrite.__readwrite_13_x Int)
(declare-var readwrite.__readwrite_14_x Int)
(declare-var readwrite.__readwrite_2_x Int)
(declare-var readwrite.__readwrite_3_x Int)
(declare-var readwrite.__readwrite_4_x Int)
(declare-var readwrite.__readwrite_5_x Int)
(declare-var readwrite.__readwrite_6_x Int)
(declare-var readwrite.__readwrite_7_x Int)
(declare-var readwrite.__readwrite_8_x Int)
(declare-var readwrite.__readwrite_9_x Int)
(declare-var readwrite.ni_2._arrow._first_x Bool)
(declare-var readwrite.__readwrite_1 Bool)
(declare-var readwrite.garde1 Bool)
(declare-var readwrite.garde2 Bool)
(declare-var readwrite.garde3 Bool)
(declare-var readwrite.garde4 Bool)
(declare-var readwrite.garde5 Bool)
(declare-var readwrite.garde6 Bool)
(declare-var readwrite.garde7 Bool)
(declare-var readwrite.garde8 Bool)
(declare-var readwrite.garde9 Bool)
(declare-rel readwrite_reset (Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Bool))
(declare-rel readwrite_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Bool))

(rule (=> 
  (and 
       (= readwrite.__readwrite_10_m readwrite.__readwrite_10_c)
       (= readwrite.__readwrite_11_m readwrite.__readwrite_11_c)
       (= readwrite.__readwrite_12_m readwrite.__readwrite_12_c)
       (= readwrite.__readwrite_13_m readwrite.__readwrite_13_c)
       (= readwrite.__readwrite_14_m readwrite.__readwrite_14_c)
       (= readwrite.__readwrite_2_m readwrite.__readwrite_2_c)
       (= readwrite.__readwrite_3_m readwrite.__readwrite_3_c)
       (= readwrite.__readwrite_4_m readwrite.__readwrite_4_c)
       (= readwrite.__readwrite_5_m readwrite.__readwrite_5_c)
       (= readwrite.__readwrite_6_m readwrite.__readwrite_6_c)
       (= readwrite.__readwrite_7_m readwrite.__readwrite_7_c)
       (= readwrite.__readwrite_8_m readwrite.__readwrite_8_c)
       (= readwrite.__readwrite_9_m readwrite.__readwrite_9_c)
       (= readwrite.ni_2._arrow._first_m true)
  )
  (readwrite_reset readwrite.__readwrite_10_c
                   readwrite.__readwrite_11_c
                   readwrite.__readwrite_12_c
                   readwrite.__readwrite_13_c
                   readwrite.__readwrite_14_c
                   readwrite.__readwrite_2_c
                   readwrite.__readwrite_3_c
                   readwrite.__readwrite_4_c
                   readwrite.__readwrite_5_c
                   readwrite.__readwrite_6_c
                   readwrite.__readwrite_7_c
                   readwrite.__readwrite_8_c
                   readwrite.__readwrite_9_c
                   readwrite.ni_2._arrow._first_c
                   readwrite.__readwrite_10_m
                   readwrite.__readwrite_11_m
                   readwrite.__readwrite_12_m
                   readwrite.__readwrite_13_m
                   readwrite.__readwrite_14_m
                   readwrite.__readwrite_2_m
                   readwrite.__readwrite_3_m
                   readwrite.__readwrite_4_m
                   readwrite.__readwrite_5_m
                   readwrite.__readwrite_6_m
                   readwrite.__readwrite_7_m
                   readwrite.__readwrite_8_m
                   readwrite.__readwrite_9_m
                   readwrite.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= readwrite.garde9 (and (>= readwrite.__readwrite_5_c 1) (>= readwrite.__readwrite_4_c 1)))
       (= readwrite.garde4 (>= readwrite.__readwrite_13_c 1))
       (= readwrite.ni_2._arrow._first_m readwrite.ni_2._arrow._first_c)
       (and (= readwrite.__readwrite_1 (ite readwrite.ni_2._arrow._first_m true false))
            (= readwrite.ni_2._arrow._first_x false))
       (and (or (not (= readwrite.__readwrite_1 true))
               (= readwrite.x9 0))
            (or (not (= readwrite.__readwrite_1 false))
               (and (or (not (= readwrite.etat4 true))
                       (and (or (not (= readwrite.garde4 true))
                               (= readwrite.x9 (+ readwrite.__readwrite_5_c 1)))
                            (or (not (= readwrite.garde4 false))
                               (= readwrite.x9 readwrite.__readwrite_5_c))
                       ))
                    (or (not (= readwrite.etat4 false))
                       (and (or (not (= readwrite.etat9 true))
                               (and (or (not (= readwrite.garde9 true))
                                       (= readwrite.x9 (- readwrite.__readwrite_5_c 1)))
                                    (or (not (= readwrite.garde9 false))
                                       (= readwrite.x9 readwrite.__readwrite_5_c))
                               ))
                            (or (not (= readwrite.etat9 false))
                               (= readwrite.x9 readwrite.__readwrite_5_c))
                       ))
               ))
       )
       (= readwrite.garde8 (and (and (>= readwrite.__readwrite_10_c 5) (>= readwrite.__readwrite_9_c 1)) (>= readwrite.__readwrite_7_c 1)))
       (= readwrite.garde7 (and (>= readwrite.__readwrite_6_c 1) (>= readwrite.__readwrite_2_c 1)))
       (and (or (not (= readwrite.__readwrite_1 true))
               (= readwrite.x8 1))
            (or (not (= readwrite.__readwrite_1 false))
               (and (or (not (= readwrite.etat7 true))
                       (and (or (not (= readwrite.garde7 true))
                               (= readwrite.x8 (- readwrite.__readwrite_6_c 1)))
                            (or (not (= readwrite.garde7 false))
                               (= readwrite.x8 readwrite.__readwrite_6_c))
                       ))
                    (or (not (= readwrite.etat7 false))
                       (and (or (not (= readwrite.etat8 true))
                               (and (or (not (= readwrite.garde8 true))
                                       (= readwrite.x8 (+ readwrite.__readwrite_6_c 1)))
                                    (or (not (= readwrite.garde8 false))
                                       (= readwrite.x8 readwrite.__readwrite_6_c))
                               ))
                            (or (not (= readwrite.etat8 false))
                               (= readwrite.x8 readwrite.__readwrite_6_c))
                       ))
               ))
       )
       (= readwrite.garde6 (and (>= readwrite.__readwrite_11_c 1) (>= readwrite.__readwrite_7_c 1)))
       (= readwrite.garde5 (>= readwrite.__readwrite_8_c 1))
       (and (or (not (= readwrite.__readwrite_1 false))
               (and (and (or (not (= readwrite.etat5 false))
                            (and (or (not (= readwrite.etat6 false))
                                    (and (and (or (not (= readwrite.etat7 true))
                                                 (and (or (not (= readwrite.garde7 true))
                                                         (= readwrite.x7 (+ readwrite.__readwrite_7_c 1)))
                                                      (or (not (= readwrite.garde7 false))
                                                         (= readwrite.x7 readwrite.__readwrite_7_c))
                                                 ))
                                              (or (not (= readwrite.etat7 false))
                                                 (and (or (not (= readwrite.etat8 true))
                                                         (and (or (not (= readwrite.garde8 true))
                                                                 (= readwrite.x7 (- readwrite.__readwrite_7_c 1)))
                                                              (or (not (= readwrite.garde8 false))
                                                                 (= readwrite.x7 readwrite.__readwrite_7_c))
                                                         ))
                                                      (or (not (= readwrite.etat8 false))
                                                         (= readwrite.x7 readwrite.__readwrite_7_c))
                                                 ))
                                         )
                                         (= readwrite.x6 readwrite.__readwrite_8_c)
                                         ))
                                 (or (not (= readwrite.etat6 true))
                                    (and (or (not (= readwrite.garde6 false))
                                            (and (= readwrite.x7 readwrite.__readwrite_7_c)
                                                 (= readwrite.x6 readwrite.__readwrite_8_c)
                                                 ))
                                         (or (not (= readwrite.garde6 true))
                                            (and (= readwrite.x7 (- readwrite.__readwrite_7_c 1))
                                                 (= readwrite.x6 (+ readwrite.__readwrite_8_c 1))
                                                 ))
                                    ))
                            ))
                         (or (not (= readwrite.etat5 true))
                            (and (or (not (= readwrite.garde5 false))
                                    (and (= readwrite.x7 readwrite.__readwrite_7_c)
                                         (= readwrite.x6 readwrite.__readwrite_8_c)
                                         ))
                                 (or (not (= readwrite.garde5 true))
                                    (and (= readwrite.x7 (+ readwrite.__readwrite_7_c 1))
                                         (= readwrite.x6 (- readwrite.__readwrite_8_c 1))
                                         ))
                            ))
                    )
                    (and (or (not (= readwrite.etat4 true))
                            (and (or (not (= readwrite.garde5 true))
                                    (= readwrite.x5 (+ readwrite.__readwrite_9_c 1)))
                                 (or (not (= readwrite.garde5 false))
                                    (= readwrite.x5 readwrite.__readwrite_9_c))
                            ))
                         (or (not (= readwrite.etat4 false))
                            (and (or (not (= readwrite.etat8 true))
                                    (and (or (not (= readwrite.garde8 true))
                                            (= readwrite.x5 (- readwrite.__readwrite_9_c 1)))
                                         (or (not (= readwrite.garde8 false))
                                            (= readwrite.x5 readwrite.__readwrite_9_c))
                                    ))
                                 (or (not (= readwrite.etat8 false))
                                    (= readwrite.x5 readwrite.__readwrite_9_c))
                            ))
                    )
                    ))
            (or (not (= readwrite.__readwrite_1 true))
               (and (= readwrite.x7 0)
                    (= readwrite.x6 0)
                    (= readwrite.x5 0)
                    ))
       )
       (= readwrite.garde2 (and (>= readwrite.__readwrite_13_c 1) (>= readwrite.__readwrite_10_c 1)))
       (and (or (not (= readwrite.__readwrite_1 false))
               (and (or (not (= readwrite.etat2 false))
                       (and (or (not (= readwrite.etat6 false))
                               (and (and (or (not (= readwrite.etat7 true))
                                            (and (or (not (= readwrite.garde7 true))
                                                    (= readwrite.x4 (+ readwrite.__readwrite_10_c 5)))
                                                 (or (not (= readwrite.garde7 false))
                                                    (= readwrite.x4 readwrite.__readwrite_10_c))
                                            ))
                                         (or (not (= readwrite.etat7 false))
                                            (and (or (not (= readwrite.etat8 true))
                                                    (and (or (not (= readwrite.garde8 true))
                                                            (= readwrite.x4 (- readwrite.__readwrite_10_c 5)))
                                                         (or (not (= readwrite.garde8 false))
                                                            (= readwrite.x4 readwrite.__readwrite_10_c))
                                                    ))
                                                 (or (not (= readwrite.etat8 false))
                                                    (= readwrite.x4 readwrite.__readwrite_10_c))
                                            ))
                                    )
                                    (= readwrite.x3 readwrite.__readwrite_11_c)
                                    ))
                            (or (not (= readwrite.etat6 true))
                               (and (or (not (= readwrite.garde6 false))
                                       (and (= readwrite.x4 readwrite.__readwrite_10_c)
                                            (= readwrite.x3 readwrite.__readwrite_11_c)
                                            ))
                                    (or (not (= readwrite.garde6 true))
                                       (and (= readwrite.x4 (+ readwrite.__readwrite_10_c 1))
                                            (= readwrite.x3 (- readwrite.__readwrite_11_c 1))
                                            ))
                               ))
                       ))
                    (or (not (= readwrite.etat2 true))
                       (and (or (not (= readwrite.garde2 false))
                               (and (= readwrite.x4 readwrite.__readwrite_10_c)
                                    (= readwrite.x3 readwrite.__readwrite_11_c)
                                    ))
                            (or (not (= readwrite.garde2 true))
                               (and (= readwrite.x4 (- readwrite.__readwrite_10_c 1))
                                    (= readwrite.x3 (+ readwrite.__readwrite_11_c 1))
                                    ))
                       ))
               ))
            (or (not (= readwrite.__readwrite_1 true))
               (and (= readwrite.x4 0)
                    (= readwrite.x3 0)
                    ))
       )
       (= readwrite.garde3 (and (>= readwrite.__readwrite_12_c 1) (>= readwrite.__readwrite_3_c 1)))
       (and (or (not (= readwrite.__readwrite_1 false))
               (and (and (or (not (= readwrite.etat3 true))
                            (and (or (not (= readwrite.garde3 true))
                                    (= readwrite.x2 (- readwrite.__readwrite_12_c 1)))
                                 (or (not (= readwrite.garde3 false))
                                    (= readwrite.x2 readwrite.__readwrite_12_c))
                            ))
                         (or (not (= readwrite.etat3 false))
                            (and (or (not (= readwrite.etat4 true))
                                    (and (or (not (= readwrite.garde4 true))
                                            (= readwrite.x2 (+ readwrite.__readwrite_12_c 1)))
                                         (or (not (= readwrite.garde4 false))
                                            (= readwrite.x2 readwrite.__readwrite_12_c))
                                    ))
                                 (or (not (= readwrite.etat4 false))
                                    (= readwrite.x2 readwrite.__readwrite_12_c))
                            ))
                    )
                    (and (or (not (= readwrite.etat7 true))
                            (and (or (not (= readwrite.garde7 true))
                                    (= readwrite.x12 (- readwrite.__readwrite_2_c 1)))
                                 (or (not (= readwrite.garde7 false))
                                    (= readwrite.x12 readwrite.__readwrite_2_c))
                            ))
                         (or (not (= readwrite.etat7 false))
                            (and (or (not (= readwrite.etat9 true))
                                    (and (or (not (= readwrite.garde9 true))
                                            (= readwrite.x12 (+ readwrite.__readwrite_2_c 1)))
                                         (or (not (= readwrite.garde9 false))
                                            (= readwrite.x12 readwrite.__readwrite_2_c))
                                    ))
                                 (or (not (= readwrite.etat9 false))
                                    (= readwrite.x12 readwrite.__readwrite_2_c))
                            ))
                    )
                    (and (or (not (= readwrite.etat3 true))
                            (and (or (not (= readwrite.garde3 true))
                                    (= readwrite.x11 (- readwrite.__readwrite_3_c 1)))
                                 (or (not (= readwrite.garde3 false))
                                    (= readwrite.x11 readwrite.__readwrite_3_c))
                            ))
                         (or (not (= readwrite.etat3 false))
                            (and (or (not (= readwrite.etat9 true))
                                    (and (or (not (= readwrite.garde9 true))
                                            (= readwrite.x11 (+ readwrite.__readwrite_3_c 1)))
                                         (or (not (= readwrite.garde9 false))
                                            (= readwrite.x11 readwrite.__readwrite_3_c))
                                    ))
                                 (or (not (= readwrite.etat9 false))
                                    (= readwrite.x11 readwrite.__readwrite_3_c))
                            ))
                    )
                    (and (or (not (= readwrite.etat8 true))
                            (and (or (not (= readwrite.garde8 true))
                                    (= readwrite.x10 (+ readwrite.__readwrite_4_c 1)))
                                 (or (not (= readwrite.garde8 false))
                                    (= readwrite.x10 readwrite.__readwrite_4_c))
                            ))
                         (or (not (= readwrite.etat8 false))
                            (and (or (not (= readwrite.etat9 true))
                                    (and (or (not (= readwrite.garde9 true))
                                            (= readwrite.x10 (- readwrite.__readwrite_4_c 1)))
                                         (or (not (= readwrite.garde9 false))
                                            (= readwrite.x10 readwrite.__readwrite_4_c))
                                    ))
                                 (or (not (= readwrite.etat9 false))
                                    (= readwrite.x10 readwrite.__readwrite_4_c))
                            ))
                    )
                    ))
            (or (not (= readwrite.__readwrite_1 true))
               (and (= readwrite.x2 1)
                    (= readwrite.x12 1)
                    (= readwrite.x11 1)
                    (= readwrite.x10 0)
                    ))
       )
       (= readwrite.garde1 (>= readwrite.__readwrite_14_c 1))
       (and (or (not (= readwrite.__readwrite_1 false))
               (and (or (not (= readwrite.etat1 false))
                       (and (or (not (= readwrite.etat2 false))
                               (and (and (or (not (= readwrite.etat3 true))
                                            (and (or (not (= readwrite.garde3 true))
                                                    (= readwrite.x1 (+ readwrite.__readwrite_13_c 1)))
                                                 (or (not (= readwrite.garde3 false))
                                                    (= readwrite.x1 readwrite.__readwrite_13_c))
                                            ))
                                         (or (not (= readwrite.etat3 false))
                                            (and (or (not (= readwrite.etat4 true))
                                                    (and (or (not (= readwrite.garde4 true))
                                                            (= readwrite.x1 (- readwrite.__readwrite_13_c 1)))
                                                         (or (not (= readwrite.garde4 false))
                                                            (= readwrite.x1 readwrite.__readwrite_13_c))
                                                    ))
                                                 (or (not (= readwrite.etat4 false))
                                                    (= readwrite.x1 readwrite.__readwrite_13_c))
                                            ))
                                    )
                                    (= readwrite.x0 readwrite.__readwrite_14_c)
                                    ))
                            (or (not (= readwrite.etat2 true))
                               (and (or (not (= readwrite.garde2 false))
                                       (and (= readwrite.x1 readwrite.__readwrite_13_c)
                                            (= readwrite.x0 readwrite.__readwrite_14_c)
                                            ))
                                    (or (not (= readwrite.garde2 true))
                                       (and (= readwrite.x1 (- readwrite.__readwrite_13_c 1))
                                            (= readwrite.x0 (+ readwrite.__readwrite_14_c 1))
                                            ))
                               ))
                       ))
                    (or (not (= readwrite.etat1 true))
                       (and (or (not (= readwrite.garde1 false))
                               (and (= readwrite.x1 readwrite.__readwrite_13_c)
                                    (= readwrite.x0 readwrite.__readwrite_14_c)
                                    ))
                            (or (not (= readwrite.garde1 true))
                               (and (= readwrite.x1 (+ readwrite.__readwrite_13_c 1))
                                    (= readwrite.x0 (- readwrite.__readwrite_14_c 1))
                                    ))
                       ))
               ))
            (or (not (= readwrite.__readwrite_1 true))
               (and (= readwrite.x1 0)
                    (= readwrite.x0 0)
                    ))
       )
       (= readwrite.__readwrite_9_x readwrite.x5)
       (= readwrite.__readwrite_8_x readwrite.x6)
       (= readwrite.__readwrite_7_x readwrite.x7)
       (= readwrite.__readwrite_6_x readwrite.x8)
       (= readwrite.__readwrite_5_x readwrite.x9)
       (= readwrite.__readwrite_4_x readwrite.x10)
       (= readwrite.__readwrite_3_x readwrite.x11)
       (= readwrite.__readwrite_2_x readwrite.x12)
       (= readwrite.__readwrite_14_x readwrite.x0)
       (= readwrite.__readwrite_13_x readwrite.x1)
       (= readwrite.__readwrite_12_x readwrite.x2)
       (= readwrite.__readwrite_11_x readwrite.x3)
       (= readwrite.__readwrite_10_x readwrite.x4)
       )
  (readwrite_step readwrite.etat1
                  readwrite.etat2
                  readwrite.etat3
                  readwrite.etat4
                  readwrite.etat5
                  readwrite.etat6
                  readwrite.etat7
                  readwrite.etat8
                  readwrite.etat9
                  readwrite.x0
                  readwrite.x1
                  readwrite.x2
                  readwrite.x3
                  readwrite.x4
                  readwrite.x5
                  readwrite.x6
                  readwrite.x7
                  readwrite.x8
                  readwrite.x9
                  readwrite.x10
                  readwrite.x11
                  readwrite.x12
                  readwrite.__readwrite_10_c
                  readwrite.__readwrite_11_c
                  readwrite.__readwrite_12_c
                  readwrite.__readwrite_13_c
                  readwrite.__readwrite_14_c
                  readwrite.__readwrite_2_c
                  readwrite.__readwrite_3_c
                  readwrite.__readwrite_4_c
                  readwrite.__readwrite_5_c
                  readwrite.__readwrite_6_c
                  readwrite.__readwrite_7_c
                  readwrite.__readwrite_8_c
                  readwrite.__readwrite_9_c
                  readwrite.ni_2._arrow._first_c
                  readwrite.__readwrite_10_x
                  readwrite.__readwrite_11_x
                  readwrite.__readwrite_12_x
                  readwrite.__readwrite_13_x
                  readwrite.__readwrite_14_x
                  readwrite.__readwrite_2_x
                  readwrite.__readwrite_3_x
                  readwrite.__readwrite_4_x
                  readwrite.__readwrite_5_x
                  readwrite.__readwrite_6_x
                  readwrite.__readwrite_7_x
                  readwrite.__readwrite_8_x
                  readwrite.__readwrite_9_x
                  readwrite.ni_2._arrow._first_x)
))

; top
(declare-var top.etat1 Bool)
(declare-var top.etat2 Bool)
(declare-var top.etat3 Bool)
(declare-var top.etat4 Bool)
(declare-var top.etat5 Bool)
(declare-var top.etat6 Bool)
(declare-var top.etat7 Bool)
(declare-var top.etat8 Bool)
(declare-var top.etat9 Bool)
(declare-var top.OK Bool)
(declare-var top.ni_0.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_0.Sofar.ni_3._arrow._first_c Bool)
(declare-var top.ni_1.readwrite.__readwrite_10_c Int)
(declare-var top.ni_1.readwrite.__readwrite_11_c Int)
(declare-var top.ni_1.readwrite.__readwrite_12_c Int)
(declare-var top.ni_1.readwrite.__readwrite_13_c Int)
(declare-var top.ni_1.readwrite.__readwrite_14_c Int)
(declare-var top.ni_1.readwrite.__readwrite_2_c Int)
(declare-var top.ni_1.readwrite.__readwrite_3_c Int)
(declare-var top.ni_1.readwrite.__readwrite_4_c Int)
(declare-var top.ni_1.readwrite.__readwrite_5_c Int)
(declare-var top.ni_1.readwrite.__readwrite_6_c Int)
(declare-var top.ni_1.readwrite.__readwrite_7_c Int)
(declare-var top.ni_1.readwrite.__readwrite_8_c Int)
(declare-var top.ni_1.readwrite.__readwrite_9_c Int)
(declare-var top.ni_1.readwrite.ni_2._arrow._first_c Bool)
(declare-var top.ni_0.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_0.Sofar.ni_3._arrow._first_m Bool)
(declare-var top.ni_1.readwrite.__readwrite_10_m Int)
(declare-var top.ni_1.readwrite.__readwrite_11_m Int)
(declare-var top.ni_1.readwrite.__readwrite_12_m Int)
(declare-var top.ni_1.readwrite.__readwrite_13_m Int)
(declare-var top.ni_1.readwrite.__readwrite_14_m Int)
(declare-var top.ni_1.readwrite.__readwrite_2_m Int)
(declare-var top.ni_1.readwrite.__readwrite_3_m Int)
(declare-var top.ni_1.readwrite.__readwrite_4_m Int)
(declare-var top.ni_1.readwrite.__readwrite_5_m Int)
(declare-var top.ni_1.readwrite.__readwrite_6_m Int)
(declare-var top.ni_1.readwrite.__readwrite_7_m Int)
(declare-var top.ni_1.readwrite.__readwrite_8_m Int)
(declare-var top.ni_1.readwrite.__readwrite_9_m Int)
(declare-var top.ni_1.readwrite.ni_2._arrow._first_m Bool)
(declare-var top.ni_0.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_0.Sofar.ni_3._arrow._first_x Bool)
(declare-var top.ni_1.readwrite.__readwrite_10_x Int)
(declare-var top.ni_1.readwrite.__readwrite_11_x Int)
(declare-var top.ni_1.readwrite.__readwrite_12_x Int)
(declare-var top.ni_1.readwrite.__readwrite_13_x Int)
(declare-var top.ni_1.readwrite.__readwrite_14_x Int)
(declare-var top.ni_1.readwrite.__readwrite_2_x Int)
(declare-var top.ni_1.readwrite.__readwrite_3_x Int)
(declare-var top.ni_1.readwrite.__readwrite_4_x Int)
(declare-var top.ni_1.readwrite.__readwrite_5_x Int)
(declare-var top.ni_1.readwrite.__readwrite_6_x Int)
(declare-var top.ni_1.readwrite.__readwrite_7_x Int)
(declare-var top.ni_1.readwrite.__readwrite_8_x Int)
(declare-var top.ni_1.readwrite.__readwrite_9_x Int)
(declare-var top.ni_1.readwrite.ni_2._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.env Bool)
(declare-var top.x0 Int)
(declare-var top.x1 Int)
(declare-var top.x10 Int)
(declare-var top.x11 Int)
(declare-var top.x12 Int)
(declare-var top.x2 Int)
(declare-var top.x3 Int)
(declare-var top.x4 Int)
(declare-var top.x5 Int)
(declare-var top.x6 Int)
(declare-var top.x7 Int)
(declare-var top.x8 Int)
(declare-var top.x9 Int)
(declare-rel top_reset (Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Bool))

(rule (=> 
  (and 
       
       (readwrite_reset top.ni_1.readwrite.__readwrite_10_c
                        top.ni_1.readwrite.__readwrite_11_c
                        top.ni_1.readwrite.__readwrite_12_c
                        top.ni_1.readwrite.__readwrite_13_c
                        top.ni_1.readwrite.__readwrite_14_c
                        top.ni_1.readwrite.__readwrite_2_c
                        top.ni_1.readwrite.__readwrite_3_c
                        top.ni_1.readwrite.__readwrite_4_c
                        top.ni_1.readwrite.__readwrite_5_c
                        top.ni_1.readwrite.__readwrite_6_c
                        top.ni_1.readwrite.__readwrite_7_c
                        top.ni_1.readwrite.__readwrite_8_c
                        top.ni_1.readwrite.__readwrite_9_c
                        top.ni_1.readwrite.ni_2._arrow._first_c
                        top.ni_1.readwrite.__readwrite_10_m
                        top.ni_1.readwrite.__readwrite_11_m
                        top.ni_1.readwrite.__readwrite_12_m
                        top.ni_1.readwrite.__readwrite_13_m
                        top.ni_1.readwrite.__readwrite_14_m
                        top.ni_1.readwrite.__readwrite_2_m
                        top.ni_1.readwrite.__readwrite_3_m
                        top.ni_1.readwrite.__readwrite_4_m
                        top.ni_1.readwrite.__readwrite_5_m
                        top.ni_1.readwrite.__readwrite_6_m
                        top.ni_1.readwrite.__readwrite_7_m
                        top.ni_1.readwrite.__readwrite_8_m
                        top.ni_1.readwrite.__readwrite_9_m
                        top.ni_1.readwrite.ni_2._arrow._first_m)
       (Sofar_reset top.ni_0.Sofar.__Sofar_2_c
                    top.ni_0.Sofar.ni_3._arrow._first_c
                    top.ni_0.Sofar.__Sofar_2_m
                    top.ni_0.Sofar.ni_3._arrow._first_m)
  )
  (top_reset top.ni_0.Sofar.__Sofar_2_c
             top.ni_0.Sofar.ni_3._arrow._first_c
             top.ni_1.readwrite.__readwrite_10_c
             top.ni_1.readwrite.__readwrite_11_c
             top.ni_1.readwrite.__readwrite_12_c
             top.ni_1.readwrite.__readwrite_13_c
             top.ni_1.readwrite.__readwrite_14_c
             top.ni_1.readwrite.__readwrite_2_c
             top.ni_1.readwrite.__readwrite_3_c
             top.ni_1.readwrite.__readwrite_4_c
             top.ni_1.readwrite.__readwrite_5_c
             top.ni_1.readwrite.__readwrite_6_c
             top.ni_1.readwrite.__readwrite_7_c
             top.ni_1.readwrite.__readwrite_8_c
             top.ni_1.readwrite.__readwrite_9_c
             top.ni_1.readwrite.ni_2._arrow._first_c
             top.ni_0.Sofar.__Sofar_2_m
             top.ni_0.Sofar.ni_3._arrow._first_m
             top.ni_1.readwrite.__readwrite_10_m
             top.ni_1.readwrite.__readwrite_11_m
             top.ni_1.readwrite.__readwrite_12_m
             top.ni_1.readwrite.__readwrite_13_m
             top.ni_1.readwrite.__readwrite_14_m
             top.ni_1.readwrite.__readwrite_2_m
             top.ni_1.readwrite.__readwrite_3_m
             top.ni_1.readwrite.__readwrite_4_m
             top.ni_1.readwrite.__readwrite_5_m
             top.ni_1.readwrite.__readwrite_6_m
             top.ni_1.readwrite.__readwrite_7_m
             top.ni_1.readwrite.__readwrite_8_m
             top.ni_1.readwrite.__readwrite_9_m
             top.ni_1.readwrite.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_1.readwrite.__readwrite_10_m top.ni_1.readwrite.__readwrite_10_c)
            (= top.ni_1.readwrite.__readwrite_11_m top.ni_1.readwrite.__readwrite_11_c)
            (= top.ni_1.readwrite.__readwrite_12_m top.ni_1.readwrite.__readwrite_12_c)
            (= top.ni_1.readwrite.__readwrite_13_m top.ni_1.readwrite.__readwrite_13_c)
            (= top.ni_1.readwrite.__readwrite_14_m top.ni_1.readwrite.__readwrite_14_c)
            (= top.ni_1.readwrite.__readwrite_2_m top.ni_1.readwrite.__readwrite_2_c)
            (= top.ni_1.readwrite.__readwrite_3_m top.ni_1.readwrite.__readwrite_3_c)
            (= top.ni_1.readwrite.__readwrite_4_m top.ni_1.readwrite.__readwrite_4_c)
            (= top.ni_1.readwrite.__readwrite_5_m top.ni_1.readwrite.__readwrite_5_c)
            (= top.ni_1.readwrite.__readwrite_6_m top.ni_1.readwrite.__readwrite_6_c)
            (= top.ni_1.readwrite.__readwrite_7_m top.ni_1.readwrite.__readwrite_7_c)
            (= top.ni_1.readwrite.__readwrite_8_m top.ni_1.readwrite.__readwrite_8_c)
            (= top.ni_1.readwrite.__readwrite_9_m top.ni_1.readwrite.__readwrite_9_c)
            (= top.ni_1.readwrite.ni_2._arrow._first_m top.ni_1.readwrite.ni_2._arrow._first_c)
            )
       (readwrite_step top.etat1
                       top.etat2
                       top.etat3
                       top.etat4
                       top.etat5
                       top.etat6
                       top.etat7
                       top.etat8
                       top.etat9
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
                       top.ni_1.readwrite.__readwrite_10_m
                       top.ni_1.readwrite.__readwrite_11_m
                       top.ni_1.readwrite.__readwrite_12_m
                       top.ni_1.readwrite.__readwrite_13_m
                       top.ni_1.readwrite.__readwrite_14_m
                       top.ni_1.readwrite.__readwrite_2_m
                       top.ni_1.readwrite.__readwrite_3_m
                       top.ni_1.readwrite.__readwrite_4_m
                       top.ni_1.readwrite.__readwrite_5_m
                       top.ni_1.readwrite.__readwrite_6_m
                       top.ni_1.readwrite.__readwrite_7_m
                       top.ni_1.readwrite.__readwrite_8_m
                       top.ni_1.readwrite.__readwrite_9_m
                       top.ni_1.readwrite.ni_2._arrow._first_m
                       top.ni_1.readwrite.__readwrite_10_x
                       top.ni_1.readwrite.__readwrite_11_x
                       top.ni_1.readwrite.__readwrite_12_x
                       top.ni_1.readwrite.__readwrite_13_x
                       top.ni_1.readwrite.__readwrite_14_x
                       top.ni_1.readwrite.__readwrite_2_x
                       top.ni_1.readwrite.__readwrite_3_x
                       top.ni_1.readwrite.__readwrite_4_x
                       top.ni_1.readwrite.__readwrite_5_x
                       top.ni_1.readwrite.__readwrite_6_x
                       top.ni_1.readwrite.__readwrite_7_x
                       top.ni_1.readwrite.__readwrite_8_x
                       top.ni_1.readwrite.__readwrite_9_x
                       top.ni_1.readwrite.ni_2._arrow._first_x)
       (excludes9_fun top.etat1
                      top.etat2
                      top.etat3
                      top.etat4
                      top.etat5
                      top.etat6
                      top.etat7
                      top.etat8
                      top.etat9
                      top.__top_1)
       (and (= top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.__Sofar_2_c)
            (= top.ni_0.Sofar.ni_3._arrow._first_m top.ni_0.Sofar.ni_3._arrow._first_c)
            )
       (Sofar_step (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and top.__top_1 (> top.x0 (- 32768))) (> top.x1 (- 32768))) (> top.x2 (- 32768))) (> top.x3 (- 32768))) (> top.x4 (- 32768))) (> top.x5 (- 32768))) (> top.x6 (- 32768))) (> top.x7 (- 32768))) (> top.x8 (- 32768))) (< top.x0 32767)) (< top.x1 32767)) (< top.x3 32767)) (< top.x4 32767)) (< top.x5 32767)) (< top.x6 32767)) (< top.x7 32767)) (< top.x8 32767)) (< top.x9 32767)) (< top.x10 32767)) (< top.x11 32767)) (< top.x12 32767))
                   top.env
                   top.ni_0.Sofar.__Sofar_2_m
                   top.ni_0.Sofar.ni_3._arrow._first_m
                   top.ni_0.Sofar.__Sofar_2_x
                   top.ni_0.Sofar.ni_3._arrow._first_x)
       (= top.OK (>= top.x0 0))
       )
  (top_step top.etat1
            top.etat2
            top.etat3
            top.etat4
            top.etat5
            top.etat6
            top.etat7
            top.etat8
            top.etat9
            top.OK
            top.ni_0.Sofar.__Sofar_2_c
            top.ni_0.Sofar.ni_3._arrow._first_c
            top.ni_1.readwrite.__readwrite_10_c
            top.ni_1.readwrite.__readwrite_11_c
            top.ni_1.readwrite.__readwrite_12_c
            top.ni_1.readwrite.__readwrite_13_c
            top.ni_1.readwrite.__readwrite_14_c
            top.ni_1.readwrite.__readwrite_2_c
            top.ni_1.readwrite.__readwrite_3_c
            top.ni_1.readwrite.__readwrite_4_c
            top.ni_1.readwrite.__readwrite_5_c
            top.ni_1.readwrite.__readwrite_6_c
            top.ni_1.readwrite.__readwrite_7_c
            top.ni_1.readwrite.__readwrite_8_c
            top.ni_1.readwrite.__readwrite_9_c
            top.ni_1.readwrite.ni_2._arrow._first_c
            top.ni_0.Sofar.__Sofar_2_x
            top.ni_0.Sofar.ni_3._arrow._first_x
            top.ni_1.readwrite.__readwrite_10_x
            top.ni_1.readwrite.__readwrite_11_x
            top.ni_1.readwrite.__readwrite_12_x
            top.ni_1.readwrite.__readwrite_13_x
            top.ni_1.readwrite.__readwrite_14_x
            top.ni_1.readwrite.__readwrite_2_x
            top.ni_1.readwrite.__readwrite_3_x
            top.ni_1.readwrite.__readwrite_4_x
            top.ni_1.readwrite.__readwrite_5_x
            top.ni_1.readwrite.__readwrite_6_x
            top.ni_1.readwrite.__readwrite_7_x
            top.ni_1.readwrite.__readwrite_8_x
            top.ni_1.readwrite.__readwrite_9_x
            top.ni_1.readwrite.ni_2._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_3._arrow._first_c top.ni_1.readwrite.__readwrite_10_c top.ni_1.readwrite.__readwrite_11_c top.ni_1.readwrite.__readwrite_12_c top.ni_1.readwrite.__readwrite_13_c top.ni_1.readwrite.__readwrite_14_c top.ni_1.readwrite.__readwrite_2_c top.ni_1.readwrite.__readwrite_3_c top.ni_1.readwrite.__readwrite_4_c top.ni_1.readwrite.__readwrite_5_c top.ni_1.readwrite.__readwrite_6_c top.ni_1.readwrite.__readwrite_7_c top.ni_1.readwrite.__readwrite_8_c top.ni_1.readwrite.__readwrite_9_c top.ni_1.readwrite.ni_2._arrow._first_c top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.ni_3._arrow._first_m top.ni_1.readwrite.__readwrite_10_m top.ni_1.readwrite.__readwrite_11_m top.ni_1.readwrite.__readwrite_12_m top.ni_1.readwrite.__readwrite_13_m top.ni_1.readwrite.__readwrite_14_m top.ni_1.readwrite.__readwrite_2_m top.ni_1.readwrite.__readwrite_3_m top.ni_1.readwrite.__readwrite_4_m top.ni_1.readwrite.__readwrite_5_m top.ni_1.readwrite.__readwrite_6_m top.ni_1.readwrite.__readwrite_7_m top.ni_1.readwrite.__readwrite_8_m top.ni_1.readwrite.__readwrite_9_m top.ni_1.readwrite.ni_2._arrow._first_m)
       (top_step top.etat1 top.etat2 top.etat3 top.etat4 top.etat5 top.etat6 top.etat7 top.etat8 top.etat9 top.OK top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.ni_3._arrow._first_m top.ni_1.readwrite.__readwrite_10_m top.ni_1.readwrite.__readwrite_11_m top.ni_1.readwrite.__readwrite_12_m top.ni_1.readwrite.__readwrite_13_m top.ni_1.readwrite.__readwrite_14_m top.ni_1.readwrite.__readwrite_2_m top.ni_1.readwrite.__readwrite_3_m top.ni_1.readwrite.__readwrite_4_m top.ni_1.readwrite.__readwrite_5_m top.ni_1.readwrite.__readwrite_6_m top.ni_1.readwrite.__readwrite_7_m top.ni_1.readwrite.__readwrite_8_m top.ni_1.readwrite.__readwrite_9_m top.ni_1.readwrite.ni_2._arrow._first_m top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.readwrite.__readwrite_10_x top.ni_1.readwrite.__readwrite_11_x top.ni_1.readwrite.__readwrite_12_x top.ni_1.readwrite.__readwrite_13_x top.ni_1.readwrite.__readwrite_14_x top.ni_1.readwrite.__readwrite_2_x top.ni_1.readwrite.__readwrite_3_x top.ni_1.readwrite.__readwrite_4_x top.ni_1.readwrite.__readwrite_5_x top.ni_1.readwrite.__readwrite_6_x top.ni_1.readwrite.__readwrite_7_x top.ni_1.readwrite.__readwrite_8_x top.ni_1.readwrite.__readwrite_9_x top.ni_1.readwrite.ni_2._arrow._first_x)
  )
  (MAIN top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.readwrite.__readwrite_10_x top.ni_1.readwrite.__readwrite_11_x top.ni_1.readwrite.__readwrite_12_x top.ni_1.readwrite.__readwrite_13_x top.ni_1.readwrite.__readwrite_14_x top.ni_1.readwrite.__readwrite_2_x top.ni_1.readwrite.__readwrite_3_x top.ni_1.readwrite.__readwrite_4_x top.ni_1.readwrite.__readwrite_5_x top.ni_1.readwrite.__readwrite_6_x top.ni_1.readwrite.__readwrite_7_x top.ni_1.readwrite.__readwrite_8_x top.ni_1.readwrite.__readwrite_9_x top.ni_1.readwrite.ni_2._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_3._arrow._first_c top.ni_1.readwrite.__readwrite_10_c top.ni_1.readwrite.__readwrite_11_c top.ni_1.readwrite.__readwrite_12_c top.ni_1.readwrite.__readwrite_13_c top.ni_1.readwrite.__readwrite_14_c top.ni_1.readwrite.__readwrite_2_c top.ni_1.readwrite.__readwrite_3_c top.ni_1.readwrite.__readwrite_4_c top.ni_1.readwrite.__readwrite_5_c top.ni_1.readwrite.__readwrite_6_c top.ni_1.readwrite.__readwrite_7_c top.ni_1.readwrite.__readwrite_8_c top.ni_1.readwrite.__readwrite_9_c top.ni_1.readwrite.ni_2._arrow._first_c dummytop.OK)
       (top_step top.etat1 top.etat2 top.etat3 top.etat4 top.etat5 top.etat6 top.etat7 top.etat8 top.etat9 top.OK top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_3._arrow._first_c top.ni_1.readwrite.__readwrite_10_c top.ni_1.readwrite.__readwrite_11_c top.ni_1.readwrite.__readwrite_12_c top.ni_1.readwrite.__readwrite_13_c top.ni_1.readwrite.__readwrite_14_c top.ni_1.readwrite.__readwrite_2_c top.ni_1.readwrite.__readwrite_3_c top.ni_1.readwrite.__readwrite_4_c top.ni_1.readwrite.__readwrite_5_c top.ni_1.readwrite.__readwrite_6_c top.ni_1.readwrite.__readwrite_7_c top.ni_1.readwrite.__readwrite_8_c top.ni_1.readwrite.__readwrite_9_c top.ni_1.readwrite.ni_2._arrow._first_c top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.readwrite.__readwrite_10_x top.ni_1.readwrite.__readwrite_11_x top.ni_1.readwrite.__readwrite_12_x top.ni_1.readwrite.__readwrite_13_x top.ni_1.readwrite.__readwrite_14_x top.ni_1.readwrite.__readwrite_2_x top.ni_1.readwrite.__readwrite_3_x top.ni_1.readwrite.__readwrite_4_x top.ni_1.readwrite.__readwrite_5_x top.ni_1.readwrite.__readwrite_6_x top.ni_1.readwrite.__readwrite_7_x top.ni_1.readwrite.__readwrite_8_x top.ni_1.readwrite.__readwrite_9_x top.ni_1.readwrite.ni_2._arrow._first_x)
  )
  (MAIN top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.readwrite.__readwrite_10_x top.ni_1.readwrite.__readwrite_11_x top.ni_1.readwrite.__readwrite_12_x top.ni_1.readwrite.__readwrite_13_x top.ni_1.readwrite.__readwrite_14_x top.ni_1.readwrite.__readwrite_2_x top.ni_1.readwrite.__readwrite_3_x top.ni_1.readwrite.__readwrite_4_x top.ni_1.readwrite.__readwrite_5_x top.ni_1.readwrite.__readwrite_6_x top.ni_1.readwrite.__readwrite_7_x top.ni_1.readwrite.__readwrite_8_x top.ni_1.readwrite.__readwrite_9_x top.ni_1.readwrite.ni_2._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.readwrite.__readwrite_10_x top.ni_1.readwrite.__readwrite_11_x top.ni_1.readwrite.__readwrite_12_x top.ni_1.readwrite.__readwrite_13_x top.ni_1.readwrite.__readwrite_14_x top.ni_1.readwrite.__readwrite_2_x top.ni_1.readwrite.__readwrite_3_x top.ni_1.readwrite.__readwrite_4_x top.ni_1.readwrite.__readwrite_5_x top.ni_1.readwrite.__readwrite_6_x top.ni_1.readwrite.__readwrite_7_x top.ni_1.readwrite.__readwrite_8_x top.ni_1.readwrite.__readwrite_9_x top.ni_1.readwrite.ni_2._arrow._first_x top.OK))
  ERR))
(query ERR)
