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

; ticket3i
(declare-var ticket3i.e1 Bool)
(declare-var ticket3i.e2 Bool)
(declare-var ticket3i.e3 Bool)
(declare-var ticket3i.e4 Bool)
(declare-var ticket3i.e5 Bool)
(declare-var ticket3i.e6 Bool)
(declare-var ticket3i.e7 Bool)
(declare-var ticket3i.e8 Bool)
(declare-var ticket3i.e9 Bool)
(declare-var ticket3i.init_a1 Int)
(declare-var ticket3i.init_a2 Int)
(declare-var ticket3i.init_a3 Int)
(declare-var ticket3i.init_t Int)
(declare-var ticket3i.p1 Int)
(declare-var ticket3i.p2 Int)
(declare-var ticket3i.p3 Int)
(declare-var ticket3i.t Int)
(declare-var ticket3i.s Int)
(declare-var ticket3i.a1 Int)
(declare-var ticket3i.a2 Int)
(declare-var ticket3i.a3 Int)
(declare-var ticket3i.erreur_ticket3i Bool)
(declare-var ticket3i.__ticket3i_2_c Int)
(declare-var ticket3i.__ticket3i_3_c Int)
(declare-var ticket3i.__ticket3i_4_c Int)
(declare-var ticket3i.__ticket3i_5_c Int)
(declare-var ticket3i.__ticket3i_6_c Int)
(declare-var ticket3i.__ticket3i_7_c Int)
(declare-var ticket3i.__ticket3i_8_c Int)
(declare-var ticket3i.__ticket3i_9_c Int)
(declare-var ticket3i.ni_2._arrow._first_c Bool)
(declare-var ticket3i.__ticket3i_2_m Int)
(declare-var ticket3i.__ticket3i_3_m Int)
(declare-var ticket3i.__ticket3i_4_m Int)
(declare-var ticket3i.__ticket3i_5_m Int)
(declare-var ticket3i.__ticket3i_6_m Int)
(declare-var ticket3i.__ticket3i_7_m Int)
(declare-var ticket3i.__ticket3i_8_m Int)
(declare-var ticket3i.__ticket3i_9_m Int)
(declare-var ticket3i.ni_2._arrow._first_m Bool)
(declare-var ticket3i.__ticket3i_2_x Int)
(declare-var ticket3i.__ticket3i_3_x Int)
(declare-var ticket3i.__ticket3i_4_x Int)
(declare-var ticket3i.__ticket3i_5_x Int)
(declare-var ticket3i.__ticket3i_6_x Int)
(declare-var ticket3i.__ticket3i_7_x Int)
(declare-var ticket3i.__ticket3i_8_x Int)
(declare-var ticket3i.__ticket3i_9_x Int)
(declare-var ticket3i.ni_2._arrow._first_x Bool)
(declare-var ticket3i.__ticket3i_1 Bool)
(declare-var ticket3i.g1 Bool)
(declare-var ticket3i.g2 Bool)
(declare-var ticket3i.g3 Bool)
(declare-var ticket3i.g4 Bool)
(declare-var ticket3i.g5 Bool)
(declare-var ticket3i.g6 Bool)
(declare-var ticket3i.g7 Bool)
(declare-var ticket3i.g8 Bool)
(declare-var ticket3i.g9 Bool)
(declare-rel ticket3i_reset (Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Bool))
(declare-rel ticket3i_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Bool))

(rule (=> 
  (and 
       (= ticket3i.__ticket3i_2_m ticket3i.__ticket3i_2_c)
       (= ticket3i.__ticket3i_3_m ticket3i.__ticket3i_3_c)
       (= ticket3i.__ticket3i_4_m ticket3i.__ticket3i_4_c)
       (= ticket3i.__ticket3i_5_m ticket3i.__ticket3i_5_c)
       (= ticket3i.__ticket3i_6_m ticket3i.__ticket3i_6_c)
       (= ticket3i.__ticket3i_7_m ticket3i.__ticket3i_7_c)
       (= ticket3i.__ticket3i_8_m ticket3i.__ticket3i_8_c)
       (= ticket3i.__ticket3i_9_m ticket3i.__ticket3i_9_c)
       (= ticket3i.ni_2._arrow._first_m true)
  )
  (ticket3i_reset ticket3i.__ticket3i_2_c
                  ticket3i.__ticket3i_3_c
                  ticket3i.__ticket3i_4_c
                  ticket3i.__ticket3i_5_c
                  ticket3i.__ticket3i_6_c
                  ticket3i.__ticket3i_7_c
                  ticket3i.__ticket3i_8_c
                  ticket3i.__ticket3i_9_c
                  ticket3i.ni_2._arrow._first_c
                  ticket3i.__ticket3i_2_m
                  ticket3i.__ticket3i_3_m
                  ticket3i.__ticket3i_4_m
                  ticket3i.__ticket3i_5_m
                  ticket3i.__ticket3i_6_m
                  ticket3i.__ticket3i_7_m
                  ticket3i.__ticket3i_8_m
                  ticket3i.__ticket3i_9_m
                  ticket3i.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= ticket3i.g7 (= ticket3i.__ticket3i_7_c 0))
       (= ticket3i.g4 (= ticket3i.__ticket3i_8_c 0))
       (= ticket3i.g1 (= ticket3i.__ticket3i_9_c 0))
       (= ticket3i.ni_2._arrow._first_m ticket3i.ni_2._arrow._first_c)
       (and (= ticket3i.__ticket3i_1 (ite ticket3i.ni_2._arrow._first_m true false))
            (= ticket3i.ni_2._arrow._first_x false))
       (and (or (not (= ticket3i.__ticket3i_1 true))
               (= ticket3i.t ticket3i.init_t))
            (or (not (= ticket3i.__ticket3i_1 false))
               (and (or (not (= ticket3i.e1 true))
                       (and (or (not (= ticket3i.g1 true))
                               (= ticket3i.t (+ ticket3i.__ticket3i_2_c 1)))
                            (or (not (= ticket3i.g1 false))
                               (= ticket3i.t ticket3i.__ticket3i_2_c))
                       ))
                    (or (not (= ticket3i.e1 false))
                       (and (or (not (= ticket3i.e4 true))
                               (and (or (not (= ticket3i.g4 true))
                                       (= ticket3i.t (+ ticket3i.__ticket3i_2_c 1)))
                                    (or (not (= ticket3i.g4 false))
                                       (= ticket3i.t ticket3i.__ticket3i_2_c))
                               ))
                            (or (not (= ticket3i.e4 false))
                               (and (or (not (= ticket3i.e7 true))
                                       (and (or (not (= ticket3i.g7 true))
                                               (= ticket3i.t (+ ticket3i.__ticket3i_2_c 1)))
                                            (or (not (= ticket3i.g7 false))
                                               (= ticket3i.t ticket3i.__ticket3i_2_c))
                                       ))
                                    (or (not (= ticket3i.e7 false))
                                       (= ticket3i.t ticket3i.__ticket3i_2_c))
                               ))
                       ))
               ))
       )
       (= ticket3i.g9 (= ticket3i.__ticket3i_7_c 2))
       (= ticket3i.g6 (= ticket3i.__ticket3i_8_c 2))
       (= ticket3i.g3 (= ticket3i.__ticket3i_9_c 2))
       (and (or (not (= ticket3i.__ticket3i_1 false))
               (and (and (or (not (= ticket3i.e3 true))
                            (and (or (not (= ticket3i.g3 true))
                                    (= ticket3i.s (+ ticket3i.__ticket3i_6_c 1)))
                                 (or (not (= ticket3i.g3 false))
                                    (= ticket3i.s ticket3i.__ticket3i_6_c))
                            ))
                         (or (not (= ticket3i.e3 false))
                            (and (or (not (= ticket3i.e6 true))
                                    (and (or (not (= ticket3i.g6 true))
                                            (= ticket3i.s (+ ticket3i.__ticket3i_6_c 1)))
                                         (or (not (= ticket3i.g6 false))
                                            (= ticket3i.s ticket3i.__ticket3i_6_c))
                                    ))
                                 (or (not (= ticket3i.e6 false))
                                    (and (or (not (= ticket3i.e9 true))
                                            (and (or (not (= ticket3i.g9 true))
                                                    (= ticket3i.s (+ ticket3i.__ticket3i_6_c 1)))
                                                 (or (not (= ticket3i.g9 false))
                                                    (= ticket3i.s ticket3i.__ticket3i_6_c))
                                            ))
                                         (or (not (= ticket3i.e9 false))
                                            (= ticket3i.s ticket3i.__ticket3i_6_c))
                                    ))
                            ))
                    )
                    (and (or (not (= ticket3i.e7 true))
                            (and (or (not (= ticket3i.g7 true))
                                    (= ticket3i.a3 ticket3i.__ticket3i_2_c))
                                 (or (not (= ticket3i.g7 false))
                                    (= ticket3i.a3 ticket3i.__ticket3i_3_c))
                            ))
                         (or (not (= ticket3i.e7 false))
                            (= ticket3i.a3 ticket3i.__ticket3i_3_c))
                    )
                    ))
            (or (not (= ticket3i.__ticket3i_1 true))
               (and (= ticket3i.s ticket3i.t)
                    (= ticket3i.a3 ticket3i.init_a3)
                    ))
       )
       (= ticket3i.g8 (and (= ticket3i.__ticket3i_7_c 1) (>= ticket3i.__ticket3i_6_c ticket3i.a3)))
       (and (or (not (= ticket3i.__ticket3i_1 false))
               (and (and (or (not (= ticket3i.e7 true))
                            (and (or (not (= ticket3i.g7 true))
                                    (= ticket3i.p3 1))
                                 (or (not (= ticket3i.g7 false))
                                    (= ticket3i.p3 ticket3i.__ticket3i_7_c))
                            ))
                         (or (not (= ticket3i.e7 false))
                            (and (or (not (= ticket3i.e8 true))
                                    (and (or (not (= ticket3i.g8 true))
                                            (= ticket3i.p3 2))
                                         (or (not (= ticket3i.g8 false))
                                            (= ticket3i.p3 ticket3i.__ticket3i_7_c))
                                    ))
                                 (or (not (= ticket3i.e8 false))
                                    (and (or (not (= ticket3i.e9 true))
                                            (and (or (not (= ticket3i.g9 true))
                                                    (= ticket3i.p3 0))
                                                 (or (not (= ticket3i.g9 false))
                                                    (= ticket3i.p3 ticket3i.__ticket3i_7_c))
                                            ))
                                         (or (not (= ticket3i.e9 false))
                                            (= ticket3i.p3 ticket3i.__ticket3i_7_c))
                                    ))
                            ))
                    )
                    (and (or (not (= ticket3i.e4 true))
                            (and (or (not (= ticket3i.g4 true))
                                    (= ticket3i.a2 ticket3i.__ticket3i_2_c))
                                 (or (not (= ticket3i.g4 false))
                                    (= ticket3i.a2 ticket3i.__ticket3i_4_c))
                            ))
                         (or (not (= ticket3i.e4 false))
                            (= ticket3i.a2 ticket3i.__ticket3i_4_c))
                    )
                    ))
            (or (not (= ticket3i.__ticket3i_1 true))
               (and (= ticket3i.p3 0)
                    (= ticket3i.a2 ticket3i.init_a2)
                    ))
       )
       (= ticket3i.g5 (and (= ticket3i.__ticket3i_8_c 1) (>= ticket3i.__ticket3i_6_c ticket3i.a2)))
       (and (or (not (= ticket3i.__ticket3i_1 false))
               (and (and (or (not (= ticket3i.e4 true))
                            (and (or (not (= ticket3i.g4 true))
                                    (= ticket3i.p2 1))
                                 (or (not (= ticket3i.g4 false))
                                    (= ticket3i.p2 ticket3i.__ticket3i_8_c))
                            ))
                         (or (not (= ticket3i.e4 false))
                            (and (or (not (= ticket3i.e5 true))
                                    (and (or (not (= ticket3i.g5 true))
                                            (= ticket3i.p2 2))
                                         (or (not (= ticket3i.g5 false))
                                            (= ticket3i.p2 ticket3i.__ticket3i_8_c))
                                    ))
                                 (or (not (= ticket3i.e5 false))
                                    (and (or (not (= ticket3i.e6 true))
                                            (and (or (not (= ticket3i.g6 true))
                                                    (= ticket3i.p2 0))
                                                 (or (not (= ticket3i.g6 false))
                                                    (= ticket3i.p2 ticket3i.__ticket3i_8_c))
                                            ))
                                         (or (not (= ticket3i.e6 false))
                                            (= ticket3i.p2 ticket3i.__ticket3i_8_c))
                                    ))
                            ))
                    )
                    (and (or (not (= ticket3i.e1 true))
                            (and (or (not (= ticket3i.g1 true))
                                    (= ticket3i.a1 ticket3i.__ticket3i_2_c))
                                 (or (not (= ticket3i.g1 false))
                                    (= ticket3i.a1 ticket3i.__ticket3i_5_c))
                            ))
                         (or (not (= ticket3i.e1 false))
                            (= ticket3i.a1 ticket3i.__ticket3i_5_c))
                    )
                    ))
            (or (not (= ticket3i.__ticket3i_1 true))
               (and (= ticket3i.p2 0)
                    (= ticket3i.a1 ticket3i.init_a1)
                    ))
       )
       (= ticket3i.g2 (and (= ticket3i.__ticket3i_9_c 1) (>= ticket3i.__ticket3i_6_c ticket3i.a1)))
       (and (or (not (= ticket3i.__ticket3i_1 true))
               (= ticket3i.p1 0))
            (or (not (= ticket3i.__ticket3i_1 false))
               (and (or (not (= ticket3i.e1 true))
                       (and (or (not (= ticket3i.g1 true))
                               (= ticket3i.p1 1))
                            (or (not (= ticket3i.g1 false))
                               (= ticket3i.p1 ticket3i.__ticket3i_9_c))
                       ))
                    (or (not (= ticket3i.e1 false))
                       (and (or (not (= ticket3i.e2 true))
                               (and (or (not (= ticket3i.g2 true))
                                       (= ticket3i.p1 2))
                                    (or (not (= ticket3i.g2 false))
                                       (= ticket3i.p1 ticket3i.__ticket3i_9_c))
                               ))
                            (or (not (= ticket3i.e2 false))
                               (and (or (not (= ticket3i.e3 true))
                                       (and (or (not (= ticket3i.g3 true))
                                               (= ticket3i.p1 0))
                                            (or (not (= ticket3i.g3 false))
                                               (= ticket3i.p1 ticket3i.__ticket3i_9_c))
                                       ))
                                    (or (not (= ticket3i.e3 false))
                                       (= ticket3i.p1 ticket3i.__ticket3i_9_c))
                               ))
                       ))
               ))
       )
       (and (or (not (= (or (or (>= ticket3i.p1 3) (>= ticket3i.p2 3)) (>= ticket3i.p3 3)) true))
               (= ticket3i.erreur_ticket3i true))
            (or (not (= (or (or (>= ticket3i.p1 3) (>= ticket3i.p2 3)) (>= ticket3i.p3 3)) false))
               (= ticket3i.erreur_ticket3i false))
       )
       (= ticket3i.__ticket3i_9_x ticket3i.p1)
       (= ticket3i.__ticket3i_8_x ticket3i.p2)
       (= ticket3i.__ticket3i_7_x ticket3i.p3)
       (= ticket3i.__ticket3i_6_x ticket3i.s)
       (= ticket3i.__ticket3i_5_x ticket3i.a1)
       (= ticket3i.__ticket3i_4_x ticket3i.a2)
       (= ticket3i.__ticket3i_3_x ticket3i.a3)
       (= ticket3i.__ticket3i_2_x ticket3i.t)
       )
  (ticket3i_step ticket3i.e1
                 ticket3i.e2
                 ticket3i.e3
                 ticket3i.e4
                 ticket3i.e5
                 ticket3i.e6
                 ticket3i.e7
                 ticket3i.e8
                 ticket3i.e9
                 ticket3i.init_a1
                 ticket3i.init_a2
                 ticket3i.init_a3
                 ticket3i.init_t
                 ticket3i.p1
                 ticket3i.p2
                 ticket3i.p3
                 ticket3i.t
                 ticket3i.s
                 ticket3i.a1
                 ticket3i.a2
                 ticket3i.a3
                 ticket3i.erreur_ticket3i
                 ticket3i.__ticket3i_2_c
                 ticket3i.__ticket3i_3_c
                 ticket3i.__ticket3i_4_c
                 ticket3i.__ticket3i_5_c
                 ticket3i.__ticket3i_6_c
                 ticket3i.__ticket3i_7_c
                 ticket3i.__ticket3i_8_c
                 ticket3i.__ticket3i_9_c
                 ticket3i.ni_2._arrow._first_c
                 ticket3i.__ticket3i_2_x
                 ticket3i.__ticket3i_3_x
                 ticket3i.__ticket3i_4_x
                 ticket3i.__ticket3i_5_x
                 ticket3i.__ticket3i_6_x
                 ticket3i.__ticket3i_7_x
                 ticket3i.__ticket3i_8_x
                 ticket3i.__ticket3i_9_x
                 ticket3i.ni_2._arrow._first_x)
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
(declare-var top.init_a1 Int)
(declare-var top.init_a2 Int)
(declare-var top.init_a3 Int)
(declare-var top.init_t Int)
(declare-var top.OK Bool)
(declare-var top.ni_0.ticket3i.__ticket3i_2_c Int)
(declare-var top.ni_0.ticket3i.__ticket3i_3_c Int)
(declare-var top.ni_0.ticket3i.__ticket3i_4_c Int)
(declare-var top.ni_0.ticket3i.__ticket3i_5_c Int)
(declare-var top.ni_0.ticket3i.__ticket3i_6_c Int)
(declare-var top.ni_0.ticket3i.__ticket3i_7_c Int)
(declare-var top.ni_0.ticket3i.__ticket3i_8_c Int)
(declare-var top.ni_0.ticket3i.__ticket3i_9_c Int)
(declare-var top.ni_0.ticket3i.ni_2._arrow._first_c Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_1.Sofar.ni_3._arrow._first_c Bool)
(declare-var top.ni_0.ticket3i.__ticket3i_2_m Int)
(declare-var top.ni_0.ticket3i.__ticket3i_3_m Int)
(declare-var top.ni_0.ticket3i.__ticket3i_4_m Int)
(declare-var top.ni_0.ticket3i.__ticket3i_5_m Int)
(declare-var top.ni_0.ticket3i.__ticket3i_6_m Int)
(declare-var top.ni_0.ticket3i.__ticket3i_7_m Int)
(declare-var top.ni_0.ticket3i.__ticket3i_8_m Int)
(declare-var top.ni_0.ticket3i.__ticket3i_9_m Int)
(declare-var top.ni_0.ticket3i.ni_2._arrow._first_m Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_1.Sofar.ni_3._arrow._first_m Bool)
(declare-var top.ni_0.ticket3i.__ticket3i_2_x Int)
(declare-var top.ni_0.ticket3i.__ticket3i_3_x Int)
(declare-var top.ni_0.ticket3i.__ticket3i_4_x Int)
(declare-var top.ni_0.ticket3i.__ticket3i_5_x Int)
(declare-var top.ni_0.ticket3i.__ticket3i_6_x Int)
(declare-var top.ni_0.ticket3i.__ticket3i_7_x Int)
(declare-var top.ni_0.ticket3i.__ticket3i_8_x Int)
(declare-var top.ni_0.ticket3i.__ticket3i_9_x Int)
(declare-var top.ni_0.ticket3i.ni_2._arrow._first_x Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_1.Sofar.ni_3._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.a1 Int)
(declare-var top.a2 Int)
(declare-var top.a3 Int)
(declare-var top.env Bool)
(declare-var top.erreur_ticket3i Bool)
(declare-var top.p1 Int)
(declare-var top.p2 Int)
(declare-var top.p3 Int)
(declare-var top.s Int)
(declare-var top.t Int)
(declare-rel top_reset (Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int Int Int Bool Bool Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Bool Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int Int Int Bool Bool Bool))

(rule (=> 
  (and 
       
       (Sofar_reset top.ni_1.Sofar.__Sofar_2_c
                    top.ni_1.Sofar.ni_3._arrow._first_c
                    top.ni_1.Sofar.__Sofar_2_m
                    top.ni_1.Sofar.ni_3._arrow._first_m)
       (ticket3i_reset top.ni_0.ticket3i.__ticket3i_2_c
                       top.ni_0.ticket3i.__ticket3i_3_c
                       top.ni_0.ticket3i.__ticket3i_4_c
                       top.ni_0.ticket3i.__ticket3i_5_c
                       top.ni_0.ticket3i.__ticket3i_6_c
                       top.ni_0.ticket3i.__ticket3i_7_c
                       top.ni_0.ticket3i.__ticket3i_8_c
                       top.ni_0.ticket3i.__ticket3i_9_c
                       top.ni_0.ticket3i.ni_2._arrow._first_c
                       top.ni_0.ticket3i.__ticket3i_2_m
                       top.ni_0.ticket3i.__ticket3i_3_m
                       top.ni_0.ticket3i.__ticket3i_4_m
                       top.ni_0.ticket3i.__ticket3i_5_m
                       top.ni_0.ticket3i.__ticket3i_6_m
                       top.ni_0.ticket3i.__ticket3i_7_m
                       top.ni_0.ticket3i.__ticket3i_8_m
                       top.ni_0.ticket3i.__ticket3i_9_m
                       top.ni_0.ticket3i.ni_2._arrow._first_m)
  )
  (top_reset top.ni_0.ticket3i.__ticket3i_2_c
             top.ni_0.ticket3i.__ticket3i_3_c
             top.ni_0.ticket3i.__ticket3i_4_c
             top.ni_0.ticket3i.__ticket3i_5_c
             top.ni_0.ticket3i.__ticket3i_6_c
             top.ni_0.ticket3i.__ticket3i_7_c
             top.ni_0.ticket3i.__ticket3i_8_c
             top.ni_0.ticket3i.__ticket3i_9_c
             top.ni_0.ticket3i.ni_2._arrow._first_c
             top.ni_1.Sofar.__Sofar_2_c
             top.ni_1.Sofar.ni_3._arrow._first_c
             top.ni_0.ticket3i.__ticket3i_2_m
             top.ni_0.ticket3i.__ticket3i_3_m
             top.ni_0.ticket3i.__ticket3i_4_m
             top.ni_0.ticket3i.__ticket3i_5_m
             top.ni_0.ticket3i.__ticket3i_6_m
             top.ni_0.ticket3i.__ticket3i_7_m
             top.ni_0.ticket3i.__ticket3i_8_m
             top.ni_0.ticket3i.__ticket3i_9_m
             top.ni_0.ticket3i.ni_2._arrow._first_m
             top.ni_1.Sofar.__Sofar_2_m
             top.ni_1.Sofar.ni_3._arrow._first_m)
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
                      top.__top_1)
       (and (= top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.__Sofar_2_c)
            (= top.ni_1.Sofar.ni_3._arrow._first_m top.ni_1.Sofar.ni_3._arrow._first_c)
            )
       (Sofar_step (and (and (and (and top.__top_1 (>= top.init_a1 0)) (>= top.init_a2 0)) (>= top.init_a3 0)) (>= top.init_t 0))
                   top.env
                   top.ni_1.Sofar.__Sofar_2_m
                   top.ni_1.Sofar.ni_3._arrow._first_m
                   top.ni_1.Sofar.__Sofar_2_x
                   top.ni_1.Sofar.ni_3._arrow._first_x)
       (and (= top.ni_0.ticket3i.__ticket3i_2_m top.ni_0.ticket3i.__ticket3i_2_c)
            (= top.ni_0.ticket3i.__ticket3i_3_m top.ni_0.ticket3i.__ticket3i_3_c)
            (= top.ni_0.ticket3i.__ticket3i_4_m top.ni_0.ticket3i.__ticket3i_4_c)
            (= top.ni_0.ticket3i.__ticket3i_5_m top.ni_0.ticket3i.__ticket3i_5_c)
            (= top.ni_0.ticket3i.__ticket3i_6_m top.ni_0.ticket3i.__ticket3i_6_c)
            (= top.ni_0.ticket3i.__ticket3i_7_m top.ni_0.ticket3i.__ticket3i_7_c)
            (= top.ni_0.ticket3i.__ticket3i_8_m top.ni_0.ticket3i.__ticket3i_8_c)
            (= top.ni_0.ticket3i.__ticket3i_9_m top.ni_0.ticket3i.__ticket3i_9_c)
            (= top.ni_0.ticket3i.ni_2._arrow._first_m top.ni_0.ticket3i.ni_2._arrow._first_c)
            )
       (ticket3i_step top.e1
                      top.e2
                      top.e3
                      top.e4
                      top.e5
                      top.e6
                      top.e7
                      top.e8
                      top.e9
                      top.init_a1
                      top.init_a2
                      top.init_a3
                      top.init_t
                      top.p1
                      top.p2
                      top.p3
                      top.t
                      top.s
                      top.a1
                      top.a2
                      top.a3
                      top.erreur_ticket3i
                      top.ni_0.ticket3i.__ticket3i_2_m
                      top.ni_0.ticket3i.__ticket3i_3_m
                      top.ni_0.ticket3i.__ticket3i_4_m
                      top.ni_0.ticket3i.__ticket3i_5_m
                      top.ni_0.ticket3i.__ticket3i_6_m
                      top.ni_0.ticket3i.__ticket3i_7_m
                      top.ni_0.ticket3i.__ticket3i_8_m
                      top.ni_0.ticket3i.__ticket3i_9_m
                      top.ni_0.ticket3i.ni_2._arrow._first_m
                      top.ni_0.ticket3i.__ticket3i_2_x
                      top.ni_0.ticket3i.__ticket3i_3_x
                      top.ni_0.ticket3i.__ticket3i_4_x
                      top.ni_0.ticket3i.__ticket3i_5_x
                      top.ni_0.ticket3i.__ticket3i_6_x
                      top.ni_0.ticket3i.__ticket3i_7_x
                      top.ni_0.ticket3i.__ticket3i_8_x
                      top.ni_0.ticket3i.__ticket3i_9_x
                      top.ni_0.ticket3i.ni_2._arrow._first_x)
       (= top.OK (=> top.env (and (<= 0 top.p2) (<= top.p2 3))))
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
            top.init_a1
            top.init_a2
            top.init_a3
            top.init_t
            top.OK
            top.ni_0.ticket3i.__ticket3i_2_c
            top.ni_0.ticket3i.__ticket3i_3_c
            top.ni_0.ticket3i.__ticket3i_4_c
            top.ni_0.ticket3i.__ticket3i_5_c
            top.ni_0.ticket3i.__ticket3i_6_c
            top.ni_0.ticket3i.__ticket3i_7_c
            top.ni_0.ticket3i.__ticket3i_8_c
            top.ni_0.ticket3i.__ticket3i_9_c
            top.ni_0.ticket3i.ni_2._arrow._first_c
            top.ni_1.Sofar.__Sofar_2_c
            top.ni_1.Sofar.ni_3._arrow._first_c
            top.ni_0.ticket3i.__ticket3i_2_x
            top.ni_0.ticket3i.__ticket3i_3_x
            top.ni_0.ticket3i.__ticket3i_4_x
            top.ni_0.ticket3i.__ticket3i_5_x
            top.ni_0.ticket3i.__ticket3i_6_x
            top.ni_0.ticket3i.__ticket3i_7_x
            top.ni_0.ticket3i.__ticket3i_8_x
            top.ni_0.ticket3i.__ticket3i_9_x
            top.ni_0.ticket3i.ni_2._arrow._first_x
            top.ni_1.Sofar.__Sofar_2_x
            top.ni_1.Sofar.ni_3._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Int Int Int Int Int Int Int Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.ticket3i.__ticket3i_2_c top.ni_0.ticket3i.__ticket3i_3_c top.ni_0.ticket3i.__ticket3i_4_c top.ni_0.ticket3i.__ticket3i_5_c top.ni_0.ticket3i.__ticket3i_6_c top.ni_0.ticket3i.__ticket3i_7_c top.ni_0.ticket3i.__ticket3i_8_c top.ni_0.ticket3i.__ticket3i_9_c top.ni_0.ticket3i.ni_2._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_3._arrow._first_c top.ni_0.ticket3i.__ticket3i_2_m top.ni_0.ticket3i.__ticket3i_3_m top.ni_0.ticket3i.__ticket3i_4_m top.ni_0.ticket3i.__ticket3i_5_m top.ni_0.ticket3i.__ticket3i_6_m top.ni_0.ticket3i.__ticket3i_7_m top.ni_0.ticket3i.__ticket3i_8_m top.ni_0.ticket3i.__ticket3i_9_m top.ni_0.ticket3i.ni_2._arrow._first_m top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.ni_3._arrow._first_m)
       (top_step top.e1 top.e2 top.e3 top.e4 top.e5 top.e6 top.e7 top.e8 top.e9 top.init_a1 top.init_a2 top.init_a3 top.init_t top.OK top.ni_0.ticket3i.__ticket3i_2_m top.ni_0.ticket3i.__ticket3i_3_m top.ni_0.ticket3i.__ticket3i_4_m top.ni_0.ticket3i.__ticket3i_5_m top.ni_0.ticket3i.__ticket3i_6_m top.ni_0.ticket3i.__ticket3i_7_m top.ni_0.ticket3i.__ticket3i_8_m top.ni_0.ticket3i.__ticket3i_9_m top.ni_0.ticket3i.ni_2._arrow._first_m top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.ni_3._arrow._first_m top.ni_0.ticket3i.__ticket3i_2_x top.ni_0.ticket3i.__ticket3i_3_x top.ni_0.ticket3i.__ticket3i_4_x top.ni_0.ticket3i.__ticket3i_5_x top.ni_0.ticket3i.__ticket3i_6_x top.ni_0.ticket3i.__ticket3i_7_x top.ni_0.ticket3i.__ticket3i_8_x top.ni_0.ticket3i.__ticket3i_9_x top.ni_0.ticket3i.ni_2._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_3._arrow._first_x)
  )
  (MAIN top.ni_0.ticket3i.__ticket3i_2_x top.ni_0.ticket3i.__ticket3i_3_x top.ni_0.ticket3i.__ticket3i_4_x top.ni_0.ticket3i.__ticket3i_5_x top.ni_0.ticket3i.__ticket3i_6_x top.ni_0.ticket3i.__ticket3i_7_x top.ni_0.ticket3i.__ticket3i_8_x top.ni_0.ticket3i.__ticket3i_9_x top.ni_0.ticket3i.ni_2._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_3._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.ticket3i.__ticket3i_2_c top.ni_0.ticket3i.__ticket3i_3_c top.ni_0.ticket3i.__ticket3i_4_c top.ni_0.ticket3i.__ticket3i_5_c top.ni_0.ticket3i.__ticket3i_6_c top.ni_0.ticket3i.__ticket3i_7_c top.ni_0.ticket3i.__ticket3i_8_c top.ni_0.ticket3i.__ticket3i_9_c top.ni_0.ticket3i.ni_2._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_3._arrow._first_c dummytop.OK)
       (top_step top.e1 top.e2 top.e3 top.e4 top.e5 top.e6 top.e7 top.e8 top.e9 top.init_a1 top.init_a2 top.init_a3 top.init_t top.OK top.ni_0.ticket3i.__ticket3i_2_c top.ni_0.ticket3i.__ticket3i_3_c top.ni_0.ticket3i.__ticket3i_4_c top.ni_0.ticket3i.__ticket3i_5_c top.ni_0.ticket3i.__ticket3i_6_c top.ni_0.ticket3i.__ticket3i_7_c top.ni_0.ticket3i.__ticket3i_8_c top.ni_0.ticket3i.__ticket3i_9_c top.ni_0.ticket3i.ni_2._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_3._arrow._first_c top.ni_0.ticket3i.__ticket3i_2_x top.ni_0.ticket3i.__ticket3i_3_x top.ni_0.ticket3i.__ticket3i_4_x top.ni_0.ticket3i.__ticket3i_5_x top.ni_0.ticket3i.__ticket3i_6_x top.ni_0.ticket3i.__ticket3i_7_x top.ni_0.ticket3i.__ticket3i_8_x top.ni_0.ticket3i.__ticket3i_9_x top.ni_0.ticket3i.ni_2._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_3._arrow._first_x)
  )
  (MAIN top.ni_0.ticket3i.__ticket3i_2_x top.ni_0.ticket3i.__ticket3i_3_x top.ni_0.ticket3i.__ticket3i_4_x top.ni_0.ticket3i.__ticket3i_5_x top.ni_0.ticket3i.__ticket3i_6_x top.ni_0.ticket3i.__ticket3i_7_x top.ni_0.ticket3i.__ticket3i_8_x top.ni_0.ticket3i.__ticket3i_9_x top.ni_0.ticket3i.ni_2._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_3._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.ticket3i.__ticket3i_2_x top.ni_0.ticket3i.__ticket3i_3_x top.ni_0.ticket3i.__ticket3i_4_x top.ni_0.ticket3i.__ticket3i_5_x top.ni_0.ticket3i.__ticket3i_6_x top.ni_0.ticket3i.__ticket3i_7_x top.ni_0.ticket3i.__ticket3i_8_x top.ni_0.ticket3i.__ticket3i_9_x top.ni_0.ticket3i.ni_2._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_3._arrow._first_x top.OK))
  ERR))
(query ERR)
