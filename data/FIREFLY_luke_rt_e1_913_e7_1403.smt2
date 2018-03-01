; Statically linked libraries
; First
(declare-var First.X Int)
(declare-var First.First Int)
(declare-var First.__First_2_c Int)
(declare-var First.ni_5._arrow._first_c Bool)
(declare-var First.__First_2_m Int)
(declare-var First.ni_5._arrow._first_m Bool)
(declare-var First.__First_2_x Int)
(declare-var First.ni_5._arrow._first_x Bool)
(declare-var First.__First_1 Bool)
(declare-rel First_reset (Int Bool Int Bool))
(declare-rel First_step (Int Int Int Bool Int Bool))

(rule (=> 
  (and 
       (= First.__First_2_m First.__First_2_c)
       (= First.ni_5._arrow._first_m true)
  )
  (First_reset First.__First_2_c
               First.ni_5._arrow._first_c
               First.__First_2_m
               First.ni_5._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= First.ni_5._arrow._first_m First.ni_5._arrow._first_c)(and (= First.__First_1 (ite First.ni_5._arrow._first_m true false))
                                                                    (= First.ni_5._arrow._first_x false))
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
              First.ni_5._arrow._first_c
              First.__First_2_x
              First.ni_5._arrow._first_x)
))

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
               (= Sofar.Sofar (or Sofar.X Sofar.__Sofar_2_c)))
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

; excludes8
(declare-var excludes8.X1 Bool)
(declare-var excludes8.X2 Bool)
(declare-var excludes8.X3 Bool)
(declare-var excludes8.X4 Bool)
(declare-var excludes8.X5 Bool)
(declare-var excludes8.X6 Bool)
(declare-var excludes8.X7 Bool)
(declare-var excludes8.X8 Bool)
(declare-var excludes8.excludes Bool)
(declare-rel excludes8_fun (Bool Bool Bool Bool Bool Bool Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (= excludes8.excludes (or (or (or (or (or (or (or (or (and (and (and (and (and (and (and (not excludes8.X1) (not excludes8.X2)) (not excludes8.X3)) (not excludes8.X4)) (not excludes8.X5)) (not excludes8.X6)) (not excludes8.X7)) (not excludes8.X8)) (and (and (and (and (and (and (and excludes8.X1 (not excludes8.X2)) (not excludes8.X3)) (not excludes8.X4)) (not excludes8.X5)) (not excludes8.X6)) (not excludes8.X7)) (not excludes8.X8))) (and (and (and (and (and (and (and (not excludes8.X1) excludes8.X2) (not excludes8.X3)) (not excludes8.X4)) (not excludes8.X5)) (not excludes8.X6)) (not excludes8.X7)) (not excludes8.X8))) (and (and (and (and (and (and (and (not excludes8.X1) (not excludes8.X2)) excludes8.X3) (not excludes8.X4)) (not excludes8.X5)) (not excludes8.X6)) (not excludes8.X7)) (not excludes8.X8))) (and (and (and (and (and (and (and (not excludes8.X1) (not excludes8.X2)) (not excludes8.X3)) excludes8.X4) (not excludes8.X5)) (not excludes8.X6)) (not excludes8.X7)) (not excludes8.X8))) (and (and (and (and (and (and (and (not excludes8.X1) (not excludes8.X2)) (not excludes8.X3)) (not excludes8.X4)) excludes8.X5) (not excludes8.X6)) (not excludes8.X7)) (not excludes8.X8))) (and (and (and (and (and (and (and (not excludes8.X1) (not excludes8.X2)) (not excludes8.X3)) (not excludes8.X4)) (not excludes8.X5)) excludes8.X6) (not excludes8.X7)) (not excludes8.X8))) (and (and (and (and (and (and (and (not excludes8.X1) (not excludes8.X2)) (not excludes8.X3)) (not excludes8.X4)) (not excludes8.X5)) (not excludes8.X6)) excludes8.X7) (not excludes8.X8))) (and (and (and (and (and (and (and (not excludes8.X1) (not excludes8.X2)) (not excludes8.X3)) (not excludes8.X4)) (not excludes8.X5)) (not excludes8.X6)) (not excludes8.X7)) excludes8.X8)))
  (excludes8_fun excludes8.X1 excludes8.X2 excludes8.X3 excludes8.X4 excludes8.X5 excludes8.X6 excludes8.X7 excludes8.X8 excludes8.excludes)
))

; firefly
(declare-var firefly.e1 Bool)
(declare-var firefly.e2 Bool)
(declare-var firefly.e3 Bool)
(declare-var firefly.e4 Bool)
(declare-var firefly.e5 Bool)
(declare-var firefly.e6 Bool)
(declare-var firefly.e7 Bool)
(declare-var firefly.e8 Bool)
(declare-var firefly.i_invalid Int)
(declare-var firefly.invalid Int)
(declare-var firefly.dirty Int)
(declare-var firefly.exclusive Int)
(declare-var firefly.shared Int)
(declare-var firefly.__firefly_2_c Int)
(declare-var firefly.__firefly_3_c Int)
(declare-var firefly.__firefly_4_c Int)
(declare-var firefly.__firefly_5_c Int)
(declare-var firefly.__firefly_6_c Int)
(declare-var firefly.__firefly_7_c Int)
(declare-var firefly.ni_3._arrow._first_c Bool)
(declare-var firefly.__firefly_2_m Int)
(declare-var firefly.__firefly_3_m Int)
(declare-var firefly.__firefly_4_m Int)
(declare-var firefly.__firefly_5_m Int)
(declare-var firefly.__firefly_6_m Int)
(declare-var firefly.__firefly_7_m Int)
(declare-var firefly.ni_3._arrow._first_m Bool)
(declare-var firefly.__firefly_2_x Int)
(declare-var firefly.__firefly_3_x Int)
(declare-var firefly.__firefly_4_x Int)
(declare-var firefly.__firefly_5_x Int)
(declare-var firefly.__firefly_6_x Int)
(declare-var firefly.__firefly_7_x Int)
(declare-var firefly.ni_3._arrow._first_x Bool)
(declare-var firefly.__firefly_1 Bool)
(declare-var firefly.garde1 Bool)
(declare-var firefly.garde2 Bool)
(declare-var firefly.garde3 Bool)
(declare-var firefly.garde4 Bool)
(declare-var firefly.garde5 Bool)
(declare-var firefly.garde6 Bool)
(declare-var firefly.garde7 Bool)
(declare-var firefly.garde8 Bool)
(declare-var firefly.mem_invalid Int)
(declare-rel firefly_reset (Int Int Int Int Int Int Bool Int Int Int Int Int Int Bool))
(declare-rel firefly_step (Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Bool))

(rule (=> 
  (and 
       (= firefly.__firefly_2_m firefly.__firefly_2_c)
       (= firefly.__firefly_3_m firefly.__firefly_3_c)
       (= firefly.__firefly_4_m firefly.__firefly_4_c)
       (= firefly.__firefly_5_m firefly.__firefly_5_c)
       (= firefly.__firefly_6_m firefly.__firefly_6_c)
       (= firefly.__firefly_7_m firefly.__firefly_7_c)
       (= firefly.ni_3._arrow._first_m true)
  )
  (firefly_reset firefly.__firefly_2_c
                 firefly.__firefly_3_c
                 firefly.__firefly_4_c
                 firefly.__firefly_5_c
                 firefly.__firefly_6_c
                 firefly.__firefly_7_c
                 firefly.ni_3._arrow._first_c
                 firefly.__firefly_2_m
                 firefly.__firefly_3_m
                 firefly.__firefly_4_m
                 firefly.__firefly_5_m
                 firefly.__firefly_6_m
                 firefly.__firefly_7_m
                 firefly.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= firefly.garde8 (and (>= firefly.__firefly_6_c 1) (>= (+ firefly.__firefly_2_c firefly.__firefly_3_c) 1)))
       (= firefly.garde7 (and (>= firefly.__firefly_6_c 1) (>= firefly.__firefly_5_c 1)))
       (= firefly.garde5 (= firefly.__firefly_2_c 1))
       (= firefly.garde3 (and (>= firefly.__firefly_6_c 1) (>= (+ firefly.__firefly_2_c firefly.__firefly_3_c) 1)))
       (= firefly.garde2 (and (>= firefly.__firefly_6_c 1) (>= firefly.__firefly_5_c 1)))
       (= firefly.ni_3._arrow._first_m firefly.ni_3._arrow._first_c)(and (= firefly.__firefly_1 (ite firefly.ni_3._arrow._first_m true false))
                                                                    (= firefly.ni_3._arrow._first_x false))
       (and (or (not (= firefly.__firefly_1 false))
               (and (and (or (not (= firefly.e2 true))
                            (and (or (not (= firefly.garde2 true))
                                    (= firefly.shared (+ firefly.__firefly_2_c 2)))
                                 (or (not (= firefly.garde2 false))
                                    (= firefly.shared firefly.__firefly_2_c))
                            ))
                         (or (not (= firefly.e2 false))
                            (and (or (not (= firefly.e3 true))
                                    (and (or (not (= firefly.garde3 true))
                                            (= firefly.shared (+ (+ (+ firefly.__firefly_2_c 1) firefly.__firefly_3_c) 1)))
                                         (or (not (= firefly.garde3 false))
                                            (= firefly.shared firefly.__firefly_2_c))
                                    ))
                                 (or (not (= firefly.e3 false))
                                    (and (or (not (= firefly.e5 true))
                                            (and (or (not (= firefly.garde5 true))
                                                    (= firefly.shared firefly.__firefly_4_c))
                                                 (or (not (= firefly.garde5 false))
                                                    (= firefly.shared firefly.__firefly_2_c))
                                            ))
                                         (or (not (= firefly.e5 false))
                                            (and (or (not (= firefly.e7 true))
                                                    (and (or (not (= firefly.garde7 true))
                                                            (= firefly.shared (+ firefly.__firefly_2_c 2)))
                                                         (or (not (= firefly.garde7 false))
                                                            (= firefly.shared firefly.__firefly_2_c))
                                                    ))
                                                 (or (not (= firefly.e7 false))
                                                    (and (or (not (= firefly.e8 true))
                                                            (and (or (not (= firefly.garde8 true))
                                                                    (= firefly.shared (+ (+ firefly.__firefly_2_c firefly.__firefly_3_c) 1)))
                                                                 (or (not (= firefly.garde8 false))
                                                                    (= firefly.shared firefly.__firefly_2_c))
                                                            ))
                                                         (or (not (= firefly.e8 false))
                                                            (= firefly.shared firefly.__firefly_2_c))
                                                    ))
                                            ))
                                    ))
                            ))
                    )
                    (= firefly.mem_invalid firefly.__firefly_7_c)
                    ))
            (or (not (= firefly.__firefly_1 true))
               (and (= firefly.shared 0)
                    (= firefly.mem_invalid firefly.i_invalid)
                    ))
       )
       (= firefly.garde6 (and (and (and (>= firefly.__firefly_6_c 1) (= firefly.__firefly_5_c 0)) (= firefly.__firefly_2_c 0)) (= firefly.__firefly_3_c 0)))
       (= firefly.garde1 (and (and (and (>= firefly.__firefly_6_c 1) (= firefly.__firefly_5_c 0)) (= firefly.__firefly_2_c 0)) (= firefly.__firefly_3_c 0)))
       (and (or (not (= firefly.__firefly_1 true))
               (= firefly.invalid firefly.mem_invalid))
            (or (not (= firefly.__firefly_1 false))
               (and (or (not (= firefly.e1 true))
                       (and (or (not (= firefly.garde1 true))
                               (= firefly.invalid (- firefly.__firefly_6_c 1)))
                            (or (not (= firefly.garde1 false))
                               (= firefly.invalid firefly.__firefly_6_c))
                       ))
                    (or (not (= firefly.e1 false))
                       (and (or (not (= firefly.e2 true))
                               (and (or (not (= firefly.garde2 true))
                                       (= firefly.invalid (- firefly.__firefly_6_c 1)))
                                    (or (not (= firefly.garde2 false))
                                       (= firefly.invalid firefly.__firefly_6_c))
                               ))
                            (or (not (= firefly.e2 false))
                               (and (or (not (= firefly.e3 true))
                                       (and (or (not (= firefly.garde3 true))
                                               (= firefly.invalid (- firefly.__firefly_6_c 1)))
                                            (or (not (= firefly.garde3 false))
                                               (= firefly.invalid firefly.__firefly_6_c))
                                       ))
                                    (or (not (= firefly.e3 false))
                                       (and (or (not (= firefly.e6 true))
                                               (and (or (not (= firefly.garde6 true))
                                                       (= firefly.invalid (- firefly.__firefly_6_c 1)))
                                                    (or (not (= firefly.garde6 false))
                                                       (= firefly.invalid firefly.__firefly_6_c))
                                               ))
                                            (or (not (= firefly.e6 false))
                                               (and (or (not (= firefly.e7 true))
                                                       (and (or (not (= firefly.garde7 true))
                                                               (= firefly.invalid (- firefly.__firefly_6_c 1)))
                                                            (or (not (= firefly.garde7 false))
                                                               (= firefly.invalid firefly.__firefly_6_c))
                                                       ))
                                                    (or (not (= firefly.e7 false))
                                                       (and (or (not (= firefly.e8 true))
                                                               (and (or (not (= firefly.garde8 true))
                                                                    (= firefly.invalid (- firefly.__firefly_6_c 1)))
                                                                    (or (not (= firefly.garde8 false))
                                                                    (= firefly.invalid firefly.__firefly_6_c))
                                                               ))
                                                            (or (not (= firefly.e8 false))
                                                               (= firefly.invalid firefly.__firefly_6_c))
                                                       ))
                                               ))
                                       ))
                               ))
                       ))
               ))
       )
       (= firefly.garde4 (>= firefly.__firefly_3_c 1))
       (and (or (not (= firefly.__firefly_1 false))
               (and (and (or (not (= firefly.e1 true))
                            (and (or (not (= firefly.garde1 true))
                                    (= firefly.exclusive (+ firefly.__firefly_3_c 1)))
                                 (or (not (= firefly.garde1 false))
                                    (= firefly.exclusive firefly.__firefly_3_c))
                            ))
                         (or (not (= firefly.e1 false))
                            (and (or (not (= firefly.e3 true))
                                    (and (or (not (= firefly.garde3 true))
                                            (= firefly.exclusive 0))
                                         (or (not (= firefly.garde3 false))
                                            (= firefly.exclusive firefly.__firefly_3_c))
                                    ))
                                 (or (not (= firefly.e3 false))
                                    (and (or (not (= firefly.e4 true))
                                            (and (or (not (= firefly.garde4 true))
                                                    (= firefly.exclusive (- firefly.__firefly_3_c 1)))
                                                 (or (not (= firefly.garde4 false))
                                                    (= firefly.exclusive firefly.__firefly_3_c))
                                            ))
                                         (or (not (= firefly.e4 false))
                                            (and (or (not (= firefly.e5 true))
                                                    (and (or (not (= firefly.garde5 true))
                                                            (= firefly.exclusive (+ firefly.__firefly_3_c 1)))
                                                         (or (not (= firefly.garde5 false))
                                                            (= firefly.exclusive firefly.__firefly_3_c))
                                                    ))
                                                 (or (not (= firefly.e5 false))
                                                    (and (or (not (= firefly.e8 true))
                                                            (and (or (not (= firefly.garde8 true))
                                                                    (= firefly.exclusive 0))
                                                                 (or (not (= firefly.garde8 false))
                                                                    (= firefly.exclusive firefly.__firefly_3_c))
                                                            ))
                                                         (or (not (= firefly.e8 false))
                                                            (= firefly.exclusive firefly.__firefly_3_c))
                                                    ))
                                            ))
                                    ))
                            ))
                    )
                    (and (or (not (= firefly.e2 true))
                            (and (or (not (= firefly.garde2 true))
                                    (= firefly.dirty (- firefly.__firefly_5_c 1)))
                                 (or (not (= firefly.garde2 false))
                                    (= firefly.dirty firefly.__firefly_5_c))
                            ))
                         (or (not (= firefly.e2 false))
                            (and (or (not (= firefly.e4 true))
                                    (and (or (not (= firefly.garde4 true))
                                            (= firefly.dirty (+ firefly.__firefly_5_c 1)))
                                         (or (not (= firefly.garde4 false))
                                            (= firefly.dirty firefly.__firefly_5_c))
                                    ))
                                 (or (not (= firefly.e4 false))
                                    (and (or (not (= firefly.e6 true))
                                            (and (or (not (= firefly.garde6 true))
                                                    (= firefly.dirty 1))
                                                 (or (not (= firefly.garde6 false))
                                                    (= firefly.dirty firefly.__firefly_5_c))
                                            ))
                                         (or (not (= firefly.e6 false))
                                            (and (or (not (= firefly.e7 true))
                                                    (and (or (not (= firefly.garde7 true))
                                                            (= firefly.dirty (- firefly.__firefly_5_c 1)))
                                                         (or (not (= firefly.garde7 false))
                                                            (= firefly.dirty firefly.__firefly_5_c))
                                                    ))
                                                 (or (not (= firefly.e7 false))
                                                    (= firefly.dirty firefly.__firefly_5_c))
                                            ))
                                    ))
                            ))
                    )
                    ))
            (or (not (= firefly.__firefly_1 true))
               (and (= firefly.exclusive 0)
                    (= firefly.dirty 0)
                    ))
       )
       (= firefly.__firefly_7_x firefly.mem_invalid)
       (= firefly.__firefly_6_x firefly.invalid)
       (= firefly.__firefly_5_x firefly.dirty)
       (= firefly.__firefly_4_x 0)
       (= firefly.__firefly_3_x firefly.exclusive)
       (= firefly.__firefly_2_x firefly.shared)
       )
  (firefly_step firefly.e1
                firefly.e2
                firefly.e3
                firefly.e4
                firefly.e5
                firefly.e6
                firefly.e7
                firefly.e8
                firefly.i_invalid
                firefly.invalid
                firefly.dirty
                firefly.exclusive
                firefly.shared
                firefly.__firefly_2_c
                firefly.__firefly_3_c
                firefly.__firefly_4_c
                firefly.__firefly_5_c
                firefly.__firefly_6_c
                firefly.__firefly_7_c
                firefly.ni_3._arrow._first_c
                firefly.__firefly_2_x
                firefly.__firefly_3_x
                firefly.__firefly_4_x
                firefly.__firefly_5_x
                firefly.__firefly_6_x
                firefly.__firefly_7_x
                firefly.ni_3._arrow._first_x)
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
(declare-var top.i_invalid Int)
(declare-var top.OK Bool)
(declare-var top.ni_0.First.__First_2_c Int)
(declare-var top.ni_0.First.ni_5._arrow._first_c Bool)
(declare-var top.ni_1.firefly.__firefly_2_c Int)
(declare-var top.ni_1.firefly.__firefly_3_c Int)
(declare-var top.ni_1.firefly.__firefly_4_c Int)
(declare-var top.ni_1.firefly.__firefly_5_c Int)
(declare-var top.ni_1.firefly.__firefly_6_c Int)
(declare-var top.ni_1.firefly.__firefly_7_c Int)
(declare-var top.ni_1.firefly.ni_3._arrow._first_c Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_2.Sofar.ni_4._arrow._first_c Bool)
(declare-var top.ni_0.First.__First_2_m Int)
(declare-var top.ni_0.First.ni_5._arrow._first_m Bool)
(declare-var top.ni_1.firefly.__firefly_2_m Int)
(declare-var top.ni_1.firefly.__firefly_3_m Int)
(declare-var top.ni_1.firefly.__firefly_4_m Int)
(declare-var top.ni_1.firefly.__firefly_5_m Int)
(declare-var top.ni_1.firefly.__firefly_6_m Int)
(declare-var top.ni_1.firefly.__firefly_7_m Int)
(declare-var top.ni_1.firefly.ni_3._arrow._first_m Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_2.Sofar.ni_4._arrow._first_m Bool)
(declare-var top.ni_0.First.__First_2_x Int)
(declare-var top.ni_0.First.ni_5._arrow._first_x Bool)
(declare-var top.ni_1.firefly.__firefly_2_x Int)
(declare-var top.ni_1.firefly.__firefly_3_x Int)
(declare-var top.ni_1.firefly.__firefly_4_x Int)
(declare-var top.ni_1.firefly.__firefly_5_x Int)
(declare-var top.ni_1.firefly.__firefly_6_x Int)
(declare-var top.ni_1.firefly.__firefly_7_x Int)
(declare-var top.ni_1.firefly.ni_3._arrow._first_x Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_2.Sofar.ni_4._arrow._first_x Bool)
(declare-var top.__top_1 Int)
(declare-var top.__top_2 Bool)
(declare-var top.dirty Int)
(declare-var top.env Bool)
(declare-var top.exclusive Int)
(declare-var top.invalid Int)
(declare-var top.shared Int)
(declare-rel top_reset (Int Bool Int Int Int Int Int Int Bool Bool Bool Int Bool Int Int Int Int Int Int Bool Bool Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Int Bool Int Bool Int Int Int Int Int Int Bool Bool Bool Int Bool Int Int Int Int Int Int Bool Bool Bool))

(rule (=> 
  (and 
       
       (Sofar_reset top.ni_2.Sofar.__Sofar_2_c
                    top.ni_2.Sofar.ni_4._arrow._first_c
                    top.ni_2.Sofar.__Sofar_2_m
                    top.ni_2.Sofar.ni_4._arrow._first_m)
       (firefly_reset top.ni_1.firefly.__firefly_2_c
                      top.ni_1.firefly.__firefly_3_c
                      top.ni_1.firefly.__firefly_4_c
                      top.ni_1.firefly.__firefly_5_c
                      top.ni_1.firefly.__firefly_6_c
                      top.ni_1.firefly.__firefly_7_c
                      top.ni_1.firefly.ni_3._arrow._first_c
                      top.ni_1.firefly.__firefly_2_m
                      top.ni_1.firefly.__firefly_3_m
                      top.ni_1.firefly.__firefly_4_m
                      top.ni_1.firefly.__firefly_5_m
                      top.ni_1.firefly.__firefly_6_m
                      top.ni_1.firefly.__firefly_7_m
                      top.ni_1.firefly.ni_3._arrow._first_m)
       (First_reset top.ni_0.First.__First_2_c
                    top.ni_0.First.ni_5._arrow._first_c
                    top.ni_0.First.__First_2_m
                    top.ni_0.First.ni_5._arrow._first_m)
  )
  (top_reset top.ni_0.First.__First_2_c
             top.ni_0.First.ni_5._arrow._first_c
             top.ni_1.firefly.__firefly_2_c
             top.ni_1.firefly.__firefly_3_c
             top.ni_1.firefly.__firefly_4_c
             top.ni_1.firefly.__firefly_5_c
             top.ni_1.firefly.__firefly_6_c
             top.ni_1.firefly.__firefly_7_c
             top.ni_1.firefly.ni_3._arrow._first_c
             top.ni_2.Sofar.__Sofar_2_c
             top.ni_2.Sofar.ni_4._arrow._first_c
             top.ni_0.First.__First_2_m
             top.ni_0.First.ni_5._arrow._first_m
             top.ni_1.firefly.__firefly_2_m
             top.ni_1.firefly.__firefly_3_m
             top.ni_1.firefly.__firefly_4_m
             top.ni_1.firefly.__firefly_5_m
             top.ni_1.firefly.__firefly_6_m
             top.ni_1.firefly.__firefly_7_m
             top.ni_1.firefly.ni_3._arrow._first_m
             top.ni_2.Sofar.__Sofar_2_m
             top.ni_2.Sofar.ni_4._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (excludes8_fun top.e1
                      top.e2
                      top.e3
                      top.e4
                      top.e5
                      top.e6
                      top.e7
                      top.e8
                      top.__top_2)
       (and (= top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.__Sofar_2_c)
            (= top.ni_2.Sofar.ni_4._arrow._first_m top.ni_2.Sofar.ni_4._arrow._first_c)
            )
       (Sofar_step (and top.__top_2 (>= top.i_invalid 0))
                   top.env
                   top.ni_2.Sofar.__Sofar_2_m
                   top.ni_2.Sofar.ni_4._arrow._first_m
                   top.ni_2.Sofar.__Sofar_2_x
                   top.ni_2.Sofar.ni_4._arrow._first_x)
       (and (= top.ni_1.firefly.__firefly_2_m top.ni_1.firefly.__firefly_2_c)
            (= top.ni_1.firefly.__firefly_3_m top.ni_1.firefly.__firefly_3_c)
            (= top.ni_1.firefly.__firefly_4_m top.ni_1.firefly.__firefly_4_c)
            (= top.ni_1.firefly.__firefly_5_m top.ni_1.firefly.__firefly_5_c)
            (= top.ni_1.firefly.__firefly_6_m top.ni_1.firefly.__firefly_6_c)
            (= top.ni_1.firefly.__firefly_7_m top.ni_1.firefly.__firefly_7_c)
            (= top.ni_1.firefly.ni_3._arrow._first_m top.ni_1.firefly.ni_3._arrow._first_c)
            )
       (firefly_step top.e1
                     top.e2
                     top.e3
                     top.e4
                     top.e5
                     top.e6
                     top.e7
                     top.e8
                     top.i_invalid
                     top.invalid
                     top.dirty
                     top.exclusive
                     top.shared
                     top.ni_1.firefly.__firefly_2_m
                     top.ni_1.firefly.__firefly_3_m
                     top.ni_1.firefly.__firefly_4_m
                     top.ni_1.firefly.__firefly_5_m
                     top.ni_1.firefly.__firefly_6_m
                     top.ni_1.firefly.__firefly_7_m
                     top.ni_1.firefly.ni_3._arrow._first_m
                     top.ni_1.firefly.__firefly_2_x
                     top.ni_1.firefly.__firefly_3_x
                     top.ni_1.firefly.__firefly_4_x
                     top.ni_1.firefly.__firefly_5_x
                     top.ni_1.firefly.__firefly_6_x
                     top.ni_1.firefly.__firefly_7_x
                     top.ni_1.firefly.ni_3._arrow._first_x)
       (and (= top.ni_0.First.__First_2_m top.ni_0.First.__First_2_c)
            (= top.ni_0.First.ni_5._arrow._first_m top.ni_0.First.ni_5._arrow._first_c)
            )
       (First_step top.i_invalid
                   top.__top_1
                   top.ni_0.First.__First_2_m
                   top.ni_0.First.ni_5._arrow._first_m
                   top.ni_0.First.__First_2_x
                   top.ni_0.First.ni_5._arrow._first_x)
       (= top.OK (=> top.env (= (+ (+ (+ top.invalid top.dirty) top.exclusive) top.shared) top.__top_1)))
       )
  (top_step top.e1
            top.e2
            top.e3
            top.e4
            top.e5
            top.e6
            top.e7
            top.e8
            top.i_invalid
            top.OK
            top.ni_0.First.__First_2_c
            top.ni_0.First.ni_5._arrow._first_c
            top.ni_1.firefly.__firefly_2_c
            top.ni_1.firefly.__firefly_3_c
            top.ni_1.firefly.__firefly_4_c
            top.ni_1.firefly.__firefly_5_c
            top.ni_1.firefly.__firefly_6_c
            top.ni_1.firefly.__firefly_7_c
            top.ni_1.firefly.ni_3._arrow._first_c
            top.ni_2.Sofar.__Sofar_2_c
            top.ni_2.Sofar.ni_4._arrow._first_c
            top.ni_0.First.__First_2_x
            top.ni_0.First.ni_5._arrow._first_x
            top.ni_1.firefly.__firefly_2_x
            top.ni_1.firefly.__firefly_3_x
            top.ni_1.firefly.__firefly_4_x
            top.ni_1.firefly.__firefly_5_x
            top.ni_1.firefly.__firefly_6_x
            top.ni_1.firefly.__firefly_7_x
            top.ni_1.firefly.ni_3._arrow._first_x
            top.ni_2.Sofar.__Sofar_2_x
            top.ni_2.Sofar.ni_4._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Bool Int Int Int Int Int Int Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.First.__First_2_c top.ni_0.First.ni_5._arrow._first_c top.ni_1.firefly.__firefly_2_c top.ni_1.firefly.__firefly_3_c top.ni_1.firefly.__firefly_4_c top.ni_1.firefly.__firefly_5_c top.ni_1.firefly.__firefly_6_c top.ni_1.firefly.__firefly_7_c top.ni_1.firefly.ni_3._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_4._arrow._first_c top.ni_0.First.__First_2_m top.ni_0.First.ni_5._arrow._first_m top.ni_1.firefly.__firefly_2_m top.ni_1.firefly.__firefly_3_m top.ni_1.firefly.__firefly_4_m top.ni_1.firefly.__firefly_5_m top.ni_1.firefly.__firefly_6_m top.ni_1.firefly.__firefly_7_m top.ni_1.firefly.ni_3._arrow._first_m top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.ni_4._arrow._first_m)
       (top_step top.e1 top.e2 top.e3 top.e4 top.e5 top.e6 top.e7 top.e8 top.i_invalid top.OK top.ni_0.First.__First_2_m top.ni_0.First.ni_5._arrow._first_m top.ni_1.firefly.__firefly_2_m top.ni_1.firefly.__firefly_3_m top.ni_1.firefly.__firefly_4_m top.ni_1.firefly.__firefly_5_m top.ni_1.firefly.__firefly_6_m top.ni_1.firefly.__firefly_7_m top.ni_1.firefly.ni_3._arrow._first_m top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.ni_4._arrow._first_m top.ni_0.First.__First_2_x top.ni_0.First.ni_5._arrow._first_x top.ni_1.firefly.__firefly_2_x top.ni_1.firefly.__firefly_3_x top.ni_1.firefly.__firefly_4_x top.ni_1.firefly.__firefly_5_x top.ni_1.firefly.__firefly_6_x top.ni_1.firefly.__firefly_7_x top.ni_1.firefly.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x)
  )
  (MAIN top.ni_0.First.__First_2_x top.ni_0.First.ni_5._arrow._first_x top.ni_1.firefly.__firefly_2_x top.ni_1.firefly.__firefly_3_x top.ni_1.firefly.__firefly_4_x top.ni_1.firefly.__firefly_5_x top.ni_1.firefly.__firefly_6_x top.ni_1.firefly.__firefly_7_x top.ni_1.firefly.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.First.__First_2_c top.ni_0.First.ni_5._arrow._first_c top.ni_1.firefly.__firefly_2_c top.ni_1.firefly.__firefly_3_c top.ni_1.firefly.__firefly_4_c top.ni_1.firefly.__firefly_5_c top.ni_1.firefly.__firefly_6_c top.ni_1.firefly.__firefly_7_c top.ni_1.firefly.ni_3._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_4._arrow._first_c dummytop.OK)
       (top_step top.e1 top.e2 top.e3 top.e4 top.e5 top.e6 top.e7 top.e8 top.i_invalid top.OK top.ni_0.First.__First_2_c top.ni_0.First.ni_5._arrow._first_c top.ni_1.firefly.__firefly_2_c top.ni_1.firefly.__firefly_3_c top.ni_1.firefly.__firefly_4_c top.ni_1.firefly.__firefly_5_c top.ni_1.firefly.__firefly_6_c top.ni_1.firefly.__firefly_7_c top.ni_1.firefly.ni_3._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_4._arrow._first_c top.ni_0.First.__First_2_x top.ni_0.First.ni_5._arrow._first_x top.ni_1.firefly.__firefly_2_x top.ni_1.firefly.__firefly_3_x top.ni_1.firefly.__firefly_4_x top.ni_1.firefly.__firefly_5_x top.ni_1.firefly.__firefly_6_x top.ni_1.firefly.__firefly_7_x top.ni_1.firefly.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x)
  )
  (MAIN top.ni_0.First.__First_2_x top.ni_0.First.ni_5._arrow._first_x top.ni_1.firefly.__firefly_2_x top.ni_1.firefly.__firefly_3_x top.ni_1.firefly.__firefly_4_x top.ni_1.firefly.__firefly_5_x top.ni_1.firefly.__firefly_6_x top.ni_1.firefly.__firefly_7_x top.ni_1.firefly.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.First.__First_2_x top.ni_0.First.ni_5._arrow._first_x top.ni_1.firefly.__firefly_2_x top.ni_1.firefly.__firefly_3_x top.ni_1.firefly.__firefly_4_x top.ni_1.firefly.__firefly_5_x top.ni_1.firefly.__firefly_6_x top.ni_1.firefly.__firefly_7_x top.ni_1.firefly.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x top.OK))
  ERR))
(query ERR)
