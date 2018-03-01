; Statically linked libraries
; First
(declare-var First.X Int)
(declare-var First.First Int)
(declare-var First.__First_2_c Int)
(declare-var First.ni_8._arrow._first_c Bool)
(declare-var First.__First_2_m Int)
(declare-var First.ni_8._arrow._first_m Bool)
(declare-var First.__First_2_x Int)
(declare-var First.ni_8._arrow._first_x Bool)
(declare-var First.__First_1 Bool)
(declare-rel First_reset (Int Bool Int Bool))
(declare-rel First_step (Int Int Int Bool Int Bool))

(rule (=> 
  (and 
       (= First.__First_2_m First.__First_2_c)
       (= First.ni_8._arrow._first_m true)
  )
  (First_reset First.__First_2_c
               First.ni_8._arrow._first_c
               First.__First_2_m
               First.ni_8._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= First.ni_8._arrow._first_m First.ni_8._arrow._first_c)(and (= First.__First_1 (ite First.ni_8._arrow._first_m true false))
                                                                    (= First.ni_8._arrow._first_x false))
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
              First.ni_8._arrow._first_c
              First.__First_2_x
              First.ni_8._arrow._first_x)
))

; FirstB
(declare-var FirstB.X Bool)
(declare-var FirstB.First Bool)
(declare-var FirstB.__FirstB_2_c Bool)
(declare-var FirstB.ni_7._arrow._first_c Bool)
(declare-var FirstB.__FirstB_2_m Bool)
(declare-var FirstB.ni_7._arrow._first_m Bool)
(declare-var FirstB.__FirstB_2_x Bool)
(declare-var FirstB.ni_7._arrow._first_x Bool)
(declare-var FirstB.__FirstB_1 Bool)
(declare-rel FirstB_reset (Bool Bool Bool Bool))
(declare-rel FirstB_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= FirstB.__FirstB_2_m FirstB.__FirstB_2_c)
       (= FirstB.ni_7._arrow._first_m true)
  )
  (FirstB_reset FirstB.__FirstB_2_c
                FirstB.ni_7._arrow._first_c
                FirstB.__FirstB_2_m
                FirstB.ni_7._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= FirstB.ni_7._arrow._first_m FirstB.ni_7._arrow._first_c)(and (= FirstB.__FirstB_1 (ite FirstB.ni_7._arrow._first_m true false))
                                                                    (= FirstB.ni_7._arrow._first_x false))
       (and (or (not (= FirstB.__FirstB_1 true))
               (= FirstB.First FirstB.X))
            (or (not (= FirstB.__FirstB_1 false))
               (= FirstB.First FirstB.__FirstB_2_c))
       )
       (= FirstB.__FirstB_2_x FirstB.First)
       )
  (FirstB_step FirstB.X
               FirstB.First
               FirstB.__FirstB_2_c
               FirstB.ni_7._arrow._first_c
               FirstB.__FirstB_2_x
               FirstB.ni_7._arrow._first_x)
))

; PRODUCER_CONSUMMER
(declare-var PRODUCER_CONSUMMER.etat1 Bool)
(declare-var PRODUCER_CONSUMMER.etat2 Bool)
(declare-var PRODUCER_CONSUMMER.etat3 Bool)
(declare-var PRODUCER_CONSUMMER.a_init Int)
(declare-var PRODUCER_CONSUMMER.i Int)
(declare-var PRODUCER_CONSUMMER.b Int)
(declare-var PRODUCER_CONSUMMER.a Int)
(declare-var PRODUCER_CONSUMMER.o1 Int)
(declare-var PRODUCER_CONSUMMER.o2 Int)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c Int)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c Int)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_c Int)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c Int)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c Int)
(declare-var PRODUCER_CONSUMMER.ni_6._arrow._first_c Bool)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_m Int)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_m Int)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_m Int)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_m Int)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_m Int)
(declare-var PRODUCER_CONSUMMER.ni_6._arrow._first_m Bool)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_x Int)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_x Int)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_x Int)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_x Int)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_x Int)
(declare-var PRODUCER_CONSUMMER.ni_6._arrow._first_x Bool)
(declare-var PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_1 Bool)
(declare-var PRODUCER_CONSUMMER.garde1 Bool)
(declare-var PRODUCER_CONSUMMER.garde2 Bool)
(declare-var PRODUCER_CONSUMMER.garde3 Bool)
(declare-rel PRODUCER_CONSUMMER_reset (Int Int Int Int Int Bool Int Int Int Int Int Bool))
(declare-rel PRODUCER_CONSUMMER_step (Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Bool))

(rule (=> 
  (and 
       (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_m PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c)
       (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_m PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c)
       (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_m PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_c)
       (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_m PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c)
       (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_m PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c)
       (= PRODUCER_CONSUMMER.ni_6._arrow._first_m true)
  )
  (PRODUCER_CONSUMMER_reset PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c
                            PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c
                            PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_c
                            PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c
                            PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c
                            PRODUCER_CONSUMMER.ni_6._arrow._first_c
                            PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_m
                            PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_m
                            PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_m
                            PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_m
                            PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_m
                            PRODUCER_CONSUMMER.ni_6._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= PRODUCER_CONSUMMER.garde3 (>= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c 1))
       (= PRODUCER_CONSUMMER.ni_6._arrow._first_m PRODUCER_CONSUMMER.ni_6._arrow._first_c)
       (and (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_1 (ite PRODUCER_CONSUMMER.ni_6._arrow._first_m true false))
            (= PRODUCER_CONSUMMER.ni_6._arrow._first_x false))
       (and (or (not (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_1 true))
               (= PRODUCER_CONSUMMER.o2 0))
            (or (not (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_1 false))
               (and (or (not (= PRODUCER_CONSUMMER.etat3 true))
                       (and (or (not (= PRODUCER_CONSUMMER.garde3 true))
                               (= PRODUCER_CONSUMMER.o2 (+ PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c 1)))
                            (or (not (= PRODUCER_CONSUMMER.garde3 false))
                               (= PRODUCER_CONSUMMER.o2 PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c))
                       ))
                    (or (not (= PRODUCER_CONSUMMER.etat3 false))
                       (= PRODUCER_CONSUMMER.o2 PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c))
               ))
       )
       (= PRODUCER_CONSUMMER.garde2 (>= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c 1))
       (and (or (not (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_1 true))
               (= PRODUCER_CONSUMMER.o1 0))
            (or (not (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_1 false))
               (and (or (not (= PRODUCER_CONSUMMER.etat2 true))
                       (and (or (not (= PRODUCER_CONSUMMER.garde2 true))
                               (= PRODUCER_CONSUMMER.o1 (+ PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c 1)))
                            (or (not (= PRODUCER_CONSUMMER.garde2 false))
                               (= PRODUCER_CONSUMMER.o1 PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c))
                       ))
                    (or (not (= PRODUCER_CONSUMMER.etat2 false))
                       (= PRODUCER_CONSUMMER.o1 PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c))
               ))
       )
       (= PRODUCER_CONSUMMER.garde1 (>= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c 1))
       (and (or (not (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_1 false))
               (and (= PRODUCER_CONSUMMER.a PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_c)
                    (and (or (not (= PRODUCER_CONSUMMER.etat1 false))
                            (and (= PRODUCER_CONSUMMER.i PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c)
                                 (and (or (not (= PRODUCER_CONSUMMER.etat2 true))
                                         (and (or (not (= PRODUCER_CONSUMMER.garde2 true))
                                                 (= PRODUCER_CONSUMMER.b (- PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c 1)))
                                              (or (not (= PRODUCER_CONSUMMER.garde2 false))
                                                 (= PRODUCER_CONSUMMER.b PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c))
                                         ))
                                      (or (not (= PRODUCER_CONSUMMER.etat2 false))
                                         (and (or (not (= PRODUCER_CONSUMMER.garde3 true))
                                                 (= PRODUCER_CONSUMMER.b (- PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c 1)))
                                              (or (not (= PRODUCER_CONSUMMER.garde3 false))
                                                 (= PRODUCER_CONSUMMER.b PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c))
                                         ))
                                 )
                                 ))
                         (or (not (= PRODUCER_CONSUMMER.etat1 true))
                            (and (or (not (= PRODUCER_CONSUMMER.garde1 false))
                                    (and (= PRODUCER_CONSUMMER.i PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c)
                                         (= PRODUCER_CONSUMMER.b PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c)
                                         ))
                                 (or (not (= PRODUCER_CONSUMMER.garde1 true))
                                    (and (= PRODUCER_CONSUMMER.i (- PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c 1))
                                         (= PRODUCER_CONSUMMER.b (+ PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c 1))
                                         ))
                            ))
                    )
                    ))
            (or (not (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_1 true))
               (and (= PRODUCER_CONSUMMER.a PRODUCER_CONSUMMER.a_init)
                    (= PRODUCER_CONSUMMER.i PRODUCER_CONSUMMER.a)
                    (= PRODUCER_CONSUMMER.b 0)
                    ))
       )
       (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_x PRODUCER_CONSUMMER.i)
       (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_x PRODUCER_CONSUMMER.b)
       (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_x PRODUCER_CONSUMMER.a)
       (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_x PRODUCER_CONSUMMER.o1)
       (= PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_x PRODUCER_CONSUMMER.o2)
       )
  (PRODUCER_CONSUMMER_step PRODUCER_CONSUMMER.etat1
                           PRODUCER_CONSUMMER.etat2
                           PRODUCER_CONSUMMER.etat3
                           PRODUCER_CONSUMMER.a_init
                           PRODUCER_CONSUMMER.i
                           PRODUCER_CONSUMMER.b
                           PRODUCER_CONSUMMER.a
                           PRODUCER_CONSUMMER.o1
                           PRODUCER_CONSUMMER.o2
                           PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c
                           PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c
                           PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_c
                           PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c
                           PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c
                           PRODUCER_CONSUMMER.ni_6._arrow._first_c
                           PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_x
                           PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_x
                           PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_x
                           PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_x
                           PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_x
                           PRODUCER_CONSUMMER.ni_6._arrow._first_x)
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

; excludes3
(declare-var excludes3.X1 Bool)
(declare-var excludes3.X2 Bool)
(declare-var excludes3.X3 Bool)
(declare-var excludes3.excludes Bool)
(declare-rel excludes3_fun (Bool Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (= excludes3.excludes (not (or (or (and excludes3.X1 excludes3.X2) (and excludes3.X1 excludes3.X3)) (and excludes3.X2 excludes3.X3))))
  (excludes3_fun excludes3.X1 excludes3.X2 excludes3.X3 excludes3.excludes)
))

; top
(declare-var top.etat1 Bool)
(declare-var top.etat2 Bool)
(declare-var top.etat3 Bool)
(declare-var top.a_init Int)
(declare-var top.OK Bool)
(declare-var top.ni_0.First.__First_2_c Int)
(declare-var top.ni_0.First.ni_8._arrow._first_c Bool)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_c Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_c Bool)
(declare-var top.ni_2.First.__First_2_c Int)
(declare-var top.ni_2.First.ni_8._arrow._first_c Bool)
(declare-var top.ni_3.FirstB.__FirstB_2_c Bool)
(declare-var top.ni_3.FirstB.ni_7._arrow._first_c Bool)
(declare-var top.ni_4.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_4.Sofar.ni_5._arrow._first_c Bool)
(declare-var top.ni_0.First.__First_2_m Int)
(declare-var top.ni_0.First.ni_8._arrow._first_m Bool)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_m Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_m Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_m Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_m Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_m Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_m Bool)
(declare-var top.ni_2.First.__First_2_m Int)
(declare-var top.ni_2.First.ni_8._arrow._first_m Bool)
(declare-var top.ni_3.FirstB.__FirstB_2_m Bool)
(declare-var top.ni_3.FirstB.ni_7._arrow._first_m Bool)
(declare-var top.ni_4.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_4.Sofar.ni_5._arrow._first_m Bool)
(declare-var top.ni_0.First.__First_2_x Int)
(declare-var top.ni_0.First.ni_8._arrow._first_x Bool)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_x Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_x Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_x Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_x Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_x Int)
(declare-var top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_x Bool)
(declare-var top.ni_2.First.__First_2_x Int)
(declare-var top.ni_2.First.ni_8._arrow._first_x Bool)
(declare-var top.ni_3.FirstB.__FirstB_2_x Bool)
(declare-var top.ni_3.FirstB.ni_7._arrow._first_x Bool)
(declare-var top.ni_4.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_4.Sofar.ni_5._arrow._first_x Bool)
(declare-var top.__top_1 Int)
(declare-var top.__top_2 Int)
(declare-var top.__top_3 Bool)
(declare-var top.__top_4 Bool)
(declare-var top.__top_5 Bool)
(declare-var top.a Int)
(declare-var top.b Int)
(declare-var top.i Int)
(declare-var top.o1 Int)
(declare-var top.o2 Int)
(declare-rel top_reset (Int Bool Int Int Int Int Int Bool Int Bool Bool Bool Bool Bool Int Bool Int Int Int Int Int Bool Int Bool Bool Bool Bool Bool))
(declare-rel top_step (Bool Bool Bool Int Bool Int Bool Int Int Int Int Int Bool Int Bool Bool Bool Bool Bool Int Bool Int Int Int Int Int Bool Int Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       
       (Sofar_reset top.ni_4.Sofar.__Sofar_2_c
                    top.ni_4.Sofar.ni_5._arrow._first_c
                    top.ni_4.Sofar.__Sofar_2_m
                    top.ni_4.Sofar.ni_5._arrow._first_m)
       (FirstB_reset top.ni_3.FirstB.__FirstB_2_c
                     top.ni_3.FirstB.ni_7._arrow._first_c
                     top.ni_3.FirstB.__FirstB_2_m
                     top.ni_3.FirstB.ni_7._arrow._first_m)
       (First_reset top.ni_2.First.__First_2_c
                    top.ni_2.First.ni_8._arrow._first_c
                    top.ni_2.First.__First_2_m
                    top.ni_2.First.ni_8._arrow._first_m)
       (PRODUCER_CONSUMMER_reset top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c
                                 top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c
                                 top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_c
                                 top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c
                                 top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c
                                 top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_c
                                 top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_m
                                 top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_m
                                 top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_m
                                 top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_m
                                 top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_m
                                 top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_m)
       (First_reset top.ni_0.First.__First_2_c
                    top.ni_0.First.ni_8._arrow._first_c
                    top.ni_0.First.__First_2_m
                    top.ni_0.First.ni_8._arrow._first_m)
  )
  (top_reset top.ni_0.First.__First_2_c
             top.ni_0.First.ni_8._arrow._first_c
             top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c
             top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c
             top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_c
             top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c
             top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c
             top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_c
             top.ni_2.First.__First_2_c
             top.ni_2.First.ni_8._arrow._first_c
             top.ni_3.FirstB.__FirstB_2_c
             top.ni_3.FirstB.ni_7._arrow._first_c
             top.ni_4.Sofar.__Sofar_2_c
             top.ni_4.Sofar.ni_5._arrow._first_c
             top.ni_0.First.__First_2_m
             top.ni_0.First.ni_8._arrow._first_m
             top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_m
             top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_m
             top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_m
             top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_m
             top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_m
             top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_m
             top.ni_2.First.__First_2_m
             top.ni_2.First.ni_8._arrow._first_m
             top.ni_3.FirstB.__FirstB_2_m
             top.ni_3.FirstB.ni_7._arrow._first_m
             top.ni_4.Sofar.__Sofar_2_m
             top.ni_4.Sofar.ni_5._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (excludes3_fun top.etat1
                      top.etat2
                      top.etat3
                      top.__top_4)
       (and (= top.ni_4.Sofar.__Sofar_2_m top.ni_4.Sofar.__Sofar_2_c)
            (= top.ni_4.Sofar.ni_5._arrow._first_m top.ni_4.Sofar.ni_5._arrow._first_c)
            )
       (Sofar_step (or top.__top_4 (not (or (or top.etat1 top.etat2) top.etat3)))
                   top.__top_5
                   top.ni_4.Sofar.__Sofar_2_m
                   top.ni_4.Sofar.ni_5._arrow._first_m
                   top.ni_4.Sofar.__Sofar_2_x
                   top.ni_4.Sofar.ni_5._arrow._first_x)
       (and (= top.ni_3.FirstB.__FirstB_2_m top.ni_3.FirstB.__FirstB_2_c)
            (= top.ni_3.FirstB.ni_7._arrow._first_m top.ni_3.FirstB.ni_7._arrow._first_c)
            )
       (FirstB_step (not (or (or top.etat1 top.etat2) top.etat3))
                    top.__top_3
                    top.ni_3.FirstB.__FirstB_2_m
                    top.ni_3.FirstB.ni_7._arrow._first_m
                    top.ni_3.FirstB.__FirstB_2_x
                    top.ni_3.FirstB.ni_7._arrow._first_x)
       (and (= top.ni_2.First.__First_2_m top.ni_2.First.__First_2_c)
            (= top.ni_2.First.ni_8._arrow._first_m top.ni_2.First.ni_8._arrow._first_c)
            )
       (First_step top.a_init
                   top.__top_2
                   top.ni_2.First.__First_2_m
                   top.ni_2.First.ni_8._arrow._first_m
                   top.ni_2.First.__First_2_x
                   top.ni_2.First.ni_8._arrow._first_x)
       (and (= top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c)
            (= top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c)
            (= top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_c)
            (= top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c)
            (= top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c)
            (= top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_m top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_c)
            )
       (PRODUCER_CONSUMMER_step top.etat1
                                top.etat2
                                top.etat3
                                top.a_init
                                top.i
                                top.b
                                top.a
                                top.o1
                                top.o2
                                top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_m
                                top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_m
                                top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_m
                                top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_m
                                top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_m
                                top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_m
                                top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_x
                                top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_x
                                top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_x
                                top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_x
                                top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_x
                                top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_x)
       (and (= top.ni_0.First.__First_2_m top.ni_0.First.__First_2_c)
            (= top.ni_0.First.ni_8._arrow._first_m top.ni_0.First.ni_8._arrow._first_c)
            )
       (First_step top.a
                   top.__top_1
                   top.ni_0.First.__First_2_m
                   top.ni_0.First.ni_8._arrow._first_m
                   top.ni_0.First.__First_2_x
                   top.ni_0.First.ni_8._arrow._first_x)
       (= top.OK (=> (and (and top.__top_5 top.__top_3) (> top.__top_2 0)) (<= (+ top.o1 top.o2) top.__top_1)))
       )
  (top_step top.etat1
            top.etat2
            top.etat3
            top.a_init
            top.OK
            top.ni_0.First.__First_2_c
            top.ni_0.First.ni_8._arrow._first_c
            top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c
            top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c
            top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_c
            top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c
            top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c
            top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_c
            top.ni_2.First.__First_2_c
            top.ni_2.First.ni_8._arrow._first_c
            top.ni_3.FirstB.__FirstB_2_c
            top.ni_3.FirstB.ni_7._arrow._first_c
            top.ni_4.Sofar.__Sofar_2_c
            top.ni_4.Sofar.ni_5._arrow._first_c
            top.ni_0.First.__First_2_x
            top.ni_0.First.ni_8._arrow._first_x
            top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_x
            top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_x
            top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_x
            top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_x
            top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_x
            top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_x
            top.ni_2.First.__First_2_x
            top.ni_2.First.ni_8._arrow._first_x
            top.ni_3.FirstB.__FirstB_2_x
            top.ni_3.FirstB.ni_7._arrow._first_x
            top.ni_4.Sofar.__Sofar_2_x
            top.ni_4.Sofar.ni_5._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Bool Int Int Int Int Int Bool Int Bool Bool Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.First.__First_2_c top.ni_0.First.ni_8._arrow._first_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_c top.ni_2.First.__First_2_c top.ni_2.First.ni_8._arrow._first_c top.ni_3.FirstB.__FirstB_2_c top.ni_3.FirstB.ni_7._arrow._first_c top.ni_4.Sofar.__Sofar_2_c top.ni_4.Sofar.ni_5._arrow._first_c top.ni_0.First.__First_2_m top.ni_0.First.ni_8._arrow._first_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_m top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_m top.ni_2.First.__First_2_m top.ni_2.First.ni_8._arrow._first_m top.ni_3.FirstB.__FirstB_2_m top.ni_3.FirstB.ni_7._arrow._first_m top.ni_4.Sofar.__Sofar_2_m top.ni_4.Sofar.ni_5._arrow._first_m)
       (top_step top.etat1 top.etat2 top.etat3 top.a_init top.OK top.ni_0.First.__First_2_m top.ni_0.First.ni_8._arrow._first_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_m top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_m top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_m top.ni_2.First.__First_2_m top.ni_2.First.ni_8._arrow._first_m top.ni_3.FirstB.__FirstB_2_m top.ni_3.FirstB.ni_7._arrow._first_m top.ni_4.Sofar.__Sofar_2_m top.ni_4.Sofar.ni_5._arrow._first_m top.ni_0.First.__First_2_x top.ni_0.First.ni_8._arrow._first_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_x top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_x top.ni_2.First.__First_2_x top.ni_2.First.ni_8._arrow._first_x top.ni_3.FirstB.__FirstB_2_x top.ni_3.FirstB.ni_7._arrow._first_x top.ni_4.Sofar.__Sofar_2_x top.ni_4.Sofar.ni_5._arrow._first_x)
  )
  (MAIN top.ni_0.First.__First_2_x top.ni_0.First.ni_8._arrow._first_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_x top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_x top.ni_2.First.__First_2_x top.ni_2.First.ni_8._arrow._first_x top.ni_3.FirstB.__FirstB_2_x top.ni_3.FirstB.ni_7._arrow._first_x top.ni_4.Sofar.__Sofar_2_x top.ni_4.Sofar.ni_5._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.First.__First_2_c top.ni_0.First.ni_8._arrow._first_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_c top.ni_2.First.__First_2_c top.ni_2.First.ni_8._arrow._first_c top.ni_3.FirstB.__FirstB_2_c top.ni_3.FirstB.ni_7._arrow._first_c top.ni_4.Sofar.__Sofar_2_c top.ni_4.Sofar.ni_5._arrow._first_c dummytop.OK)
       (top_step top.etat1 top.etat2 top.etat3 top.a_init top.OK top.ni_0.First.__First_2_c top.ni_0.First.ni_8._arrow._first_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_c top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_c top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_c top.ni_2.First.__First_2_c top.ni_2.First.ni_8._arrow._first_c top.ni_3.FirstB.__FirstB_2_c top.ni_3.FirstB.ni_7._arrow._first_c top.ni_4.Sofar.__Sofar_2_c top.ni_4.Sofar.ni_5._arrow._first_c top.ni_0.First.__First_2_x top.ni_0.First.ni_8._arrow._first_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_x top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_x top.ni_2.First.__First_2_x top.ni_2.First.ni_8._arrow._first_x top.ni_3.FirstB.__FirstB_2_x top.ni_3.FirstB.ni_7._arrow._first_x top.ni_4.Sofar.__Sofar_2_x top.ni_4.Sofar.ni_5._arrow._first_x)
  )
  (MAIN top.ni_0.First.__First_2_x top.ni_0.First.ni_8._arrow._first_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_x top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_x top.ni_2.First.__First_2_x top.ni_2.First.ni_8._arrow._first_x top.ni_3.FirstB.__FirstB_2_x top.ni_3.FirstB.ni_7._arrow._first_x top.ni_4.Sofar.__Sofar_2_x top.ni_4.Sofar.ni_5._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.First.__First_2_x top.ni_0.First.ni_8._arrow._first_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_2_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_3_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_4_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_5_x top.ni_1.PRODUCER_CONSUMMER.__PRODUCER_CONSUMMER_6_x top.ni_1.PRODUCER_CONSUMMER.ni_6._arrow._first_x top.ni_2.First.__First_2_x top.ni_2.First.ni_8._arrow._first_x top.ni_3.FirstB.__FirstB_2_x top.ni_3.FirstB.ni_7._arrow._first_x top.ni_4.Sofar.__Sofar_2_x top.ni_4.Sofar.ni_5._arrow._first_x top.OK))
  ERR))
(query ERR)
