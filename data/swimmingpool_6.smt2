; Statically linked libraries
; First
(declare-var First.X Int)
(declare-var First.First Int)
(declare-var First.__First_2_c Int)
(declare-var First.ni_6._arrow._first_c Bool)
(declare-var First.__First_2_m Int)
(declare-var First.ni_6._arrow._first_m Bool)
(declare-var First.__First_2_x Int)
(declare-var First.ni_6._arrow._first_x Bool)
(declare-var First.__First_1 Bool)
(declare-rel First_reset (Int Bool Int Bool))
(declare-rel First_step (Int Int Int Bool Int Bool))

(rule (=> 
  (and 
       (= First.__First_2_m First.__First_2_c)
       (= First.ni_6._arrow._first_m true)
  )
  (First_reset First.__First_2_c
               First.ni_6._arrow._first_c
               First.__First_2_m
               First.ni_6._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= First.ni_6._arrow._first_m First.ni_6._arrow._first_c)(and (= First.__First_1 (ite First.ni_6._arrow._first_m true false))
                                                                    (= First.ni_6._arrow._first_x false))
       (and (or (not (= First.__First_1 true))
               (= First.First First.X))
            (or (not (= First.__First_1 false))
               (= First.First First.__First_2_c))
       )
       (= First.__First_2_x First.First)
       )
  (First_step First.X
              First.First
              First.__First_2_c
              First.ni_6._arrow._first_c
              First.__First_2_x
              First.ni_6._arrow._first_x)
))

; Sofar
(declare-var Sofar.X Bool)
(declare-var Sofar.Sofar Bool)
(declare-var Sofar.__Sofar_2_c Bool)
(declare-var Sofar.ni_5._arrow._first_c Bool)
(declare-var Sofar.__Sofar_2_m Bool)
(declare-var Sofar.ni_5._arrow._first_m Bool)
(declare-var Sofar.__Sofar_2_x Bool)
(declare-var Sofar.ni_5._arrow._first_x Bool)
(declare-var Sofar.__Sofar_1 Bool)
(declare-rel Sofar_reset (Bool Bool Bool Bool))
(declare-rel Sofar_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= Sofar.__Sofar_2_m Sofar.__Sofar_2_c)
       (= Sofar.ni_5._arrow._first_m true)
  )
  (Sofar_reset Sofar.__Sofar_2_c
               Sofar.ni_5._arrow._first_c
               Sofar.__Sofar_2_m
               Sofar.ni_5._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Sofar.ni_5._arrow._first_m Sofar.ni_5._arrow._first_c)(and (= Sofar.__Sofar_1 (ite Sofar.ni_5._arrow._first_m true false))
                                                                    (= Sofar.ni_5._arrow._first_x false))
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
              Sofar.ni_5._arrow._first_c
              Sofar.__Sofar_2_x
              Sofar.ni_5._arrow._first_x)
))

; excludes6
(declare-var excludes6.X1 Bool)
(declare-var excludes6.X2 Bool)
(declare-var excludes6.X3 Bool)
(declare-var excludes6.X4 Bool)
(declare-var excludes6.X5 Bool)
(declare-var excludes6.X6 Bool)
(declare-var excludes6.excludes Bool)
(declare-rel excludes6_fun (Bool Bool Bool Bool Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (= excludes6.excludes (or (or (or (or (or (or (and (and (and (and (and (not excludes6.X1) (not excludes6.X2)) (not excludes6.X3)) (not excludes6.X4)) (not excludes6.X5)) (not excludes6.X6)) (and (and (and (and (and excludes6.X1 (not excludes6.X2)) (not excludes6.X3)) (not excludes6.X4)) (not excludes6.X5)) (not excludes6.X6))) (and (and (and (and (and (not excludes6.X1) excludes6.X2) (not excludes6.X3)) (not excludes6.X4)) (not excludes6.X5)) (not excludes6.X6))) (and (and (and (and (and (not excludes6.X1) (not excludes6.X2)) excludes6.X3) (not excludes6.X4)) (not excludes6.X5)) (not excludes6.X6))) (and (and (and (and (and (not excludes6.X1) (not excludes6.X2)) (not excludes6.X3)) excludes6.X4) (not excludes6.X5)) (not excludes6.X6))) (and (and (and (and (and (not excludes6.X1) (not excludes6.X2)) (not excludes6.X3)) (not excludes6.X4)) excludes6.X5) (not excludes6.X6))) (and (and (and (and (and (not excludes6.X1) (not excludes6.X2)) (not excludes6.X3)) (not excludes6.X4)) (not excludes6.X5)) excludes6.X6)))
  (excludes6_fun excludes6.X1 excludes6.X2 excludes6.X3 excludes6.X4 excludes6.X5 excludes6.X6 excludes6.excludes)
))

; swimingpool
(declare-var swimingpool.e1 Bool)
(declare-var swimingpool.e2 Bool)
(declare-var swimingpool.e3 Bool)
(declare-var swimingpool.e4 Bool)
(declare-var swimingpool.e5 Bool)
(declare-var swimingpool.e6 Bool)
(declare-var swimingpool.init_p1 Int)
(declare-var swimingpool.init_p2 Int)
(declare-var swimingpool.x1 Int)
(declare-var swimingpool.x2 Int)
(declare-var swimingpool.x3 Int)
(declare-var swimingpool.x4 Int)
(declare-var swimingpool.x5 Int)
(declare-var swimingpool.x6 Int)
(declare-var swimingpool.x7 Int)
(declare-var swimingpool.p1 Int)
(declare-var swimingpool.p2 Int)
(declare-var swimingpool.__swimingpool_10_c Int)
(declare-var swimingpool.__swimingpool_2_c Int)
(declare-var swimingpool.__swimingpool_3_c Int)
(declare-var swimingpool.__swimingpool_4_c Int)
(declare-var swimingpool.__swimingpool_5_c Int)
(declare-var swimingpool.__swimingpool_6_c Int)
(declare-var swimingpool.__swimingpool_7_c Int)
(declare-var swimingpool.__swimingpool_8_c Int)
(declare-var swimingpool.__swimingpool_9_c Int)
(declare-var swimingpool.ni_4._arrow._first_c Bool)
(declare-var swimingpool.__swimingpool_10_m Int)
(declare-var swimingpool.__swimingpool_2_m Int)
(declare-var swimingpool.__swimingpool_3_m Int)
(declare-var swimingpool.__swimingpool_4_m Int)
(declare-var swimingpool.__swimingpool_5_m Int)
(declare-var swimingpool.__swimingpool_6_m Int)
(declare-var swimingpool.__swimingpool_7_m Int)
(declare-var swimingpool.__swimingpool_8_m Int)
(declare-var swimingpool.__swimingpool_9_m Int)
(declare-var swimingpool.ni_4._arrow._first_m Bool)
(declare-var swimingpool.__swimingpool_10_x Int)
(declare-var swimingpool.__swimingpool_2_x Int)
(declare-var swimingpool.__swimingpool_3_x Int)
(declare-var swimingpool.__swimingpool_4_x Int)
(declare-var swimingpool.__swimingpool_5_x Int)
(declare-var swimingpool.__swimingpool_6_x Int)
(declare-var swimingpool.__swimingpool_7_x Int)
(declare-var swimingpool.__swimingpool_8_x Int)
(declare-var swimingpool.__swimingpool_9_x Int)
(declare-var swimingpool.ni_4._arrow._first_x Bool)
(declare-var swimingpool.__swimingpool_1 Bool)
(declare-var swimingpool.g1 Bool)
(declare-var swimingpool.g2 Bool)
(declare-var swimingpool.g3 Bool)
(declare-var swimingpool.g4 Bool)
(declare-var swimingpool.g5 Bool)
(declare-var swimingpool.g6 Bool)
(declare-rel swimingpool_reset (Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Bool))
(declare-rel swimingpool_step (Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Bool))

(rule (=> 
  (and 
       (= swimingpool.__swimingpool_10_m swimingpool.__swimingpool_10_c)
       (= swimingpool.__swimingpool_2_m swimingpool.__swimingpool_2_c)
       (= swimingpool.__swimingpool_3_m swimingpool.__swimingpool_3_c)
       (= swimingpool.__swimingpool_4_m swimingpool.__swimingpool_4_c)
       (= swimingpool.__swimingpool_5_m swimingpool.__swimingpool_5_c)
       (= swimingpool.__swimingpool_6_m swimingpool.__swimingpool_6_c)
       (= swimingpool.__swimingpool_7_m swimingpool.__swimingpool_7_c)
       (= swimingpool.__swimingpool_8_m swimingpool.__swimingpool_8_c)
       (= swimingpool.__swimingpool_9_m swimingpool.__swimingpool_9_c)
       (= swimingpool.ni_4._arrow._first_m true)
  )
  (swimingpool_reset swimingpool.__swimingpool_10_c
                     swimingpool.__swimingpool_2_c
                     swimingpool.__swimingpool_3_c
                     swimingpool.__swimingpool_4_c
                     swimingpool.__swimingpool_5_c
                     swimingpool.__swimingpool_6_c
                     swimingpool.__swimingpool_7_c
                     swimingpool.__swimingpool_8_c
                     swimingpool.__swimingpool_9_c
                     swimingpool.ni_4._arrow._first_c
                     swimingpool.__swimingpool_10_m
                     swimingpool.__swimingpool_2_m
                     swimingpool.__swimingpool_3_m
                     swimingpool.__swimingpool_4_m
                     swimingpool.__swimingpool_5_m
                     swimingpool.__swimingpool_6_m
                     swimingpool.__swimingpool_7_m
                     swimingpool.__swimingpool_8_m
                     swimingpool.__swimingpool_9_m
                     swimingpool.ni_4._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= swimingpool.ni_4._arrow._first_m swimingpool.ni_4._arrow._first_c)
       (and (= swimingpool.__swimingpool_1 (ite swimingpool.ni_4._arrow._first_m true false))
            (= swimingpool.ni_4._arrow._first_x false))
       (and (or (not (= swimingpool.__swimingpool_1 false))
               (and (= swimingpool.p2 swimingpool.__swimingpool_2_c)
                    (= swimingpool.g5 (>= swimingpool.__swimingpool_7_c 1))
                    (= swimingpool.g2 (and (>= swimingpool.__swimingpool_10_c 1) (>= swimingpool.__swimingpool_4_c 1)))
                    (and (or (not (= swimingpool.e2 true))
                            (and (or (not (= swimingpool.g2 true))
                                    (= swimingpool.x7 (- swimingpool.__swimingpool_4_c 1)))
                                 (or (not (= swimingpool.g2 false))
                                    (= swimingpool.x7 swimingpool.__swimingpool_4_c))
                            ))
                         (or (not (= swimingpool.e2 false))
                            (and (or (not (= swimingpool.e5 true))
                                    (and (or (not (= swimingpool.g5 true))
                                            (= swimingpool.x7 (+ swimingpool.__swimingpool_4_c 1)))
                                         (or (not (= swimingpool.g5 false))
                                            (= swimingpool.x7 swimingpool.__swimingpool_4_c))
                                    ))
                                 (or (not (= swimingpool.e5 false))
                                    (= swimingpool.x7 swimingpool.__swimingpool_4_c))
                            ))
                    )
                    (= swimingpool.p1 swimingpool.__swimingpool_3_c)
                    (= swimingpool.g6 (>= swimingpool.__swimingpool_6_c 1))
                    (= swimingpool.g4 (and (>= swimingpool.__swimingpool_8_c 1) (>= swimingpool.__swimingpool_5_c 1)))
                    (= swimingpool.g3 (>= swimingpool.__swimingpool_9_c 1))
                    (= swimingpool.g1 (>= swimingpool.__swimingpool_5_c 1))
                    (and (or (not (= swimingpool.e1 true))
                            (and (or (not (= swimingpool.g1 true))
                                    (= swimingpool.x6 (- swimingpool.__swimingpool_5_c 1)))
                                 (or (not (= swimingpool.g1 false))
                                    (= swimingpool.x6 swimingpool.__swimingpool_5_c))
                            ))
                         (or (not (= swimingpool.e1 false))
                            (and (or (not (= swimingpool.e3 true))
                                    (and (or (not (= swimingpool.g3 true))
                                            (= swimingpool.x6 (+ swimingpool.__swimingpool_5_c 1)))
                                         (or (not (= swimingpool.g3 false))
                                            (= swimingpool.x6 swimingpool.__swimingpool_5_c))
                                    ))
                                 (or (not (= swimingpool.e3 false))
                                    (and (or (not (= swimingpool.e4 true))
                                            (and (or (not (= swimingpool.g4 true))
                                                    (= swimingpool.x6 (- swimingpool.__swimingpool_5_c 1)))
                                                 (or (not (= swimingpool.g4 false))
                                                    (= swimingpool.x6 swimingpool.__swimingpool_5_c))
                                            ))
                                         (or (not (= swimingpool.e4 false))
                                            (and (or (not (= swimingpool.e6 true))
                                                    (and (or (not (= swimingpool.g6 true))
                                                            (= swimingpool.x6 (+ swimingpool.__swimingpool_5_c 1)))
                                                         (or (not (= swimingpool.g6 false))
                                                            (= swimingpool.x6 swimingpool.__swimingpool_5_c))
                                                    ))
                                                 (or (not (= swimingpool.e6 false))
                                                    (= swimingpool.x6 swimingpool.__swimingpool_5_c))
                                            ))
                                    ))
                            ))
                    )
                    (and (or (not (= swimingpool.e5 true))
                            (and (or (not (= swimingpool.g5 true))
                                    (= swimingpool.x5 (+ swimingpool.__swimingpool_6_c 1)))
                                 (or (not (= swimingpool.g5 false))
                                    (= swimingpool.x5 swimingpool.__swimingpool_6_c))
                            ))
                         (or (not (= swimingpool.e5 false))
                            (and (or (not (= swimingpool.e6 true))
                                    (and (or (not (= swimingpool.g6 true))
                                            (= swimingpool.x5 (- swimingpool.__swimingpool_6_c 1)))
                                         (or (not (= swimingpool.g6 false))
                                            (= swimingpool.x5 swimingpool.__swimingpool_6_c))
                                    ))
                                 (or (not (= swimingpool.e6 false))
                                    (= swimingpool.x5 swimingpool.__swimingpool_6_c))
                            ))
                    )
                    (and (or (not (= swimingpool.e4 true))
                            (and (or (not (= swimingpool.g4 true))
                                    (= swimingpool.x4 (+ swimingpool.__swimingpool_7_c 1)))
                                 (or (not (= swimingpool.g4 false))
                                    (= swimingpool.x4 swimingpool.__swimingpool_7_c))
                            ))
                         (or (not (= swimingpool.e4 false))
                            (and (or (not (= swimingpool.e5 true))
                                    (and (or (not (= swimingpool.g4 true))
                                            (= swimingpool.x4 (- swimingpool.__swimingpool_7_c 1)))
                                         (or (not (= swimingpool.g4 false))
                                            (= swimingpool.x4 swimingpool.__swimingpool_7_c))
                                    ))
                                 (or (not (= swimingpool.e5 false))
                                    (= swimingpool.x4 swimingpool.__swimingpool_7_c))
                            ))
                    )
                    (and (or (not (= swimingpool.e3 true))
                            (and (or (not (= swimingpool.g3 true))
                                    (= swimingpool.x3 (+ swimingpool.__swimingpool_8_c 1)))
                                 (or (not (= swimingpool.g3 false))
                                    (= swimingpool.x3 swimingpool.__swimingpool_8_c))
                            ))
                         (or (not (= swimingpool.e3 false))
                            (and (or (not (= swimingpool.e4 true))
                                    (and (or (not (= swimingpool.g4 true))
                                            (= swimingpool.x3 (- swimingpool.__swimingpool_8_c 1)))
                                         (or (not (= swimingpool.g4 false))
                                            (= swimingpool.x3 swimingpool.__swimingpool_8_c))
                                    ))
                                 (or (not (= swimingpool.e4 false))
                                    (= swimingpool.x3 swimingpool.__swimingpool_8_c))
                            ))
                    )
                    (and (or (not (= swimingpool.e2 true))
                            (and (or (not (= swimingpool.g2 true))
                                    (= swimingpool.x2 (+ swimingpool.__swimingpool_9_c 1)))
                                 (or (not (= swimingpool.g2 false))
                                    (= swimingpool.x2 swimingpool.__swimingpool_9_c))
                            ))
                         (or (not (= swimingpool.e2 false))
                            (and (or (not (= swimingpool.e3 true))
                                    (and (or (not (= swimingpool.g3 true))
                                            (= swimingpool.x2 (- swimingpool.__swimingpool_9_c 1)))
                                         (or (not (= swimingpool.g3 false))
                                            (= swimingpool.x2 swimingpool.__swimingpool_9_c))
                                    ))
                                 (or (not (= swimingpool.e3 false))
                                    (= swimingpool.x2 swimingpool.__swimingpool_9_c))
                            ))
                    )
                    (and (or (not (= swimingpool.e1 true))
                            (and (or (not (= swimingpool.g1 true))
                                    (= swimingpool.x1 (+ swimingpool.__swimingpool_10_c 1)))
                                 (or (not (= swimingpool.g1 false))
                                    (= swimingpool.x1 swimingpool.__swimingpool_10_c))
                            ))
                         (or (not (= swimingpool.e1 false))
                            (and (or (not (= swimingpool.e2 true))
                                    (and (or (not (= swimingpool.g2 true))
                                            (= swimingpool.x1 (- swimingpool.__swimingpool_10_c 1)))
                                         (or (not (= swimingpool.g2 false))
                                            (= swimingpool.x1 swimingpool.__swimingpool_10_c))
                                    ))
                                 (or (not (= swimingpool.e2 false))
                                    (= swimingpool.x1 swimingpool.__swimingpool_10_c))
                            ))
                    )
                    ))
            (or (not (= swimingpool.__swimingpool_1 true))
               (and (= swimingpool.p2 swimingpool.init_p2)
                    (= swimingpool.g5 false)
                    (= swimingpool.g2 false)
                    (= swimingpool.x7 swimingpool.p2)
                    (= swimingpool.p1 swimingpool.init_p1)
                    (= swimingpool.g6 false)
                    (= swimingpool.g4 false)
                    (= swimingpool.g3 false)
                    (= swimingpool.g1 false)
                    (= swimingpool.x6 swimingpool.p1)
                    (= swimingpool.x5 0)
                    (= swimingpool.x4 0)
                    (= swimingpool.x3 0)
                    (= swimingpool.x2 0)
                    (= swimingpool.x1 0)
                    ))
       )
       (= swimingpool.__swimingpool_9_x swimingpool.x2)
       (= swimingpool.__swimingpool_8_x swimingpool.x3)
       (= swimingpool.__swimingpool_7_x swimingpool.x4)
       (= swimingpool.__swimingpool_6_x swimingpool.x5)
       (= swimingpool.__swimingpool_5_x swimingpool.x6)
       (= swimingpool.__swimingpool_4_x swimingpool.x7)
       (= swimingpool.__swimingpool_3_x swimingpool.p1)
       (= swimingpool.__swimingpool_2_x swimingpool.p2)
       (= swimingpool.__swimingpool_10_x swimingpool.x1)
       )
  (swimingpool_step swimingpool.e1
                    swimingpool.e2
                    swimingpool.e3
                    swimingpool.e4
                    swimingpool.e5
                    swimingpool.e6
                    swimingpool.init_p1
                    swimingpool.init_p2
                    swimingpool.x1
                    swimingpool.x2
                    swimingpool.x3
                    swimingpool.x4
                    swimingpool.x5
                    swimingpool.x6
                    swimingpool.x7
                    swimingpool.p1
                    swimingpool.p2
                    swimingpool.__swimingpool_10_c
                    swimingpool.__swimingpool_2_c
                    swimingpool.__swimingpool_3_c
                    swimingpool.__swimingpool_4_c
                    swimingpool.__swimingpool_5_c
                    swimingpool.__swimingpool_6_c
                    swimingpool.__swimingpool_7_c
                    swimingpool.__swimingpool_8_c
                    swimingpool.__swimingpool_9_c
                    swimingpool.ni_4._arrow._first_c
                    swimingpool.__swimingpool_10_x
                    swimingpool.__swimingpool_2_x
                    swimingpool.__swimingpool_3_x
                    swimingpool.__swimingpool_4_x
                    swimingpool.__swimingpool_5_x
                    swimingpool.__swimingpool_6_x
                    swimingpool.__swimingpool_7_x
                    swimingpool.__swimingpool_8_x
                    swimingpool.__swimingpool_9_x
                    swimingpool.ni_4._arrow._first_x)
))

; top
(declare-var top.e1 Bool)
(declare-var top.e2 Bool)
(declare-var top.e3 Bool)
(declare-var top.e4 Bool)
(declare-var top.e5 Bool)
(declare-var top.e6 Bool)
(declare-var top.init_p1 Int)
(declare-var top.init_p2 Int)
(declare-var top.OK Bool)
(declare-var top.ni_0.First.__First_2_c Int)
(declare-var top.ni_0.First.ni_6._arrow._first_c Bool)
(declare-var top.ni_1.First.__First_2_c Int)
(declare-var top.ni_1.First.ni_6._arrow._first_c Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_2.Sofar.ni_5._arrow._first_c Bool)
(declare-var top.ni_3.swimingpool.__swimingpool_10_c Int)
(declare-var top.ni_3.swimingpool.__swimingpool_2_c Int)
(declare-var top.ni_3.swimingpool.__swimingpool_3_c Int)
(declare-var top.ni_3.swimingpool.__swimingpool_4_c Int)
(declare-var top.ni_3.swimingpool.__swimingpool_5_c Int)
(declare-var top.ni_3.swimingpool.__swimingpool_6_c Int)
(declare-var top.ni_3.swimingpool.__swimingpool_7_c Int)
(declare-var top.ni_3.swimingpool.__swimingpool_8_c Int)
(declare-var top.ni_3.swimingpool.__swimingpool_9_c Int)
(declare-var top.ni_3.swimingpool.ni_4._arrow._first_c Bool)
(declare-var top.ni_0.First.__First_2_m Int)
(declare-var top.ni_0.First.ni_6._arrow._first_m Bool)
(declare-var top.ni_1.First.__First_2_m Int)
(declare-var top.ni_1.First.ni_6._arrow._first_m Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_2.Sofar.ni_5._arrow._first_m Bool)
(declare-var top.ni_3.swimingpool.__swimingpool_10_m Int)
(declare-var top.ni_3.swimingpool.__swimingpool_2_m Int)
(declare-var top.ni_3.swimingpool.__swimingpool_3_m Int)
(declare-var top.ni_3.swimingpool.__swimingpool_4_m Int)
(declare-var top.ni_3.swimingpool.__swimingpool_5_m Int)
(declare-var top.ni_3.swimingpool.__swimingpool_6_m Int)
(declare-var top.ni_3.swimingpool.__swimingpool_7_m Int)
(declare-var top.ni_3.swimingpool.__swimingpool_8_m Int)
(declare-var top.ni_3.swimingpool.__swimingpool_9_m Int)
(declare-var top.ni_3.swimingpool.ni_4._arrow._first_m Bool)
(declare-var top.ni_0.First.__First_2_x Int)
(declare-var top.ni_0.First.ni_6._arrow._first_x Bool)
(declare-var top.ni_1.First.__First_2_x Int)
(declare-var top.ni_1.First.ni_6._arrow._first_x Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_2.Sofar.ni_5._arrow._first_x Bool)
(declare-var top.ni_3.swimingpool.__swimingpool_10_x Int)
(declare-var top.ni_3.swimingpool.__swimingpool_2_x Int)
(declare-var top.ni_3.swimingpool.__swimingpool_3_x Int)
(declare-var top.ni_3.swimingpool.__swimingpool_4_x Int)
(declare-var top.ni_3.swimingpool.__swimingpool_5_x Int)
(declare-var top.ni_3.swimingpool.__swimingpool_6_x Int)
(declare-var top.ni_3.swimingpool.__swimingpool_7_x Int)
(declare-var top.ni_3.swimingpool.__swimingpool_8_x Int)
(declare-var top.ni_3.swimingpool.__swimingpool_9_x Int)
(declare-var top.ni_3.swimingpool.ni_4._arrow._first_x Bool)
(declare-var top.__top_1 Int)
(declare-var top.__top_2 Int)
(declare-var top.__top_3 Bool)
(declare-var top.__top_4 Bool)
(declare-var top.p1 Int)
(declare-var top.p2 Int)
(declare-var top.x1 Int)
(declare-var top.x2 Int)
(declare-var top.x3 Int)
(declare-var top.x4 Int)
(declare-var top.x5 Int)
(declare-var top.x6 Int)
(declare-var top.x7 Int)
(declare-rel top_reset (Int Bool Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Bool Int Bool Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Int Int Bool Int Bool Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Bool Int Bool Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Bool))

(rule (=> 
  (and 
       
       (swimingpool_reset top.ni_3.swimingpool.__swimingpool_10_c
                          top.ni_3.swimingpool.__swimingpool_2_c
                          top.ni_3.swimingpool.__swimingpool_3_c
                          top.ni_3.swimingpool.__swimingpool_4_c
                          top.ni_3.swimingpool.__swimingpool_5_c
                          top.ni_3.swimingpool.__swimingpool_6_c
                          top.ni_3.swimingpool.__swimingpool_7_c
                          top.ni_3.swimingpool.__swimingpool_8_c
                          top.ni_3.swimingpool.__swimingpool_9_c
                          top.ni_3.swimingpool.ni_4._arrow._first_c
                          top.ni_3.swimingpool.__swimingpool_10_m
                          top.ni_3.swimingpool.__swimingpool_2_m
                          top.ni_3.swimingpool.__swimingpool_3_m
                          top.ni_3.swimingpool.__swimingpool_4_m
                          top.ni_3.swimingpool.__swimingpool_5_m
                          top.ni_3.swimingpool.__swimingpool_6_m
                          top.ni_3.swimingpool.__swimingpool_7_m
                          top.ni_3.swimingpool.__swimingpool_8_m
                          top.ni_3.swimingpool.__swimingpool_9_m
                          top.ni_3.swimingpool.ni_4._arrow._first_m)
       (Sofar_reset top.ni_2.Sofar.__Sofar_2_c
                    top.ni_2.Sofar.ni_5._arrow._first_c
                    top.ni_2.Sofar.__Sofar_2_m
                    top.ni_2.Sofar.ni_5._arrow._first_m)
       (First_reset top.ni_1.First.__First_2_c
                    top.ni_1.First.ni_6._arrow._first_c
                    top.ni_1.First.__First_2_m
                    top.ni_1.First.ni_6._arrow._first_m)
       (First_reset top.ni_0.First.__First_2_c
                    top.ni_0.First.ni_6._arrow._first_c
                    top.ni_0.First.__First_2_m
                    top.ni_0.First.ni_6._arrow._first_m)
  )
  (top_reset top.ni_0.First.__First_2_c
             top.ni_0.First.ni_6._arrow._first_c
             top.ni_1.First.__First_2_c
             top.ni_1.First.ni_6._arrow._first_c
             top.ni_2.Sofar.__Sofar_2_c
             top.ni_2.Sofar.ni_5._arrow._first_c
             top.ni_3.swimingpool.__swimingpool_10_c
             top.ni_3.swimingpool.__swimingpool_2_c
             top.ni_3.swimingpool.__swimingpool_3_c
             top.ni_3.swimingpool.__swimingpool_4_c
             top.ni_3.swimingpool.__swimingpool_5_c
             top.ni_3.swimingpool.__swimingpool_6_c
             top.ni_3.swimingpool.__swimingpool_7_c
             top.ni_3.swimingpool.__swimingpool_8_c
             top.ni_3.swimingpool.__swimingpool_9_c
             top.ni_3.swimingpool.ni_4._arrow._first_c
             top.ni_0.First.__First_2_m
             top.ni_0.First.ni_6._arrow._first_m
             top.ni_1.First.__First_2_m
             top.ni_1.First.ni_6._arrow._first_m
             top.ni_2.Sofar.__Sofar_2_m
             top.ni_2.Sofar.ni_5._arrow._first_m
             top.ni_3.swimingpool.__swimingpool_10_m
             top.ni_3.swimingpool.__swimingpool_2_m
             top.ni_3.swimingpool.__swimingpool_3_m
             top.ni_3.swimingpool.__swimingpool_4_m
             top.ni_3.swimingpool.__swimingpool_5_m
             top.ni_3.swimingpool.__swimingpool_6_m
             top.ni_3.swimingpool.__swimingpool_7_m
             top.ni_3.swimingpool.__swimingpool_8_m
             top.ni_3.swimingpool.__swimingpool_9_m
             top.ni_3.swimingpool.ni_4._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_3.swimingpool.__swimingpool_10_m top.ni_3.swimingpool.__swimingpool_10_c)
            (= top.ni_3.swimingpool.__swimingpool_2_m top.ni_3.swimingpool.__swimingpool_2_c)
            (= top.ni_3.swimingpool.__swimingpool_3_m top.ni_3.swimingpool.__swimingpool_3_c)
            (= top.ni_3.swimingpool.__swimingpool_4_m top.ni_3.swimingpool.__swimingpool_4_c)
            (= top.ni_3.swimingpool.__swimingpool_5_m top.ni_3.swimingpool.__swimingpool_5_c)
            (= top.ni_3.swimingpool.__swimingpool_6_m top.ni_3.swimingpool.__swimingpool_6_c)
            (= top.ni_3.swimingpool.__swimingpool_7_m top.ni_3.swimingpool.__swimingpool_7_c)
            (= top.ni_3.swimingpool.__swimingpool_8_m top.ni_3.swimingpool.__swimingpool_8_c)
            (= top.ni_3.swimingpool.__swimingpool_9_m top.ni_3.swimingpool.__swimingpool_9_c)
            (= top.ni_3.swimingpool.ni_4._arrow._first_m top.ni_3.swimingpool.ni_4._arrow._first_c)
            )
       (swimingpool_step top.e1
                         top.e2
                         top.e3
                         top.e4
                         top.e5
                         top.e6
                         top.init_p1
                         top.init_p2
                         top.x1
                         top.x2
                         top.x3
                         top.x4
                         top.x5
                         top.x6
                         top.x7
                         top.p1
                         top.p2
                         top.ni_3.swimingpool.__swimingpool_10_m
                         top.ni_3.swimingpool.__swimingpool_2_m
                         top.ni_3.swimingpool.__swimingpool_3_m
                         top.ni_3.swimingpool.__swimingpool_4_m
                         top.ni_3.swimingpool.__swimingpool_5_m
                         top.ni_3.swimingpool.__swimingpool_6_m
                         top.ni_3.swimingpool.__swimingpool_7_m
                         top.ni_3.swimingpool.__swimingpool_8_m
                         top.ni_3.swimingpool.__swimingpool_9_m
                         top.ni_3.swimingpool.ni_4._arrow._first_m
                         top.ni_3.swimingpool.__swimingpool_10_x
                         top.ni_3.swimingpool.__swimingpool_2_x
                         top.ni_3.swimingpool.__swimingpool_3_x
                         top.ni_3.swimingpool.__swimingpool_4_x
                         top.ni_3.swimingpool.__swimingpool_5_x
                         top.ni_3.swimingpool.__swimingpool_6_x
                         top.ni_3.swimingpool.__swimingpool_7_x
                         top.ni_3.swimingpool.__swimingpool_8_x
                         top.ni_3.swimingpool.__swimingpool_9_x
                         top.ni_3.swimingpool.ni_4._arrow._first_x)
       (excludes6_fun top.e1
                      top.e2
                      top.e3
                      top.e4
                      top.e5
                      top.e6
                      top.__top_3)
       (and (= top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.__Sofar_2_c)
            (= top.ni_2.Sofar.ni_5._arrow._first_m top.ni_2.Sofar.ni_5._arrow._first_c)
            )
       (Sofar_step top.__top_3
                   top.__top_4
                   top.ni_2.Sofar.__Sofar_2_m
                   top.ni_2.Sofar.ni_5._arrow._first_m
                   top.ni_2.Sofar.__Sofar_2_x
                   top.ni_2.Sofar.ni_5._arrow._first_x)
       (and (= top.ni_1.First.__First_2_m top.ni_1.First.__First_2_c)
            (= top.ni_1.First.ni_6._arrow._first_m top.ni_1.First.ni_6._arrow._first_c)
            )
       (First_step top.init_p1
                   top.__top_2
                   top.ni_1.First.__First_2_m
                   top.ni_1.First.ni_6._arrow._first_m
                   top.ni_1.First.__First_2_x
                   top.ni_1.First.ni_6._arrow._first_x)
       (and (= top.ni_0.First.__First_2_m top.ni_0.First.__First_2_c)
            (= top.ni_0.First.ni_6._arrow._first_m top.ni_0.First.ni_6._arrow._first_c)
            )
       (First_step top.init_p2
                   top.__top_1
                   top.ni_0.First.__First_2_m
                   top.ni_0.First.ni_6._arrow._first_m
                   top.ni_0.First.__First_2_x
                   top.ni_0.First.ni_6._arrow._first_x)
       (= top.OK (=> (and (and (and (and top.__top_4 (<= 0 top.__top_2)) (<= 0 top.__top_1)) (< top.__top_2 1000)) (< top.__top_1 1000)) (< top.x5 1)))
       )
  (top_step top.e1
            top.e2
            top.e3
            top.e4
            top.e5
            top.e6
            top.init_p1
            top.init_p2
            top.OK
            top.ni_0.First.__First_2_c
            top.ni_0.First.ni_6._arrow._first_c
            top.ni_1.First.__First_2_c
            top.ni_1.First.ni_6._arrow._first_c
            top.ni_2.Sofar.__Sofar_2_c
            top.ni_2.Sofar.ni_5._arrow._first_c
            top.ni_3.swimingpool.__swimingpool_10_c
            top.ni_3.swimingpool.__swimingpool_2_c
            top.ni_3.swimingpool.__swimingpool_3_c
            top.ni_3.swimingpool.__swimingpool_4_c
            top.ni_3.swimingpool.__swimingpool_5_c
            top.ni_3.swimingpool.__swimingpool_6_c
            top.ni_3.swimingpool.__swimingpool_7_c
            top.ni_3.swimingpool.__swimingpool_8_c
            top.ni_3.swimingpool.__swimingpool_9_c
            top.ni_3.swimingpool.ni_4._arrow._first_c
            top.ni_0.First.__First_2_x
            top.ni_0.First.ni_6._arrow._first_x
            top.ni_1.First.__First_2_x
            top.ni_1.First.ni_6._arrow._first_x
            top.ni_2.Sofar.__Sofar_2_x
            top.ni_2.Sofar.ni_5._arrow._first_x
            top.ni_3.swimingpool.__swimingpool_10_x
            top.ni_3.swimingpool.__swimingpool_2_x
            top.ni_3.swimingpool.__swimingpool_3_x
            top.ni_3.swimingpool.__swimingpool_4_x
            top.ni_3.swimingpool.__swimingpool_5_x
            top.ni_3.swimingpool.__swimingpool_6_x
            top.ni_3.swimingpool.__swimingpool_7_x
            top.ni_3.swimingpool.__swimingpool_8_x
            top.ni_3.swimingpool.__swimingpool_9_x
            top.ni_3.swimingpool.ni_4._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Bool Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.First.__First_2_c top.ni_0.First.ni_6._arrow._first_c top.ni_1.First.__First_2_c top.ni_1.First.ni_6._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_5._arrow._first_c top.ni_3.swimingpool.__swimingpool_10_c top.ni_3.swimingpool.__swimingpool_2_c top.ni_3.swimingpool.__swimingpool_3_c top.ni_3.swimingpool.__swimingpool_4_c top.ni_3.swimingpool.__swimingpool_5_c top.ni_3.swimingpool.__swimingpool_6_c top.ni_3.swimingpool.__swimingpool_7_c top.ni_3.swimingpool.__swimingpool_8_c top.ni_3.swimingpool.__swimingpool_9_c top.ni_3.swimingpool.ni_4._arrow._first_c top.ni_0.First.__First_2_m top.ni_0.First.ni_6._arrow._first_m top.ni_1.First.__First_2_m top.ni_1.First.ni_6._arrow._first_m top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.ni_5._arrow._first_m top.ni_3.swimingpool.__swimingpool_10_m top.ni_3.swimingpool.__swimingpool_2_m top.ni_3.swimingpool.__swimingpool_3_m top.ni_3.swimingpool.__swimingpool_4_m top.ni_3.swimingpool.__swimingpool_5_m top.ni_3.swimingpool.__swimingpool_6_m top.ni_3.swimingpool.__swimingpool_7_m top.ni_3.swimingpool.__swimingpool_8_m top.ni_3.swimingpool.__swimingpool_9_m top.ni_3.swimingpool.ni_4._arrow._first_m)
       (top_step top.e1 top.e2 top.e3 top.e4 top.e5 top.e6 top.init_p1 top.init_p2 top.OK top.ni_0.First.__First_2_m top.ni_0.First.ni_6._arrow._first_m top.ni_1.First.__First_2_m top.ni_1.First.ni_6._arrow._first_m top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.ni_5._arrow._first_m top.ni_3.swimingpool.__swimingpool_10_m top.ni_3.swimingpool.__swimingpool_2_m top.ni_3.swimingpool.__swimingpool_3_m top.ni_3.swimingpool.__swimingpool_4_m top.ni_3.swimingpool.__swimingpool_5_m top.ni_3.swimingpool.__swimingpool_6_m top.ni_3.swimingpool.__swimingpool_7_m top.ni_3.swimingpool.__swimingpool_8_m top.ni_3.swimingpool.__swimingpool_9_m top.ni_3.swimingpool.ni_4._arrow._first_m top.ni_0.First.__First_2_x top.ni_0.First.ni_6._arrow._first_x top.ni_1.First.__First_2_x top.ni_1.First.ni_6._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_5._arrow._first_x top.ni_3.swimingpool.__swimingpool_10_x top.ni_3.swimingpool.__swimingpool_2_x top.ni_3.swimingpool.__swimingpool_3_x top.ni_3.swimingpool.__swimingpool_4_x top.ni_3.swimingpool.__swimingpool_5_x top.ni_3.swimingpool.__swimingpool_6_x top.ni_3.swimingpool.__swimingpool_7_x top.ni_3.swimingpool.__swimingpool_8_x top.ni_3.swimingpool.__swimingpool_9_x top.ni_3.swimingpool.ni_4._arrow._first_x)
  )
  (MAIN top.ni_0.First.__First_2_x top.ni_0.First.ni_6._arrow._first_x top.ni_1.First.__First_2_x top.ni_1.First.ni_6._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_5._arrow._first_x top.ni_3.swimingpool.__swimingpool_10_x top.ni_3.swimingpool.__swimingpool_2_x top.ni_3.swimingpool.__swimingpool_3_x top.ni_3.swimingpool.__swimingpool_4_x top.ni_3.swimingpool.__swimingpool_5_x top.ni_3.swimingpool.__swimingpool_6_x top.ni_3.swimingpool.__swimingpool_7_x top.ni_3.swimingpool.__swimingpool_8_x top.ni_3.swimingpool.__swimingpool_9_x top.ni_3.swimingpool.ni_4._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.First.__First_2_c top.ni_0.First.ni_6._arrow._first_c top.ni_1.First.__First_2_c top.ni_1.First.ni_6._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_5._arrow._first_c top.ni_3.swimingpool.__swimingpool_10_c top.ni_3.swimingpool.__swimingpool_2_c top.ni_3.swimingpool.__swimingpool_3_c top.ni_3.swimingpool.__swimingpool_4_c top.ni_3.swimingpool.__swimingpool_5_c top.ni_3.swimingpool.__swimingpool_6_c top.ni_3.swimingpool.__swimingpool_7_c top.ni_3.swimingpool.__swimingpool_8_c top.ni_3.swimingpool.__swimingpool_9_c top.ni_3.swimingpool.ni_4._arrow._first_c dummytop.OK)
       (top_step top.e1 top.e2 top.e3 top.e4 top.e5 top.e6 top.init_p1 top.init_p2 top.OK top.ni_0.First.__First_2_c top.ni_0.First.ni_6._arrow._first_c top.ni_1.First.__First_2_c top.ni_1.First.ni_6._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_5._arrow._first_c top.ni_3.swimingpool.__swimingpool_10_c top.ni_3.swimingpool.__swimingpool_2_c top.ni_3.swimingpool.__swimingpool_3_c top.ni_3.swimingpool.__swimingpool_4_c top.ni_3.swimingpool.__swimingpool_5_c top.ni_3.swimingpool.__swimingpool_6_c top.ni_3.swimingpool.__swimingpool_7_c top.ni_3.swimingpool.__swimingpool_8_c top.ni_3.swimingpool.__swimingpool_9_c top.ni_3.swimingpool.ni_4._arrow._first_c top.ni_0.First.__First_2_x top.ni_0.First.ni_6._arrow._first_x top.ni_1.First.__First_2_x top.ni_1.First.ni_6._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_5._arrow._first_x top.ni_3.swimingpool.__swimingpool_10_x top.ni_3.swimingpool.__swimingpool_2_x top.ni_3.swimingpool.__swimingpool_3_x top.ni_3.swimingpool.__swimingpool_4_x top.ni_3.swimingpool.__swimingpool_5_x top.ni_3.swimingpool.__swimingpool_6_x top.ni_3.swimingpool.__swimingpool_7_x top.ni_3.swimingpool.__swimingpool_8_x top.ni_3.swimingpool.__swimingpool_9_x top.ni_3.swimingpool.ni_4._arrow._first_x)
  )
  (MAIN top.ni_0.First.__First_2_x top.ni_0.First.ni_6._arrow._first_x top.ni_1.First.__First_2_x top.ni_1.First.ni_6._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_5._arrow._first_x top.ni_3.swimingpool.__swimingpool_10_x top.ni_3.swimingpool.__swimingpool_2_x top.ni_3.swimingpool.__swimingpool_3_x top.ni_3.swimingpool.__swimingpool_4_x top.ni_3.swimingpool.__swimingpool_5_x top.ni_3.swimingpool.__swimingpool_6_x top.ni_3.swimingpool.__swimingpool_7_x top.ni_3.swimingpool.__swimingpool_8_x top.ni_3.swimingpool.__swimingpool_9_x top.ni_3.swimingpool.ni_4._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.First.__First_2_x top.ni_0.First.ni_6._arrow._first_x top.ni_1.First.__First_2_x top.ni_1.First.ni_6._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_5._arrow._first_x top.ni_3.swimingpool.__swimingpool_10_x top.ni_3.swimingpool.__swimingpool_2_x top.ni_3.swimingpool.__swimingpool_3_x top.ni_3.swimingpool.__swimingpool_4_x top.ni_3.swimingpool.__swimingpool_5_x top.ni_3.swimingpool.__swimingpool_6_x top.ni_3.swimingpool.__swimingpool_7_x top.ni_3.swimingpool.__swimingpool_8_x top.ni_3.swimingpool.__swimingpool_9_x top.ni_3.swimingpool.ni_4._arrow._first_x top.OK))
  ERR))
(query ERR)
