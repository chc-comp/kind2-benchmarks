; Statically linked libraries
; Sofar
(declare-var Sofar.X Bool)
(declare-var Sofar.Sofar Bool)
(declare-var Sofar.__Sofar_2_c Bool)
(declare-var Sofar.ni_4._arrow._first_c Bool)
(declare-var Sofar.__Sofar_2_m Bool)
(declare-var Sofar.ni_4._arrow._first_m Bool)
(declare-var Sofar.__Sofar_2_x Bool)
(declare-var Sofar.ni_4._arrow._first_x Bool)
(declare-var Sofar.__Sofar_1 Bool)
(declare-rel Sofar_reset (Bool Bool Bool Bool))
(declare-rel Sofar_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= Sofar.__Sofar_2_m Sofar.__Sofar_2_c)
       (= Sofar.ni_4._arrow._first_m true)
  )
  (Sofar_reset Sofar.__Sofar_2_c
               Sofar.ni_4._arrow._first_c
               Sofar.__Sofar_2_m
               Sofar.ni_4._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Sofar.ni_4._arrow._first_m Sofar.ni_4._arrow._first_c)(and (= Sofar.__Sofar_1 (ite Sofar.ni_4._arrow._first_m true false))
                                                                    (= Sofar.ni_4._arrow._first_x false))
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
              Sofar.ni_4._arrow._first_c
              Sofar.__Sofar_2_x
              Sofar.ni_4._arrow._first_x)
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

; illinois
(declare-var illinois.e1 Bool)
(declare-var illinois.e2 Bool)
(declare-var illinois.e3 Bool)
(declare-var illinois.e4 Bool)
(declare-var illinois.e5 Bool)
(declare-var illinois.e6 Bool)
(declare-var illinois.e7 Bool)
(declare-var illinois.e8 Bool)
(declare-var illinois.e9 Bool)
(declare-var illinois.init_invalid Int)
(declare-var illinois.invalid Int)
(declare-var illinois.dirty Int)
(declare-var illinois.exclusive Int)
(declare-var illinois.shared Int)
(declare-var illinois.__illinois_2_c Int)
(declare-var illinois.__illinois_3_c Int)
(declare-var illinois.__illinois_4_c Int)
(declare-var illinois.__illinois_5_c Int)
(declare-var illinois.__illinois_7_c Int)
(declare-var illinois.ni_3._arrow._first_c Bool)
(declare-var illinois.__illinois_2_m Int)
(declare-var illinois.__illinois_3_m Int)
(declare-var illinois.__illinois_4_m Int)
(declare-var illinois.__illinois_5_m Int)
(declare-var illinois.__illinois_7_m Int)
(declare-var illinois.ni_3._arrow._first_m Bool)
(declare-var illinois.__illinois_2_x Int)
(declare-var illinois.__illinois_3_x Int)
(declare-var illinois.__illinois_4_x Int)
(declare-var illinois.__illinois_5_x Int)
(declare-var illinois.__illinois_7_x Int)
(declare-var illinois.ni_3._arrow._first_x Bool)
(declare-var illinois.__illinois_1 Bool)
(declare-var illinois.g1 Bool)
(declare-var illinois.g2 Bool)
(declare-var illinois.g3 Bool)
(declare-var illinois.g4 Bool)
(declare-var illinois.g5 Bool)
(declare-var illinois.g6 Bool)
(declare-var illinois.g7 Bool)
(declare-var illinois.g8 Bool)
(declare-var illinois.g9 Bool)
(declare-rel illinois_reset (Int Int Int Int Int Bool Int Int Int Int Int Bool))
(declare-rel illinois_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Bool))

(rule (=> 
  (and 
       (= illinois.__illinois_2_m illinois.__illinois_2_c)
       (= illinois.__illinois_3_m illinois.__illinois_3_c)
       (= illinois.__illinois_4_m illinois.__illinois_4_c)
       (= illinois.__illinois_5_m illinois.__illinois_5_c)
       (= illinois.__illinois_7_m illinois.__illinois_7_c)
       (= illinois.ni_3._arrow._first_m true)
  )
  (illinois_reset illinois.__illinois_2_c
                  illinois.__illinois_3_c
                  illinois.__illinois_4_c
                  illinois.__illinois_5_c
                  illinois.__illinois_7_c
                  illinois.ni_3._arrow._first_c
                  illinois.__illinois_2_m
                  illinois.__illinois_3_m
                  illinois.__illinois_4_m
                  illinois.__illinois_5_m
                  illinois.__illinois_7_m
                  illinois.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= illinois.g8 (>= illinois.__illinois_2_c 1))
       (= illinois.g6 (>= illinois.__illinois_7_c 1))
       (= illinois.g5 (>= illinois.__illinois_2_c 1))
       (= illinois.g3 (and (>= illinois.__illinois_7_c 1) (>= (+ illinois.__illinois_2_c illinois.__illinois_3_c) 1)))
       (= illinois.g2 (and (>= illinois.__illinois_7_c 1) (>= illinois.__illinois_5_c 1)))
       (= illinois.ni_3._arrow._first_m illinois.ni_3._arrow._first_c)
       (and (= illinois.__illinois_1 (ite illinois.ni_3._arrow._first_m true false))
            (= illinois.ni_3._arrow._first_x false))
       (and (or (not (= illinois.__illinois_1 true))
               (= illinois.shared 0))
            (or (not (= illinois.__illinois_1 false))
               (and (or (not (= illinois.e2 true))
                       (and (or (not (= illinois.g2 true))
                               (= illinois.shared (+ illinois.__illinois_2_c 2)))
                            (or (not (= illinois.g2 false))
                               (= illinois.shared illinois.__illinois_2_c))
                       ))
                    (or (not (= illinois.e2 false))
                       (and (or (not (= illinois.e3 true))
                               (and (or (not (= illinois.g3 true))
                                       (= illinois.shared (+ (+ illinois.__illinois_2_c illinois.__illinois_3_c) 1)))
                                    (or (not (= illinois.g3 false))
                                       (= illinois.shared illinois.__illinois_2_c))
                               ))
                            (or (not (= illinois.e3 false))
                               (and (or (not (= illinois.e5 true))
                                       (and (or (not (= illinois.g5 true))
                                               (= illinois.shared 0))
                                            (or (not (= illinois.g5 false))
                                               (= illinois.shared illinois.__illinois_2_c))
                                       ))
                                    (or (not (= illinois.e5 false))
                                       (and (or (not (= illinois.e6 true))
                                               (and (or (not (= illinois.g6 true))
                                                       (= illinois.shared 0))
                                                    (or (not (= illinois.g6 false))
                                                       (= illinois.shared illinois.__illinois_2_c))
                                               ))
                                            (or (not (= illinois.e6 false))
                                               (and (or (not (= illinois.e8 true))
                                                       (and (or (not (= illinois.g8 true))
                                                               (= illinois.shared (- illinois.__illinois_2_c 1)))
                                                            (or (not (= illinois.g8 false))
                                                               (= illinois.shared illinois.__illinois_2_c))
                                                       ))
                                                    (or (not (= illinois.e8 false))
                                                       (= illinois.shared illinois.__illinois_2_c))
                                               ))
                                       ))
                               ))
                       ))
               ))
       )
       (= illinois.g9 (>= illinois.__illinois_3_c 1))
       (= illinois.g7 (>= illinois.__illinois_5_c 1))
       (= illinois.g1 (and (and (and (>= illinois.__illinois_7_c 1) (= illinois.__illinois_5_c 0)) (= illinois.__illinois_2_c 0)) (= illinois.__illinois_3_c 0)))
       (and (or (not (= illinois.__illinois_1 true))
               (and (or (not (= (> illinois.init_invalid 0) true))
                       (= illinois.invalid illinois.init_invalid))
                    (or (not (= (> illinois.init_invalid 0) false))
                       (= illinois.invalid (- 1 illinois.init_invalid)))
               ))
            (or (not (= illinois.__illinois_1 false))
               (and (or (not (= illinois.e1 true))
                       (and (or (not (= illinois.g1 true))
                               (= illinois.invalid (- illinois.__illinois_7_c 1)))
                            (or (not (= illinois.g1 false))
                               (= illinois.invalid illinois.__illinois_7_c))
                       ))
                    (or (not (= illinois.e1 false))
                       (and (or (not (= illinois.e2 true))
                               (and (or (not (= illinois.g2 true))
                                       (= illinois.invalid (- illinois.__illinois_7_c 1)))
                                    (or (not (= illinois.g2 false))
                                       (= illinois.invalid illinois.__illinois_7_c))
                               ))
                            (or (not (= illinois.e2 false))
                               (and (or (not (= illinois.e3 true))
                                       (and (or (not (= illinois.g3 true))
                                               (= illinois.invalid (- illinois.__illinois_7_c 1)))
                                            (or (not (= illinois.g3 false))
                                               (= illinois.invalid illinois.__illinois_7_c))
                                       ))
                                    (or (not (= illinois.e3 false))
                                       (and (or (not (= illinois.e5 true))
                                               (and (or (not (= illinois.g5 true))
                                                       (= illinois.invalid (- (+ illinois.__illinois_7_c illinois.__illinois_2_c) 1)))
                                                    (or (not (= illinois.g5 false))
                                                       (= illinois.invalid illinois.__illinois_7_c))
                                               ))
                                            (or (not (= illinois.e5 false))
                                               (and (or (not (= illinois.e6 true))
                                                       (and (or (not (= illinois.g6 true))
                                                               (= illinois.invalid (- (+ (+ (+ illinois.__illinois_7_c illinois.__illinois_5_c) illinois.__illinois_2_c) illinois.__illinois_3_c) 1)))
                                                            (or (not (= illinois.g6 false))
                                                               (= illinois.invalid illinois.__illinois_7_c))
                                                       ))
                                                    (or (not (= illinois.e6 false))
                                                       (and (or (not (= illinois.e7 true))
                                                               (and (or (not (= illinois.g7 true))
                                                                    (= illinois.invalid (+ illinois.__illinois_7_c 1)))
                                                                    (or (not (= illinois.g7 false))
                                                                    (= illinois.invalid illinois.__illinois_7_c))
                                                               ))
                                                            (or (not (= illinois.e7 false))
                                                               (and (or (not (= illinois.e8 true))
                                                                    (and 
                                                                    (or (not (= illinois.g8 true))
                                                                    (= illinois.invalid (+ illinois.__illinois_7_c 1)))
                                                                    (or (not (= illinois.g8 false))
                                                                    (= illinois.invalid illinois.__illinois_7_c))
                                                                    ))
                                                                    (or (not (= illinois.e8 false))
                                                                    (and 
                                                                    (or (not (= illinois.e9 true))
                                                                    (and 
                                                                    (or (not (= illinois.g9 true))
                                                                    (= illinois.invalid (+ illinois.__illinois_7_c 1)))
                                                                    (or (not (= illinois.g9 false))
                                                                    (= illinois.invalid illinois.__illinois_7_c))
                                                                    ))
                                                                    (or (not (= illinois.e9 false))
                                                                    (= illinois.invalid illinois.__illinois_7_c))
                                                                    ))
                                                               ))
                                                       ))
                                               ))
                                       ))
                               ))
                       ))
               ))
       )
       (= illinois.g4 (>= illinois.__illinois_3_c 1))
       (and (or (not (= illinois.__illinois_1 false))
               (and (and (or (not (= illinois.e1 true))
                            (and (or (not (= illinois.g1 true))
                                    (= illinois.exclusive (+ illinois.__illinois_3_c 1)))
                                 (or (not (= illinois.g1 false))
                                    (= illinois.exclusive illinois.__illinois_3_c))
                            ))
                         (or (not (= illinois.e1 false))
                            (and (or (not (= illinois.e3 true))
                                    (and (or (not (= illinois.g3 true))
                                            (= illinois.exclusive illinois.__illinois_4_c))
                                         (or (not (= illinois.g3 false))
                                            (= illinois.exclusive illinois.__illinois_3_c))
                                    ))
                                 (or (not (= illinois.e3 false))
                                    (and (or (not (= illinois.e4 true))
                                            (and (or (not (= illinois.g4 true))
                                                    (= illinois.exclusive (- illinois.__illinois_3_c 1)))
                                                 (or (not (= illinois.g4 false))
                                                    (= illinois.exclusive illinois.__illinois_3_c))
                                            ))
                                         (or (not (= illinois.e4 false))
                                            (and (or (not (= illinois.e6 true))
                                                    (and (or (not (= illinois.g6 true))
                                                            (= illinois.exclusive 0))
                                                         (or (not (= illinois.g6 false))
                                                            (= illinois.exclusive illinois.__illinois_3_c))
                                                    ))
                                                 (or (not (= illinois.e6 false))
                                                    (and (or (not (= illinois.e9 true))
                                                            (and (or (not (= illinois.g9 true))
                                                                    (= illinois.exclusive (- illinois.__illinois_3_c 1)))
                                                                 (or (not (= illinois.g9 false))
                                                                    (= illinois.exclusive illinois.__illinois_3_c))
                                                            ))
                                                         (or (not (= illinois.e9 false))
                                                            (= illinois.exclusive illinois.__illinois_3_c))
                                                    ))
                                            ))
                                    ))
                            ))
                    )
                    (and (or (not (= illinois.e2 true))
                            (and (or (not (= illinois.g2 true))
                                    (= illinois.dirty (- illinois.__illinois_5_c 1)))
                                 (or (not (= illinois.g2 false))
                                    (= illinois.dirty illinois.__illinois_5_c))
                            ))
                         (or (not (= illinois.e2 false))
                            (and (or (not (= illinois.e4 true))
                                    (and (or (not (= illinois.g4 true))
                                            (= illinois.dirty (+ illinois.__illinois_5_c 1)))
                                         (or (not (= illinois.g4 false))
                                            (= illinois.dirty illinois.__illinois_5_c))
                                    ))
                                 (or (not (= illinois.e4 false))
                                    (and (or (not (= illinois.e5 true))
                                            (and (or (not (= illinois.g5 true))
                                                    (= illinois.dirty (+ illinois.__illinois_5_c 1)))
                                                 (or (not (= illinois.g5 false))
                                                    (= illinois.dirty illinois.__illinois_5_c))
                                            ))
                                         (or (not (= illinois.e5 false))
                                            (and (or (not (= illinois.e6 true))
                                                    (and (or (not (= illinois.g6 true))
                                                            (= illinois.dirty 1))
                                                         (or (not (= illinois.g6 false))
                                                            (= illinois.dirty illinois.__illinois_5_c))
                                                    ))
                                                 (or (not (= illinois.e6 false))
                                                    (and (or (not (= illinois.e7 true))
                                                            (and (or (not (= illinois.g7 true))
                                                                    (= illinois.dirty (- illinois.__illinois_5_c 1)))
                                                                 (or (not (= illinois.g7 false))
                                                                    (= illinois.dirty illinois.__illinois_5_c))
                                                            ))
                                                         (or (not (= illinois.e7 false))
                                                            (= illinois.dirty illinois.__illinois_5_c))
                                                    ))
                                            ))
                                    ))
                            ))
                    )
                    ))
            (or (not (= illinois.__illinois_1 true))
               (and (= illinois.exclusive 0)
                    (= illinois.dirty 0)
                    ))
       )
       (= illinois.__illinois_7_x illinois.invalid)
       (= illinois.__illinois_5_x illinois.dirty)
       (= illinois.__illinois_4_x 0)
       (= illinois.__illinois_3_x illinois.exclusive)
       (= illinois.__illinois_2_x illinois.shared)
       )
  (illinois_step illinois.e1
                 illinois.e2
                 illinois.e3
                 illinois.e4
                 illinois.e5
                 illinois.e6
                 illinois.e7
                 illinois.e8
                 illinois.e9
                 illinois.init_invalid
                 illinois.invalid
                 illinois.dirty
                 illinois.exclusive
                 illinois.shared
                 illinois.__illinois_2_c
                 illinois.__illinois_3_c
                 illinois.__illinois_4_c
                 illinois.__illinois_5_c
                 illinois.__illinois_7_c
                 illinois.ni_3._arrow._first_c
                 illinois.__illinois_2_x
                 illinois.__illinois_3_x
                 illinois.__illinois_4_x
                 illinois.__illinois_5_x
                 illinois.__illinois_7_x
                 illinois.ni_3._arrow._first_x)
))

; top
(declare-var top.e1 Bool)
(declare-var top.e2 Bool)
(declare-var top.e3 Bool)
(declare-var top.e4 Bool)
(declare-var top.e5 Bool)
(declare-var top.e6 Bool)
(declare-var top.e7 Bool)
(declare-var top.e8 Bool)
(declare-var top.e9 Bool)
(declare-var top.init_invalid Int)
(declare-var top.OK Bool)
(declare-var top.__top_2_c Int)
(declare-var top.ni_0._arrow._first_c Bool)
(declare-var top.ni_1.illinois.__illinois_2_c Int)
(declare-var top.ni_1.illinois.__illinois_3_c Int)
(declare-var top.ni_1.illinois.__illinois_4_c Int)
(declare-var top.ni_1.illinois.__illinois_5_c Int)
(declare-var top.ni_1.illinois.__illinois_7_c Int)
(declare-var top.ni_1.illinois.ni_3._arrow._first_c Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_2.Sofar.ni_4._arrow._first_c Bool)
(declare-var top.__top_2_m Int)
(declare-var top.ni_0._arrow._first_m Bool)
(declare-var top.ni_1.illinois.__illinois_2_m Int)
(declare-var top.ni_1.illinois.__illinois_3_m Int)
(declare-var top.ni_1.illinois.__illinois_4_m Int)
(declare-var top.ni_1.illinois.__illinois_5_m Int)
(declare-var top.ni_1.illinois.__illinois_7_m Int)
(declare-var top.ni_1.illinois.ni_3._arrow._first_m Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_2.Sofar.ni_4._arrow._first_m Bool)
(declare-var top.__top_2_x Int)
(declare-var top.ni_0._arrow._first_x Bool)
(declare-var top.ni_1.illinois.__illinois_2_x Int)
(declare-var top.ni_1.illinois.__illinois_3_x Int)
(declare-var top.ni_1.illinois.__illinois_4_x Int)
(declare-var top.ni_1.illinois.__illinois_5_x Int)
(declare-var top.ni_1.illinois.__illinois_7_x Int)
(declare-var top.ni_1.illinois.ni_3._arrow._first_x Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_2.Sofar.ni_4._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.__top_3 Bool)
(declare-var top.__top_4 Bool)
(declare-var top.dirty Int)
(declare-var top.env Bool)
(declare-var top.exclusive Int)
(declare-var top.invalid Int)
(declare-var top.shared Int)
(declare-rel top_reset (Int Bool Int Int Int Int Int Bool Bool Bool Int Bool Int Int Int Int Int Bool Bool Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Bool Int Bool Int Int Int Int Int Bool Bool Bool Int Bool Int Int Int Int Int Bool Bool Bool))

(rule (=> 
  (and 
       (= top.__top_2_m top.__top_2_c)
       (Sofar_reset top.ni_2.Sofar.__Sofar_2_c
                    top.ni_2.Sofar.ni_4._arrow._first_c
                    top.ni_2.Sofar.__Sofar_2_m
                    top.ni_2.Sofar.ni_4._arrow._first_m)
       (illinois_reset top.ni_1.illinois.__illinois_2_c
                       top.ni_1.illinois.__illinois_3_c
                       top.ni_1.illinois.__illinois_4_c
                       top.ni_1.illinois.__illinois_5_c
                       top.ni_1.illinois.__illinois_7_c
                       top.ni_1.illinois.ni_3._arrow._first_c
                       top.ni_1.illinois.__illinois_2_m
                       top.ni_1.illinois.__illinois_3_m
                       top.ni_1.illinois.__illinois_4_m
                       top.ni_1.illinois.__illinois_5_m
                       top.ni_1.illinois.__illinois_7_m
                       top.ni_1.illinois.ni_3._arrow._first_m)
       (= top.ni_0._arrow._first_m true)
  )
  (top_reset top.__top_2_c
             top.ni_0._arrow._first_c
             top.ni_1.illinois.__illinois_2_c
             top.ni_1.illinois.__illinois_3_c
             top.ni_1.illinois.__illinois_4_c
             top.ni_1.illinois.__illinois_5_c
             top.ni_1.illinois.__illinois_7_c
             top.ni_1.illinois.ni_3._arrow._first_c
             top.ni_2.Sofar.__Sofar_2_c
             top.ni_2.Sofar.ni_4._arrow._first_c
             top.__top_2_m
             top.ni_0._arrow._first_m
             top.ni_1.illinois.__illinois_2_m
             top.ni_1.illinois.__illinois_3_m
             top.ni_1.illinois.__illinois_4_m
             top.ni_1.illinois.__illinois_5_m
             top.ni_1.illinois.__illinois_7_m
             top.ni_1.illinois.ni_3._arrow._first_m
             top.ni_2.Sofar.__Sofar_2_m
             top.ni_2.Sofar.ni_4._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (excludes9_fun top.e1
                      top.e2
                      top.e3
                      top.e4
                      top.e5
                      top.e6
                      top.e7
                      top.e8
                      top.e9
                      top.__top_4)
       (and (= top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.__Sofar_2_c)
            (= top.ni_2.Sofar.ni_4._arrow._first_m top.ni_2.Sofar.ni_4._arrow._first_c)
            )
       (Sofar_step top.__top_4
                   top.env
                   top.ni_2.Sofar.__Sofar_2_m
                   top.ni_2.Sofar.ni_4._arrow._first_m
                   top.ni_2.Sofar.__Sofar_2_x
                   top.ni_2.Sofar.ni_4._arrow._first_x)
       (and (= top.ni_1.illinois.__illinois_2_m top.ni_1.illinois.__illinois_2_c)
            (= top.ni_1.illinois.__illinois_3_m top.ni_1.illinois.__illinois_3_c)
            (= top.ni_1.illinois.__illinois_4_m top.ni_1.illinois.__illinois_4_c)
            (= top.ni_1.illinois.__illinois_5_m top.ni_1.illinois.__illinois_5_c)
            (= top.ni_1.illinois.__illinois_7_m top.ni_1.illinois.__illinois_7_c)
            (= top.ni_1.illinois.ni_3._arrow._first_m top.ni_1.illinois.ni_3._arrow._first_c)
            )
       (illinois_step top.e1
                      top.e2
                      top.e3
                      top.e4
                      top.e5
                      top.e6
                      top.e7
                      top.e8
                      top.e9
                      top.init_invalid
                      top.invalid
                      top.dirty
                      top.exclusive
                      top.shared
                      top.ni_1.illinois.__illinois_2_m
                      top.ni_1.illinois.__illinois_3_m
                      top.ni_1.illinois.__illinois_4_m
                      top.ni_1.illinois.__illinois_5_m
                      top.ni_1.illinois.__illinois_7_m
                      top.ni_1.illinois.ni_3._arrow._first_m
                      top.ni_1.illinois.__illinois_2_x
                      top.ni_1.illinois.__illinois_3_x
                      top.ni_1.illinois.__illinois_4_x
                      top.ni_1.illinois.__illinois_5_x
                      top.ni_1.illinois.__illinois_7_x
                      top.ni_1.illinois.ni_3._arrow._first_x)
       (= top.ni_0._arrow._first_m top.ni_0._arrow._first_c)(and (= top.__top_1 (ite top.ni_0._arrow._first_m true false))
                                                                 (= top.ni_0._arrow._first_x false))
       (and (or (not (= top.__top_1 true))
               (= top.__top_3 true))
            (or (not (= top.__top_1 false))
               (= top.__top_3 (= (+ (+ (+ top.invalid top.dirty) top.exclusive) top.shared) top.__top_2_c)))
       )
       (= top.__top_2_x (+ (+ (+ top.invalid top.dirty) top.exclusive) top.shared))
       (= top.OK (=> top.env top.__top_3))
       )
  (top_step top.e1
            top.e2
            top.e3
            top.e4
            top.e5
            top.e6
            top.e7
            top.e8
            top.e9
            top.init_invalid
            top.OK
            top.__top_2_c
            top.ni_0._arrow._first_c
            top.ni_1.illinois.__illinois_2_c
            top.ni_1.illinois.__illinois_3_c
            top.ni_1.illinois.__illinois_4_c
            top.ni_1.illinois.__illinois_5_c
            top.ni_1.illinois.__illinois_7_c
            top.ni_1.illinois.ni_3._arrow._first_c
            top.ni_2.Sofar.__Sofar_2_c
            top.ni_2.Sofar.ni_4._arrow._first_c
            top.__top_2_x
            top.ni_0._arrow._first_x
            top.ni_1.illinois.__illinois_2_x
            top.ni_1.illinois.__illinois_3_x
            top.ni_1.illinois.__illinois_4_x
            top.ni_1.illinois.__illinois_5_x
            top.ni_1.illinois.__illinois_7_x
            top.ni_1.illinois.ni_3._arrow._first_x
            top.ni_2.Sofar.__Sofar_2_x
            top.ni_2.Sofar.ni_4._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Bool Int Int Int Int Int Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.__top_2_c top.ni_0._arrow._first_c top.ni_1.illinois.__illinois_2_c top.ni_1.illinois.__illinois_3_c top.ni_1.illinois.__illinois_4_c top.ni_1.illinois.__illinois_5_c top.ni_1.illinois.__illinois_7_c top.ni_1.illinois.ni_3._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_4._arrow._first_c top.__top_2_m top.ni_0._arrow._first_m top.ni_1.illinois.__illinois_2_m top.ni_1.illinois.__illinois_3_m top.ni_1.illinois.__illinois_4_m top.ni_1.illinois.__illinois_5_m top.ni_1.illinois.__illinois_7_m top.ni_1.illinois.ni_3._arrow._first_m top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.ni_4._arrow._first_m)
       (top_step top.e1 top.e2 top.e3 top.e4 top.e5 top.e6 top.e7 top.e8 top.e9 top.init_invalid top.OK top.__top_2_m top.ni_0._arrow._first_m top.ni_1.illinois.__illinois_2_m top.ni_1.illinois.__illinois_3_m top.ni_1.illinois.__illinois_4_m top.ni_1.illinois.__illinois_5_m top.ni_1.illinois.__illinois_7_m top.ni_1.illinois.ni_3._arrow._first_m top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.ni_4._arrow._first_m top.__top_2_x top.ni_0._arrow._first_x top.ni_1.illinois.__illinois_2_x top.ni_1.illinois.__illinois_3_x top.ni_1.illinois.__illinois_4_x top.ni_1.illinois.__illinois_5_x top.ni_1.illinois.__illinois_7_x top.ni_1.illinois.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x)
  )
  (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.illinois.__illinois_2_x top.ni_1.illinois.__illinois_3_x top.ni_1.illinois.__illinois_4_x top.ni_1.illinois.__illinois_5_x top.ni_1.illinois.__illinois_7_x top.ni_1.illinois.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.__top_2_c top.ni_0._arrow._first_c top.ni_1.illinois.__illinois_2_c top.ni_1.illinois.__illinois_3_c top.ni_1.illinois.__illinois_4_c top.ni_1.illinois.__illinois_5_c top.ni_1.illinois.__illinois_7_c top.ni_1.illinois.ni_3._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_4._arrow._first_c dummytop.OK)
       (top_step top.e1 top.e2 top.e3 top.e4 top.e5 top.e6 top.e7 top.e8 top.e9 top.init_invalid top.OK top.__top_2_c top.ni_0._arrow._first_c top.ni_1.illinois.__illinois_2_c top.ni_1.illinois.__illinois_3_c top.ni_1.illinois.__illinois_4_c top.ni_1.illinois.__illinois_5_c top.ni_1.illinois.__illinois_7_c top.ni_1.illinois.ni_3._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_4._arrow._first_c top.__top_2_x top.ni_0._arrow._first_x top.ni_1.illinois.__illinois_2_x top.ni_1.illinois.__illinois_3_x top.ni_1.illinois.__illinois_4_x top.ni_1.illinois.__illinois_5_x top.ni_1.illinois.__illinois_7_x top.ni_1.illinois.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x)
  )
  (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.illinois.__illinois_2_x top.ni_1.illinois.__illinois_3_x top.ni_1.illinois.__illinois_4_x top.ni_1.illinois.__illinois_5_x top.ni_1.illinois.__illinois_7_x top.ni_1.illinois.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.illinois.__illinois_2_x top.ni_1.illinois.__illinois_3_x top.ni_1.illinois.__illinois_4_x top.ni_1.illinois.__illinois_5_x top.ni_1.illinois.__illinois_7_x top.ni_1.illinois.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x top.OK))
  ERR))
(query ERR)
