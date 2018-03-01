; Statically linked libraries
; controleur
(declare-var controleur.nB Int)
(declare-var controleur.nS Int)
(declare-var controleur.diff Int)
(declare-var controleur.avance Bool)
(declare-var controleur.retard Bool)
(declare-var controleur.__controleur_2_c Bool)
(declare-var controleur.__controleur_4_c Bool)
(declare-var controleur.ni_10._arrow._first_c Bool)
(declare-var controleur.__controleur_2_m Bool)
(declare-var controleur.__controleur_4_m Bool)
(declare-var controleur.ni_10._arrow._first_m Bool)
(declare-var controleur.__controleur_2_x Bool)
(declare-var controleur.__controleur_4_x Bool)
(declare-var controleur.ni_10._arrow._first_x Bool)
(declare-var controleur.__controleur_1 Bool)
(declare-var controleur.__controleur_3 Bool)
(declare-var controleur.__controleur_5 Bool)
(declare-rel controleur_reset (Bool Bool Bool Bool Bool Bool))
(declare-rel controleur_step (Int Int Int Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= controleur.__controleur_2_m controleur.__controleur_2_c)
       (= controleur.__controleur_4_m controleur.__controleur_4_c)
       (= controleur.ni_10._arrow._first_m true)
  )
  (controleur_reset controleur.__controleur_2_c
                    controleur.__controleur_4_c
                    controleur.ni_10._arrow._first_c
                    controleur.__controleur_2_m
                    controleur.__controleur_4_m
                    controleur.ni_10._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= controleur.diff (- controleur.nB controleur.nS))
       (= controleur.__controleur_3 (not controleur.__controleur_2_c))
       (= controleur.ni_10._arrow._first_m controleur.ni_10._arrow._first_c)
       (and (= controleur.__controleur_1 (ite controleur.ni_10._arrow._first_m true false))
            (= controleur.ni_10._arrow._first_x false))
       (and (or (not (= controleur.__controleur_1 true))
               (= controleur.retard false))
            (or (not (= controleur.__controleur_1 false))
               (and (or (not (= controleur.__controleur_3 true))
                       (= controleur.retard (<= controleur.diff (- 10))))
                    (or (not (= controleur.__controleur_3 false))
                       (= controleur.retard (< controleur.diff 0)))
               ))
       )
       (= controleur.__controleur_5 (not controleur.__controleur_4_c))
       (and (or (not (= controleur.__controleur_1 true))
               (= controleur.avance false))
            (or (not (= controleur.__controleur_1 false))
               (and (or (not (= controleur.__controleur_5 true))
                       (= controleur.avance (>= controleur.diff 10)))
                    (or (not (= controleur.__controleur_5 false))
                       (= controleur.avance (> controleur.diff 0)))
               ))
       )
       (= controleur.__controleur_4_x controleur.avance)
       (= controleur.__controleur_2_x controleur.retard)
       )
  (controleur_step controleur.nB
                   controleur.nS
                   controleur.diff
                   controleur.avance
                   controleur.retard
                   controleur.__controleur_2_c
                   controleur.__controleur_4_c
                   controleur.ni_10._arrow._first_c
                   controleur.__controleur_2_x
                   controleur.__controleur_4_x
                   controleur.ni_10._arrow._first_x)
))

; hypothese
(declare-var hypothese.B Bool)
(declare-var hypothese.S Bool)
(declare-var hypothese.avance Bool)
(declare-var hypothese.retard Bool)
(declare-var hypothese.ok Bool)
(declare-var hypothese.__hypothese_2_c Bool)
(declare-var hypothese.__hypothese_4_c Int)
(declare-var hypothese.__hypothese_7_c Bool)
(declare-var hypothese.ni_9._arrow._first_c Bool)
(declare-var hypothese.__hypothese_2_m Bool)
(declare-var hypothese.__hypothese_4_m Int)
(declare-var hypothese.__hypothese_7_m Bool)
(declare-var hypothese.ni_9._arrow._first_m Bool)
(declare-var hypothese.__hypothese_2_x Bool)
(declare-var hypothese.__hypothese_4_x Int)
(declare-var hypothese.__hypothese_7_x Bool)
(declare-var hypothese.ni_9._arrow._first_x Bool)
(declare-var hypothese.__hypothese_1 Bool)
(declare-var hypothese.__hypothese_3 Bool)
(declare-var hypothese.__hypothese_5 Bool)
(declare-var hypothese.__hypothese_6 Bool)
(declare-var hypothese.__hypothese_8 Bool)
(declare-var hypothese.c Int)
(declare-rel hypothese_reset (Bool Int Bool Bool Bool Int Bool Bool))
(declare-rel hypothese_step (Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Int Bool Bool))

(rule (=> 
  (and 
       (= hypothese.__hypothese_2_m hypothese.__hypothese_2_c)
       (= hypothese.__hypothese_4_m hypothese.__hypothese_4_c)
       (= hypothese.__hypothese_7_m hypothese.__hypothese_7_c)
       (= hypothese.ni_9._arrow._first_m true)
  )
  (hypothese_reset hypothese.__hypothese_2_c
                   hypothese.__hypothese_4_c
                   hypothese.__hypothese_7_c
                   hypothese.ni_9._arrow._first_c
                   hypothese.__hypothese_2_m
                   hypothese.__hypothese_4_m
                   hypothese.__hypothese_7_m
                   hypothese.ni_9._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (or (not (= hypothese.__hypothese_7_c true))
               (= hypothese.__hypothese_8 (not hypothese.S)))
            (or (not (= hypothese.__hypothese_7_c false))
               (= hypothese.__hypothese_8 true))
       )
       (= hypothese.__hypothese_5 (>= hypothese.__hypothese_4_c 9))
       (and (or (not (= hypothese.__hypothese_5 true))
               (= hypothese.__hypothese_6 (not hypothese.B)))
            (or (not (= hypothese.__hypothese_5 false))
               (= hypothese.__hypothese_6 true))
       )
       (= hypothese.ni_9._arrow._first_m hypothese.ni_9._arrow._first_c)
       (and (= hypothese.__hypothese_1 (ite hypothese.ni_9._arrow._first_m true false))
            (= hypothese.ni_9._arrow._first_x false))
       (and (or (not (= hypothese.__hypothese_1 true))
               (= hypothese.ok true))
            (or (not (= hypothese.__hypothese_1 false))
               (= hypothese.ok (and hypothese.__hypothese_8 hypothese.__hypothese_6)))
       )
       (= hypothese.__hypothese_3 (and hypothese.__hypothese_2_c hypothese.avance))
       (and (or (not (= hypothese.__hypothese_1 true))
               (= hypothese.c 0))
            (or (not (= hypothese.__hypothese_1 false))
               (and (or (not (= hypothese.__hypothese_3 true))
                       (and (or (not (= hypothese.B true))
                               (= hypothese.c (+ (+ hypothese.__hypothese_4_c 1) 1)))
                            (or (not (= hypothese.B false))
                               (= hypothese.c hypothese.__hypothese_4_c))
                       ))
                    (or (not (= hypothese.__hypothese_3 false))
                       (= hypothese.c 0))
               ))
       )
       (= hypothese.__hypothese_7_x hypothese.retard)
       (= hypothese.__hypothese_4_x hypothese.c)
       (= hypothese.__hypothese_2_x hypothese.avance)
       )
  (hypothese_step hypothese.B
                  hypothese.S
                  hypothese.avance
                  hypothese.retard
                  hypothese.ok
                  hypothese.__hypothese_2_c
                  hypothese.__hypothese_4_c
                  hypothese.__hypothese_7_c
                  hypothese.ni_9._arrow._first_c
                  hypothese.__hypothese_2_x
                  hypothese.__hypothese_4_x
                  hypothese.__hypothese_7_x
                  hypothese.ni_9._arrow._first_x)
))

; Sofar
(declare-var Sofar.X Bool)
(declare-var Sofar.Sofar Bool)
(declare-var Sofar.__Sofar_2_c Bool)
(declare-var Sofar.ni_8._arrow._first_c Bool)
(declare-var Sofar.__Sofar_2_m Bool)
(declare-var Sofar.ni_8._arrow._first_m Bool)
(declare-var Sofar.__Sofar_2_x Bool)
(declare-var Sofar.ni_8._arrow._first_x Bool)
(declare-var Sofar.__Sofar_1 Bool)
(declare-rel Sofar_reset (Bool Bool Bool Bool))
(declare-rel Sofar_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= Sofar.__Sofar_2_m Sofar.__Sofar_2_c)
       (= Sofar.ni_8._arrow._first_m true)
  )
  (Sofar_reset Sofar.__Sofar_2_c
               Sofar.ni_8._arrow._first_c
               Sofar.__Sofar_2_m
               Sofar.ni_8._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Sofar.ni_8._arrow._first_m Sofar.ni_8._arrow._first_c)(and (= Sofar.__Sofar_1 (ite Sofar.ni_8._arrow._first_m true false))
                                                                    (= Sofar.ni_8._arrow._first_x false))
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
              Sofar.ni_8._arrow._first_c
              Sofar.__Sofar_2_x
              Sofar.ni_8._arrow._first_x)
))

; main
(declare-var main.B0 Bool)
(declare-var main.B1 Bool)
(declare-var main.S Bool)
(declare-var main.ast Bool)
(declare-var main.nB0 Int)
(declare-var main.nB1 Int)
(declare-var main.nS Int)
(declare-var main.diff0 Int)
(declare-var main.diff1 Int)
(declare-var main.avance0 Bool)
(declare-var main.avance1 Bool)
(declare-var main.retard0 Bool)
(declare-var main.retard1 Bool)
(declare-var main.__main_2_c Int)
(declare-var main.__main_3_c Int)
(declare-var main.__main_4_c Int)
(declare-var main.ni_3.hypothese.__hypothese_2_c Bool)
(declare-var main.ni_3.hypothese.__hypothese_4_c Int)
(declare-var main.ni_3.hypothese.__hypothese_7_c Bool)
(declare-var main.ni_3.hypothese.ni_9._arrow._first_c Bool)
(declare-var main.ni_4.hypothese.__hypothese_2_c Bool)
(declare-var main.ni_4.hypothese.__hypothese_4_c Int)
(declare-var main.ni_4.hypothese.__hypothese_7_c Bool)
(declare-var main.ni_4.hypothese.ni_9._arrow._first_c Bool)
(declare-var main.ni_5.controleur.__controleur_2_c Bool)
(declare-var main.ni_5.controleur.__controleur_4_c Bool)
(declare-var main.ni_5.controleur.ni_10._arrow._first_c Bool)
(declare-var main.ni_6.controleur.__controleur_2_c Bool)
(declare-var main.ni_6.controleur.__controleur_4_c Bool)
(declare-var main.ni_6.controleur.ni_10._arrow._first_c Bool)
(declare-var main.ni_7._arrow._first_c Bool)
(declare-var main.__main_2_m Int)
(declare-var main.__main_3_m Int)
(declare-var main.__main_4_m Int)
(declare-var main.ni_3.hypothese.__hypothese_2_m Bool)
(declare-var main.ni_3.hypothese.__hypothese_4_m Int)
(declare-var main.ni_3.hypothese.__hypothese_7_m Bool)
(declare-var main.ni_3.hypothese.ni_9._arrow._first_m Bool)
(declare-var main.ni_4.hypothese.__hypothese_2_m Bool)
(declare-var main.ni_4.hypothese.__hypothese_4_m Int)
(declare-var main.ni_4.hypothese.__hypothese_7_m Bool)
(declare-var main.ni_4.hypothese.ni_9._arrow._first_m Bool)
(declare-var main.ni_5.controleur.__controleur_2_m Bool)
(declare-var main.ni_5.controleur.__controleur_4_m Bool)
(declare-var main.ni_5.controleur.ni_10._arrow._first_m Bool)
(declare-var main.ni_6.controleur.__controleur_2_m Bool)
(declare-var main.ni_6.controleur.__controleur_4_m Bool)
(declare-var main.ni_6.controleur.ni_10._arrow._first_m Bool)
(declare-var main.ni_7._arrow._first_m Bool)
(declare-var main.__main_2_x Int)
(declare-var main.__main_3_x Int)
(declare-var main.__main_4_x Int)
(declare-var main.ni_3.hypothese.__hypothese_2_x Bool)
(declare-var main.ni_3.hypothese.__hypothese_4_x Int)
(declare-var main.ni_3.hypothese.__hypothese_7_x Bool)
(declare-var main.ni_3.hypothese.ni_9._arrow._first_x Bool)
(declare-var main.ni_4.hypothese.__hypothese_2_x Bool)
(declare-var main.ni_4.hypothese.__hypothese_4_x Int)
(declare-var main.ni_4.hypothese.__hypothese_7_x Bool)
(declare-var main.ni_4.hypothese.ni_9._arrow._first_x Bool)
(declare-var main.ni_5.controleur.__controleur_2_x Bool)
(declare-var main.ni_5.controleur.__controleur_4_x Bool)
(declare-var main.ni_5.controleur.ni_10._arrow._first_x Bool)
(declare-var main.ni_6.controleur.__controleur_2_x Bool)
(declare-var main.ni_6.controleur.__controleur_4_x Bool)
(declare-var main.ni_6.controleur.ni_10._arrow._first_x Bool)
(declare-var main.ni_7._arrow._first_x Bool)
(declare-var main.H0 Bool)
(declare-var main.H1 Bool)
(declare-var main.__main_1 Bool)
(declare-rel main_reset (Int Int Int Bool Int Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Bool Int Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel main_step (Bool Bool Bool Bool Int Int Int Int Int Bool Bool Bool Bool Int Int Int Bool Int Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Bool Int Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= main.__main_2_m main.__main_2_c)
       (= main.__main_3_m main.__main_3_c)
       (= main.__main_4_m main.__main_4_c)
       (= main.ni_7._arrow._first_m true)
       (controleur_reset main.ni_6.controleur.__controleur_2_c
                         main.ni_6.controleur.__controleur_4_c
                         main.ni_6.controleur.ni_10._arrow._first_c
                         main.ni_6.controleur.__controleur_2_m
                         main.ni_6.controleur.__controleur_4_m
                         main.ni_6.controleur.ni_10._arrow._first_m)
       (controleur_reset main.ni_5.controleur.__controleur_2_c
                         main.ni_5.controleur.__controleur_4_c
                         main.ni_5.controleur.ni_10._arrow._first_c
                         main.ni_5.controleur.__controleur_2_m
                         main.ni_5.controleur.__controleur_4_m
                         main.ni_5.controleur.ni_10._arrow._first_m)
       (hypothese_reset main.ni_4.hypothese.__hypothese_2_c
                        main.ni_4.hypothese.__hypothese_4_c
                        main.ni_4.hypothese.__hypothese_7_c
                        main.ni_4.hypothese.ni_9._arrow._first_c
                        main.ni_4.hypothese.__hypothese_2_m
                        main.ni_4.hypothese.__hypothese_4_m
                        main.ni_4.hypothese.__hypothese_7_m
                        main.ni_4.hypothese.ni_9._arrow._first_m)
       (hypothese_reset main.ni_3.hypothese.__hypothese_2_c
                        main.ni_3.hypothese.__hypothese_4_c
                        main.ni_3.hypothese.__hypothese_7_c
                        main.ni_3.hypothese.ni_9._arrow._first_c
                        main.ni_3.hypothese.__hypothese_2_m
                        main.ni_3.hypothese.__hypothese_4_m
                        main.ni_3.hypothese.__hypothese_7_m
                        main.ni_3.hypothese.ni_9._arrow._first_m)
  )
  (main_reset main.__main_2_c
              main.__main_3_c
              main.__main_4_c
              main.ni_3.hypothese.__hypothese_2_c
              main.ni_3.hypothese.__hypothese_4_c
              main.ni_3.hypothese.__hypothese_7_c
              main.ni_3.hypothese.ni_9._arrow._first_c
              main.ni_4.hypothese.__hypothese_2_c
              main.ni_4.hypothese.__hypothese_4_c
              main.ni_4.hypothese.__hypothese_7_c
              main.ni_4.hypothese.ni_9._arrow._first_c
              main.ni_5.controleur.__controleur_2_c
              main.ni_5.controleur.__controleur_4_c
              main.ni_5.controleur.ni_10._arrow._first_c
              main.ni_6.controleur.__controleur_2_c
              main.ni_6.controleur.__controleur_4_c
              main.ni_6.controleur.ni_10._arrow._first_c
              main.ni_7._arrow._first_c
              main.__main_2_m
              main.__main_3_m
              main.__main_4_m
              main.ni_3.hypothese.__hypothese_2_m
              main.ni_3.hypothese.__hypothese_4_m
              main.ni_3.hypothese.__hypothese_7_m
              main.ni_3.hypothese.ni_9._arrow._first_m
              main.ni_4.hypothese.__hypothese_2_m
              main.ni_4.hypothese.__hypothese_4_m
              main.ni_4.hypothese.__hypothese_7_m
              main.ni_4.hypothese.ni_9._arrow._first_m
              main.ni_5.controleur.__controleur_2_m
              main.ni_5.controleur.__controleur_4_m
              main.ni_5.controleur.ni_10._arrow._first_m
              main.ni_6.controleur.__controleur_2_m
              main.ni_6.controleur.__controleur_4_m
              main.ni_6.controleur.ni_10._arrow._first_m
              main.ni_7._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= main.ni_7._arrow._first_m main.ni_7._arrow._first_c)(and (= main.__main_1 (ite main.ni_7._arrow._first_m true false))
                                                                   (= main.ni_7._arrow._first_x false))
       (and (or (not (= main.__main_1 false))
               (and (and (or (not (= main.S true))
                            (= main.nS (+ main.__main_2_c 1)))
                         (or (not (= main.S false))
                            (= main.nS main.__main_2_c))
                    )
                    (and (or (not (= main.B1 true))
                            (= main.nB1 (+ main.__main_3_c 1)))
                         (or (not (= main.B1 false))
                            (= main.nB1 main.__main_3_c))
                    )
                    (and (or (not (= main.B0 true))
                            (= main.nB0 (+ main.__main_4_c 1)))
                         (or (not (= main.B0 false))
                            (= main.nB0 main.__main_4_c))
                    )
                    ))
            (or (not (= main.__main_1 true))
               (and (= main.nS 0)
                    (= main.nB1 0)
                    (= main.nB0 0)
                    ))
       )
       (and (= main.ni_6.controleur.__controleur_2_m main.ni_6.controleur.__controleur_2_c)
            (= main.ni_6.controleur.__controleur_4_m main.ni_6.controleur.__controleur_4_c)
            (= main.ni_6.controleur.ni_10._arrow._first_m main.ni_6.controleur.ni_10._arrow._first_c)
            )
       (controleur_step main.nB1
                        main.nS
                        main.diff1
                        main.avance1
                        main.retard1
                        main.ni_6.controleur.__controleur_2_m
                        main.ni_6.controleur.__controleur_4_m
                        main.ni_6.controleur.ni_10._arrow._first_m
                        main.ni_6.controleur.__controleur_2_x
                        main.ni_6.controleur.__controleur_4_x
                        main.ni_6.controleur.ni_10._arrow._first_x)
       (and (= main.ni_5.controleur.__controleur_2_m main.ni_5.controleur.__controleur_2_c)
            (= main.ni_5.controleur.__controleur_4_m main.ni_5.controleur.__controleur_4_c)
            (= main.ni_5.controleur.ni_10._arrow._first_m main.ni_5.controleur.ni_10._arrow._first_c)
            )
       (controleur_step main.nB0
                        main.nS
                        main.diff0
                        main.avance0
                        main.retard0
                        main.ni_5.controleur.__controleur_2_m
                        main.ni_5.controleur.__controleur_4_m
                        main.ni_5.controleur.ni_10._arrow._first_m
                        main.ni_5.controleur.__controleur_2_x
                        main.ni_5.controleur.__controleur_4_x
                        main.ni_5.controleur.ni_10._arrow._first_x)
       (and (= main.ni_4.hypothese.__hypothese_2_m main.ni_4.hypothese.__hypothese_2_c)
            (= main.ni_4.hypothese.__hypothese_4_m main.ni_4.hypothese.__hypothese_4_c)
            (= main.ni_4.hypothese.__hypothese_7_m main.ni_4.hypothese.__hypothese_7_c)
            (= main.ni_4.hypothese.ni_9._arrow._first_m main.ni_4.hypothese.ni_9._arrow._first_c)
            )
       (hypothese_step main.B1
                       main.S
                       main.avance1
                       main.retard1
                       main.H1
                       main.ni_4.hypothese.__hypothese_2_m
                       main.ni_4.hypothese.__hypothese_4_m
                       main.ni_4.hypothese.__hypothese_7_m
                       main.ni_4.hypothese.ni_9._arrow._first_m
                       main.ni_4.hypothese.__hypothese_2_x
                       main.ni_4.hypothese.__hypothese_4_x
                       main.ni_4.hypothese.__hypothese_7_x
                       main.ni_4.hypothese.ni_9._arrow._first_x)
       (and (= main.ni_3.hypothese.__hypothese_2_m main.ni_3.hypothese.__hypothese_2_c)
            (= main.ni_3.hypothese.__hypothese_4_m main.ni_3.hypothese.__hypothese_4_c)
            (= main.ni_3.hypothese.__hypothese_7_m main.ni_3.hypothese.__hypothese_7_c)
            (= main.ni_3.hypothese.ni_9._arrow._first_m main.ni_3.hypothese.ni_9._arrow._first_c)
            )
       (hypothese_step main.B0
                       main.S
                       main.avance0
                       main.retard0
                       main.H0
                       main.ni_3.hypothese.__hypothese_2_m
                       main.ni_3.hypothese.__hypothese_4_m
                       main.ni_3.hypothese.__hypothese_7_m
                       main.ni_3.hypothese.ni_9._arrow._first_m
                       main.ni_3.hypothese.__hypothese_2_x
                       main.ni_3.hypothese.__hypothese_4_x
                       main.ni_3.hypothese.__hypothese_7_x
                       main.ni_3.hypothese.ni_9._arrow._first_x)
       (= main.ast (and main.H0 main.H1))
       (= main.__main_4_x main.nB0)
       (= main.__main_3_x main.nB1)
       (= main.__main_2_x main.nS)
       )
  (main_step main.B0
             main.B1
             main.S
             main.ast
             main.nB0
             main.nB1
             main.nS
             main.diff0
             main.diff1
             main.avance0
             main.avance1
             main.retard0
             main.retard1
             main.__main_2_c
             main.__main_3_c
             main.__main_4_c
             main.ni_3.hypothese.__hypothese_2_c
             main.ni_3.hypothese.__hypothese_4_c
             main.ni_3.hypothese.__hypothese_7_c
             main.ni_3.hypothese.ni_9._arrow._first_c
             main.ni_4.hypothese.__hypothese_2_c
             main.ni_4.hypothese.__hypothese_4_c
             main.ni_4.hypothese.__hypothese_7_c
             main.ni_4.hypothese.ni_9._arrow._first_c
             main.ni_5.controleur.__controleur_2_c
             main.ni_5.controleur.__controleur_4_c
             main.ni_5.controleur.ni_10._arrow._first_c
             main.ni_6.controleur.__controleur_2_c
             main.ni_6.controleur.__controleur_4_c
             main.ni_6.controleur.ni_10._arrow._first_c
             main.ni_7._arrow._first_c
             main.__main_2_x
             main.__main_3_x
             main.__main_4_x
             main.ni_3.hypothese.__hypothese_2_x
             main.ni_3.hypothese.__hypothese_4_x
             main.ni_3.hypothese.__hypothese_7_x
             main.ni_3.hypothese.ni_9._arrow._first_x
             main.ni_4.hypothese.__hypothese_2_x
             main.ni_4.hypothese.__hypothese_4_x
             main.ni_4.hypothese.__hypothese_7_x
             main.ni_4.hypothese.ni_9._arrow._first_x
             main.ni_5.controleur.__controleur_2_x
             main.ni_5.controleur.__controleur_4_x
             main.ni_5.controleur.ni_10._arrow._first_x
             main.ni_6.controleur.__controleur_2_x
             main.ni_6.controleur.__controleur_4_x
             main.ni_6.controleur.ni_10._arrow._first_x
             main.ni_7._arrow._first_x)
))

; top
(declare-var top.B0 Bool)
(declare-var top.B1 Bool)
(declare-var top.S Bool)
(declare-var top.OK Bool)
(declare-var top.__top_2_c Int)
(declare-var top.__top_3_c Int)
(declare-var top.ni_0._arrow._first_c Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_1.Sofar.ni_8._arrow._first_c Bool)
(declare-var top.ni_2.main.__main_2_c Int)
(declare-var top.ni_2.main.__main_3_c Int)
(declare-var top.ni_2.main.__main_4_c Int)
(declare-var top.ni_2.main.ni_3.hypothese.__hypothese_2_c Bool)
(declare-var top.ni_2.main.ni_3.hypothese.__hypothese_4_c Int)
(declare-var top.ni_2.main.ni_3.hypothese.__hypothese_7_c Bool)
(declare-var top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_c Bool)
(declare-var top.ni_2.main.ni_4.hypothese.__hypothese_2_c Bool)
(declare-var top.ni_2.main.ni_4.hypothese.__hypothese_4_c Int)
(declare-var top.ni_2.main.ni_4.hypothese.__hypothese_7_c Bool)
(declare-var top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_c Bool)
(declare-var top.ni_2.main.ni_5.controleur.__controleur_2_c Bool)
(declare-var top.ni_2.main.ni_5.controleur.__controleur_4_c Bool)
(declare-var top.ni_2.main.ni_5.controleur.ni_10._arrow._first_c Bool)
(declare-var top.ni_2.main.ni_6.controleur.__controleur_2_c Bool)
(declare-var top.ni_2.main.ni_6.controleur.__controleur_4_c Bool)
(declare-var top.ni_2.main.ni_6.controleur.ni_10._arrow._first_c Bool)
(declare-var top.ni_2.main.ni_7._arrow._first_c Bool)
(declare-var top.__top_2_m Int)
(declare-var top.__top_3_m Int)
(declare-var top.ni_0._arrow._first_m Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_1.Sofar.ni_8._arrow._first_m Bool)
(declare-var top.ni_2.main.__main_2_m Int)
(declare-var top.ni_2.main.__main_3_m Int)
(declare-var top.ni_2.main.__main_4_m Int)
(declare-var top.ni_2.main.ni_3.hypothese.__hypothese_2_m Bool)
(declare-var top.ni_2.main.ni_3.hypothese.__hypothese_4_m Int)
(declare-var top.ni_2.main.ni_3.hypothese.__hypothese_7_m Bool)
(declare-var top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_m Bool)
(declare-var top.ni_2.main.ni_4.hypothese.__hypothese_2_m Bool)
(declare-var top.ni_2.main.ni_4.hypothese.__hypothese_4_m Int)
(declare-var top.ni_2.main.ni_4.hypothese.__hypothese_7_m Bool)
(declare-var top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_m Bool)
(declare-var top.ni_2.main.ni_5.controleur.__controleur_2_m Bool)
(declare-var top.ni_2.main.ni_5.controleur.__controleur_4_m Bool)
(declare-var top.ni_2.main.ni_5.controleur.ni_10._arrow._first_m Bool)
(declare-var top.ni_2.main.ni_6.controleur.__controleur_2_m Bool)
(declare-var top.ni_2.main.ni_6.controleur.__controleur_4_m Bool)
(declare-var top.ni_2.main.ni_6.controleur.ni_10._arrow._first_m Bool)
(declare-var top.ni_2.main.ni_7._arrow._first_m Bool)
(declare-var top.__top_2_x Int)
(declare-var top.__top_3_x Int)
(declare-var top.ni_0._arrow._first_x Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_1.Sofar.ni_8._arrow._first_x Bool)
(declare-var top.ni_2.main.__main_2_x Int)
(declare-var top.ni_2.main.__main_3_x Int)
(declare-var top.ni_2.main.__main_4_x Int)
(declare-var top.ni_2.main.ni_3.hypothese.__hypothese_2_x Bool)
(declare-var top.ni_2.main.ni_3.hypothese.__hypothese_4_x Int)
(declare-var top.ni_2.main.ni_3.hypothese.__hypothese_7_x Bool)
(declare-var top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_x Bool)
(declare-var top.ni_2.main.ni_4.hypothese.__hypothese_2_x Bool)
(declare-var top.ni_2.main.ni_4.hypothese.__hypothese_4_x Int)
(declare-var top.ni_2.main.ni_4.hypothese.__hypothese_7_x Bool)
(declare-var top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_x Bool)
(declare-var top.ni_2.main.ni_5.controleur.__controleur_2_x Bool)
(declare-var top.ni_2.main.ni_5.controleur.__controleur_4_x Bool)
(declare-var top.ni_2.main.ni_5.controleur.ni_10._arrow._first_x Bool)
(declare-var top.ni_2.main.ni_6.controleur.__controleur_2_x Bool)
(declare-var top.ni_2.main.ni_6.controleur.__controleur_4_x Bool)
(declare-var top.ni_2.main.ni_6.controleur.ni_10._arrow._first_x Bool)
(declare-var top.ni_2.main.ni_7._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.__top_4 Bool)
(declare-var top.__top_5 Bool)
(declare-var top.ast Bool)
(declare-var top.avance0 Bool)
(declare-var top.avance1 Bool)
(declare-var top.diff0 Int)
(declare-var top.diff1 Int)
(declare-var top.nB0 Int)
(declare-var top.nB1 Int)
(declare-var top.nS Int)
(declare-var top.retard0 Bool)
(declare-var top.retard1 Bool)
(declare-rel top_reset (Int Int Bool Bool Bool Int Int Int Bool Int Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Bool Bool Bool Int Int Int Bool Int Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel top_step (Bool Bool Bool Bool Int Int Bool Bool Bool Int Int Int Bool Int Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Bool Bool Bool Int Int Int Bool Int Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= top.__top_2_m top.__top_2_c)
       (= top.__top_3_m top.__top_3_c)
       (main_reset top.ni_2.main.__main_2_c top.ni_2.main.__main_3_c
                   top.ni_2.main.__main_4_c
                   top.ni_2.main.ni_3.hypothese.__hypothese_2_c
                   top.ni_2.main.ni_3.hypothese.__hypothese_4_c
                   top.ni_2.main.ni_3.hypothese.__hypothese_7_c
                   top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_c
                   top.ni_2.main.ni_4.hypothese.__hypothese_2_c
                   top.ni_2.main.ni_4.hypothese.__hypothese_4_c
                   top.ni_2.main.ni_4.hypothese.__hypothese_7_c
                   top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_c
                   top.ni_2.main.ni_5.controleur.__controleur_2_c
                   top.ni_2.main.ni_5.controleur.__controleur_4_c
                   top.ni_2.main.ni_5.controleur.ni_10._arrow._first_c
                   top.ni_2.main.ni_6.controleur.__controleur_2_c
                   top.ni_2.main.ni_6.controleur.__controleur_4_c
                   top.ni_2.main.ni_6.controleur.ni_10._arrow._first_c
                   top.ni_2.main.ni_7._arrow._first_c
                   top.ni_2.main.__main_2_m top.ni_2.main.__main_3_m
                   top.ni_2.main.__main_4_m
                   top.ni_2.main.ni_3.hypothese.__hypothese_2_m
                   top.ni_2.main.ni_3.hypothese.__hypothese_4_m
                   top.ni_2.main.ni_3.hypothese.__hypothese_7_m
                   top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_m
                   top.ni_2.main.ni_4.hypothese.__hypothese_2_m
                   top.ni_2.main.ni_4.hypothese.__hypothese_4_m
                   top.ni_2.main.ni_4.hypothese.__hypothese_7_m
                   top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_m
                   top.ni_2.main.ni_5.controleur.__controleur_2_m
                   top.ni_2.main.ni_5.controleur.__controleur_4_m
                   top.ni_2.main.ni_5.controleur.ni_10._arrow._first_m
                   top.ni_2.main.ni_6.controleur.__controleur_2_m
                   top.ni_2.main.ni_6.controleur.__controleur_4_m
                   top.ni_2.main.ni_6.controleur.ni_10._arrow._first_m
                   top.ni_2.main.ni_7._arrow._first_m)
       (Sofar_reset top.ni_1.Sofar.__Sofar_2_c
                    top.ni_1.Sofar.ni_8._arrow._first_c
                    top.ni_1.Sofar.__Sofar_2_m
                    top.ni_1.Sofar.ni_8._arrow._first_m)
       (= top.ni_0._arrow._first_m true)
  )
  (top_reset top.__top_2_c
             top.__top_3_c
             top.ni_0._arrow._first_c
             top.ni_1.Sofar.__Sofar_2_c
             top.ni_1.Sofar.ni_8._arrow._first_c
             top.ni_2.main.__main_2_c
             top.ni_2.main.__main_3_c
             top.ni_2.main.__main_4_c
             top.ni_2.main.ni_3.hypothese.__hypothese_2_c
             top.ni_2.main.ni_3.hypothese.__hypothese_4_c
             top.ni_2.main.ni_3.hypothese.__hypothese_7_c
             top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_c
             top.ni_2.main.ni_4.hypothese.__hypothese_2_c
             top.ni_2.main.ni_4.hypothese.__hypothese_4_c
             top.ni_2.main.ni_4.hypothese.__hypothese_7_c
             top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_c
             top.ni_2.main.ni_5.controleur.__controleur_2_c
             top.ni_2.main.ni_5.controleur.__controleur_4_c
             top.ni_2.main.ni_5.controleur.ni_10._arrow._first_c
             top.ni_2.main.ni_6.controleur.__controleur_2_c
             top.ni_2.main.ni_6.controleur.__controleur_4_c
             top.ni_2.main.ni_6.controleur.ni_10._arrow._first_c
             top.ni_2.main.ni_7._arrow._first_c
             top.__top_2_m
             top.__top_3_m
             top.ni_0._arrow._first_m
             top.ni_1.Sofar.__Sofar_2_m
             top.ni_1.Sofar.ni_8._arrow._first_m
             top.ni_2.main.__main_2_m
             top.ni_2.main.__main_3_m
             top.ni_2.main.__main_4_m
             top.ni_2.main.ni_3.hypothese.__hypothese_2_m
             top.ni_2.main.ni_3.hypothese.__hypothese_4_m
             top.ni_2.main.ni_3.hypothese.__hypothese_7_m
             top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_m
             top.ni_2.main.ni_4.hypothese.__hypothese_2_m
             top.ni_2.main.ni_4.hypothese.__hypothese_4_m
             top.ni_2.main.ni_4.hypothese.__hypothese_7_m
             top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_m
             top.ni_2.main.ni_5.controleur.__controleur_2_m
             top.ni_2.main.ni_5.controleur.__controleur_4_m
             top.ni_2.main.ni_5.controleur.ni_10._arrow._first_m
             top.ni_2.main.ni_6.controleur.__controleur_2_m
             top.ni_2.main.ni_6.controleur.__controleur_4_m
             top.ni_2.main.ni_6.controleur.ni_10._arrow._first_m
             top.ni_2.main.ni_7._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_2.main.__main_2_m top.ni_2.main.__main_2_c)
            (= top.ni_2.main.__main_3_m top.ni_2.main.__main_3_c)
            (= top.ni_2.main.__main_4_m top.ni_2.main.__main_4_c)
            (= top.ni_2.main.ni_3.hypothese.__hypothese_2_m top.ni_2.main.ni_3.hypothese.__hypothese_2_c)
            (= top.ni_2.main.ni_3.hypothese.__hypothese_4_m top.ni_2.main.ni_3.hypothese.__hypothese_4_c)
            (= top.ni_2.main.ni_3.hypothese.__hypothese_7_m top.ni_2.main.ni_3.hypothese.__hypothese_7_c)
            (= top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_m top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_c)
            (= top.ni_2.main.ni_4.hypothese.__hypothese_2_m top.ni_2.main.ni_4.hypothese.__hypothese_2_c)
            (= top.ni_2.main.ni_4.hypothese.__hypothese_4_m top.ni_2.main.ni_4.hypothese.__hypothese_4_c)
            (= top.ni_2.main.ni_4.hypothese.__hypothese_7_m top.ni_2.main.ni_4.hypothese.__hypothese_7_c)
            (= top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_m top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_c)
            (= top.ni_2.main.ni_5.controleur.__controleur_2_m top.ni_2.main.ni_5.controleur.__controleur_2_c)
            (= top.ni_2.main.ni_5.controleur.__controleur_4_m top.ni_2.main.ni_5.controleur.__controleur_4_c)
            (= top.ni_2.main.ni_5.controleur.ni_10._arrow._first_m top.ni_2.main.ni_5.controleur.ni_10._arrow._first_c)
            (= top.ni_2.main.ni_6.controleur.__controleur_2_m top.ni_2.main.ni_6.controleur.__controleur_2_c)
            (= top.ni_2.main.ni_6.controleur.__controleur_4_m top.ni_2.main.ni_6.controleur.__controleur_4_c)
            (= top.ni_2.main.ni_6.controleur.ni_10._arrow._first_m top.ni_2.main.ni_6.controleur.ni_10._arrow._first_c)
            (= top.ni_2.main.ni_7._arrow._first_m top.ni_2.main.ni_7._arrow._first_c)
            )
       (main_step top.B0
                  top.B1
                  top.S
                  top.ast
                  top.nB0
                  top.nB1
                  top.nS
                  top.diff0
                  top.diff1
                  top.avance0
                  top.avance1
                  top.retard0
                  top.retard1
                  top.ni_2.main.__main_2_m
                  top.ni_2.main.__main_3_m
                  top.ni_2.main.__main_4_m
                  top.ni_2.main.ni_3.hypothese.__hypothese_2_m
                  top.ni_2.main.ni_3.hypothese.__hypothese_4_m
                  top.ni_2.main.ni_3.hypothese.__hypothese_7_m
                  top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_m
                  top.ni_2.main.ni_4.hypothese.__hypothese_2_m
                  top.ni_2.main.ni_4.hypothese.__hypothese_4_m
                  top.ni_2.main.ni_4.hypothese.__hypothese_7_m
                  top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_m
                  top.ni_2.main.ni_5.controleur.__controleur_2_m
                  top.ni_2.main.ni_5.controleur.__controleur_4_m
                  top.ni_2.main.ni_5.controleur.ni_10._arrow._first_m
                  top.ni_2.main.ni_6.controleur.__controleur_2_m
                  top.ni_2.main.ni_6.controleur.__controleur_4_m
                  top.ni_2.main.ni_6.controleur.ni_10._arrow._first_m
                  top.ni_2.main.ni_7._arrow._first_m
                  top.ni_2.main.__main_2_x
                  top.ni_2.main.__main_3_x
                  top.ni_2.main.__main_4_x
                  top.ni_2.main.ni_3.hypothese.__hypothese_2_x
                  top.ni_2.main.ni_3.hypothese.__hypothese_4_x
                  top.ni_2.main.ni_3.hypothese.__hypothese_7_x
                  top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_x
                  top.ni_2.main.ni_4.hypothese.__hypothese_2_x
                  top.ni_2.main.ni_4.hypothese.__hypothese_4_x
                  top.ni_2.main.ni_4.hypothese.__hypothese_7_x
                  top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_x
                  top.ni_2.main.ni_5.controleur.__controleur_2_x
                  top.ni_2.main.ni_5.controleur.__controleur_4_x
                  top.ni_2.main.ni_5.controleur.ni_10._arrow._first_x
                  top.ni_2.main.ni_6.controleur.__controleur_2_x
                  top.ni_2.main.ni_6.controleur.__controleur_4_x
                  top.ni_2.main.ni_6.controleur.ni_10._arrow._first_x
                  top.ni_2.main.ni_7._arrow._first_x)
       (and (= top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.__Sofar_2_c)
            (= top.ni_1.Sofar.ni_8._arrow._first_m top.ni_1.Sofar.ni_8._arrow._first_c)
            )
       (Sofar_step top.ast
                   top.__top_5
                   top.ni_1.Sofar.__Sofar_2_m
                   top.ni_1.Sofar.ni_8._arrow._first_m
                   top.ni_1.Sofar.__Sofar_2_x
                   top.ni_1.Sofar.ni_8._arrow._first_x)
       (= top.ni_0._arrow._first_m top.ni_0._arrow._first_c)(and (= top.__top_1 (ite top.ni_0._arrow._first_m true false))
                                                                 (= top.ni_0._arrow._first_x false))
       (and (or (not (= top.__top_1 true))
               (= top.__top_4 true))
            (or (not (= top.__top_1 false))
               (= top.__top_4 (<= (- (- top.__top_3_c 1) top.__top_2_c) 30)))
       )
       (= top.__top_3_x top.nB0)
       (= top.__top_2_x top.nB1)
       (= top.OK (=> top.__top_5 top.__top_4))
       )
  (top_step top.B0
            top.B1
            top.S
            top.OK
            top.__top_2_c
            top.__top_3_c
            top.ni_0._arrow._first_c
            top.ni_1.Sofar.__Sofar_2_c
            top.ni_1.Sofar.ni_8._arrow._first_c
            top.ni_2.main.__main_2_c
            top.ni_2.main.__main_3_c
            top.ni_2.main.__main_4_c
            top.ni_2.main.ni_3.hypothese.__hypothese_2_c
            top.ni_2.main.ni_3.hypothese.__hypothese_4_c
            top.ni_2.main.ni_3.hypothese.__hypothese_7_c
            top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_c
            top.ni_2.main.ni_4.hypothese.__hypothese_2_c
            top.ni_2.main.ni_4.hypothese.__hypothese_4_c
            top.ni_2.main.ni_4.hypothese.__hypothese_7_c
            top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_c
            top.ni_2.main.ni_5.controleur.__controleur_2_c
            top.ni_2.main.ni_5.controleur.__controleur_4_c
            top.ni_2.main.ni_5.controleur.ni_10._arrow._first_c
            top.ni_2.main.ni_6.controleur.__controleur_2_c
            top.ni_2.main.ni_6.controleur.__controleur_4_c
            top.ni_2.main.ni_6.controleur.ni_10._arrow._first_c
            top.ni_2.main.ni_7._arrow._first_c
            top.__top_2_x
            top.__top_3_x
            top.ni_0._arrow._first_x
            top.ni_1.Sofar.__Sofar_2_x
            top.ni_1.Sofar.ni_8._arrow._first_x
            top.ni_2.main.__main_2_x
            top.ni_2.main.__main_3_x
            top.ni_2.main.__main_4_x
            top.ni_2.main.ni_3.hypothese.__hypothese_2_x
            top.ni_2.main.ni_3.hypothese.__hypothese_4_x
            top.ni_2.main.ni_3.hypothese.__hypothese_7_x
            top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_x
            top.ni_2.main.ni_4.hypothese.__hypothese_2_x
            top.ni_2.main.ni_4.hypothese.__hypothese_4_x
            top.ni_2.main.ni_4.hypothese.__hypothese_7_x
            top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_x
            top.ni_2.main.ni_5.controleur.__controleur_2_x
            top.ni_2.main.ni_5.controleur.__controleur_4_x
            top.ni_2.main.ni_5.controleur.ni_10._arrow._first_x
            top.ni_2.main.ni_6.controleur.__controleur_2_x
            top.ni_2.main.ni_6.controleur.__controleur_4_x
            top.ni_2.main.ni_6.controleur.ni_10._arrow._first_x
            top.ni_2.main.ni_7._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Int Bool Bool Bool Int Int Int Bool Int Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.__top_2_c top.__top_3_c top.ni_0._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_8._arrow._first_c top.ni_2.main.__main_2_c top.ni_2.main.__main_3_c top.ni_2.main.__main_4_c top.ni_2.main.ni_3.hypothese.__hypothese_2_c top.ni_2.main.ni_3.hypothese.__hypothese_4_c top.ni_2.main.ni_3.hypothese.__hypothese_7_c top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_c top.ni_2.main.ni_4.hypothese.__hypothese_2_c top.ni_2.main.ni_4.hypothese.__hypothese_4_c top.ni_2.main.ni_4.hypothese.__hypothese_7_c top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_c top.ni_2.main.ni_5.controleur.__controleur_2_c top.ni_2.main.ni_5.controleur.__controleur_4_c top.ni_2.main.ni_5.controleur.ni_10._arrow._first_c top.ni_2.main.ni_6.controleur.__controleur_2_c top.ni_2.main.ni_6.controleur.__controleur_4_c top.ni_2.main.ni_6.controleur.ni_10._arrow._first_c top.ni_2.main.ni_7._arrow._first_c top.__top_2_m top.__top_3_m top.ni_0._arrow._first_m top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.ni_8._arrow._first_m top.ni_2.main.__main_2_m top.ni_2.main.__main_3_m top.ni_2.main.__main_4_m top.ni_2.main.ni_3.hypothese.__hypothese_2_m top.ni_2.main.ni_3.hypothese.__hypothese_4_m top.ni_2.main.ni_3.hypothese.__hypothese_7_m top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_m top.ni_2.main.ni_4.hypothese.__hypothese_2_m top.ni_2.main.ni_4.hypothese.__hypothese_4_m top.ni_2.main.ni_4.hypothese.__hypothese_7_m top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_m top.ni_2.main.ni_5.controleur.__controleur_2_m top.ni_2.main.ni_5.controleur.__controleur_4_m top.ni_2.main.ni_5.controleur.ni_10._arrow._first_m top.ni_2.main.ni_6.controleur.__controleur_2_m top.ni_2.main.ni_6.controleur.__controleur_4_m top.ni_2.main.ni_6.controleur.ni_10._arrow._first_m top.ni_2.main.ni_7._arrow._first_m)
       (top_step top.B0 top.B1 top.S top.OK top.__top_2_m top.__top_3_m top.ni_0._arrow._first_m top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.ni_8._arrow._first_m top.ni_2.main.__main_2_m top.ni_2.main.__main_3_m top.ni_2.main.__main_4_m top.ni_2.main.ni_3.hypothese.__hypothese_2_m top.ni_2.main.ni_3.hypothese.__hypothese_4_m top.ni_2.main.ni_3.hypothese.__hypothese_7_m top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_m top.ni_2.main.ni_4.hypothese.__hypothese_2_m top.ni_2.main.ni_4.hypothese.__hypothese_4_m top.ni_2.main.ni_4.hypothese.__hypothese_7_m top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_m top.ni_2.main.ni_5.controleur.__controleur_2_m top.ni_2.main.ni_5.controleur.__controleur_4_m top.ni_2.main.ni_5.controleur.ni_10._arrow._first_m top.ni_2.main.ni_6.controleur.__controleur_2_m top.ni_2.main.ni_6.controleur.__controleur_4_m top.ni_2.main.ni_6.controleur.ni_10._arrow._first_m top.ni_2.main.ni_7._arrow._first_m top.__top_2_x top.__top_3_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_8._arrow._first_x top.ni_2.main.__main_2_x top.ni_2.main.__main_3_x top.ni_2.main.__main_4_x top.ni_2.main.ni_3.hypothese.__hypothese_2_x top.ni_2.main.ni_3.hypothese.__hypothese_4_x top.ni_2.main.ni_3.hypothese.__hypothese_7_x top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_x top.ni_2.main.ni_4.hypothese.__hypothese_2_x top.ni_2.main.ni_4.hypothese.__hypothese_4_x top.ni_2.main.ni_4.hypothese.__hypothese_7_x top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_x top.ni_2.main.ni_5.controleur.__controleur_2_x top.ni_2.main.ni_5.controleur.__controleur_4_x top.ni_2.main.ni_5.controleur.ni_10._arrow._first_x top.ni_2.main.ni_6.controleur.__controleur_2_x top.ni_2.main.ni_6.controleur.__controleur_4_x top.ni_2.main.ni_6.controleur.ni_10._arrow._first_x top.ni_2.main.ni_7._arrow._first_x)
  )
  (MAIN top.__top_2_x top.__top_3_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_8._arrow._first_x top.ni_2.main.__main_2_x top.ni_2.main.__main_3_x top.ni_2.main.__main_4_x top.ni_2.main.ni_3.hypothese.__hypothese_2_x top.ni_2.main.ni_3.hypothese.__hypothese_4_x top.ni_2.main.ni_3.hypothese.__hypothese_7_x top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_x top.ni_2.main.ni_4.hypothese.__hypothese_2_x top.ni_2.main.ni_4.hypothese.__hypothese_4_x top.ni_2.main.ni_4.hypothese.__hypothese_7_x top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_x top.ni_2.main.ni_5.controleur.__controleur_2_x top.ni_2.main.ni_5.controleur.__controleur_4_x top.ni_2.main.ni_5.controleur.ni_10._arrow._first_x top.ni_2.main.ni_6.controleur.__controleur_2_x top.ni_2.main.ni_6.controleur.__controleur_4_x top.ni_2.main.ni_6.controleur.ni_10._arrow._first_x top.ni_2.main.ni_7._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.__top_2_c top.__top_3_c top.ni_0._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_8._arrow._first_c top.ni_2.main.__main_2_c top.ni_2.main.__main_3_c top.ni_2.main.__main_4_c top.ni_2.main.ni_3.hypothese.__hypothese_2_c top.ni_2.main.ni_3.hypothese.__hypothese_4_c top.ni_2.main.ni_3.hypothese.__hypothese_7_c top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_c top.ni_2.main.ni_4.hypothese.__hypothese_2_c top.ni_2.main.ni_4.hypothese.__hypothese_4_c top.ni_2.main.ni_4.hypothese.__hypothese_7_c top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_c top.ni_2.main.ni_5.controleur.__controleur_2_c top.ni_2.main.ni_5.controleur.__controleur_4_c top.ni_2.main.ni_5.controleur.ni_10._arrow._first_c top.ni_2.main.ni_6.controleur.__controleur_2_c top.ni_2.main.ni_6.controleur.__controleur_4_c top.ni_2.main.ni_6.controleur.ni_10._arrow._first_c top.ni_2.main.ni_7._arrow._first_c dummytop.OK)
       (top_step top.B0 top.B1 top.S top.OK top.__top_2_c top.__top_3_c top.ni_0._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_8._arrow._first_c top.ni_2.main.__main_2_c top.ni_2.main.__main_3_c top.ni_2.main.__main_4_c top.ni_2.main.ni_3.hypothese.__hypothese_2_c top.ni_2.main.ni_3.hypothese.__hypothese_4_c top.ni_2.main.ni_3.hypothese.__hypothese_7_c top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_c top.ni_2.main.ni_4.hypothese.__hypothese_2_c top.ni_2.main.ni_4.hypothese.__hypothese_4_c top.ni_2.main.ni_4.hypothese.__hypothese_7_c top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_c top.ni_2.main.ni_5.controleur.__controleur_2_c top.ni_2.main.ni_5.controleur.__controleur_4_c top.ni_2.main.ni_5.controleur.ni_10._arrow._first_c top.ni_2.main.ni_6.controleur.__controleur_2_c top.ni_2.main.ni_6.controleur.__controleur_4_c top.ni_2.main.ni_6.controleur.ni_10._arrow._first_c top.ni_2.main.ni_7._arrow._first_c top.__top_2_x top.__top_3_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_8._arrow._first_x top.ni_2.main.__main_2_x top.ni_2.main.__main_3_x top.ni_2.main.__main_4_x top.ni_2.main.ni_3.hypothese.__hypothese_2_x top.ni_2.main.ni_3.hypothese.__hypothese_4_x top.ni_2.main.ni_3.hypothese.__hypothese_7_x top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_x top.ni_2.main.ni_4.hypothese.__hypothese_2_x top.ni_2.main.ni_4.hypothese.__hypothese_4_x top.ni_2.main.ni_4.hypothese.__hypothese_7_x top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_x top.ni_2.main.ni_5.controleur.__controleur_2_x top.ni_2.main.ni_5.controleur.__controleur_4_x top.ni_2.main.ni_5.controleur.ni_10._arrow._first_x top.ni_2.main.ni_6.controleur.__controleur_2_x top.ni_2.main.ni_6.controleur.__controleur_4_x top.ni_2.main.ni_6.controleur.ni_10._arrow._first_x top.ni_2.main.ni_7._arrow._first_x)
  )
  (MAIN top.__top_2_x top.__top_3_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_8._arrow._first_x top.ni_2.main.__main_2_x top.ni_2.main.__main_3_x top.ni_2.main.__main_4_x top.ni_2.main.ni_3.hypothese.__hypothese_2_x top.ni_2.main.ni_3.hypothese.__hypothese_4_x top.ni_2.main.ni_3.hypothese.__hypothese_7_x top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_x top.ni_2.main.ni_4.hypothese.__hypothese_2_x top.ni_2.main.ni_4.hypothese.__hypothese_4_x top.ni_2.main.ni_4.hypothese.__hypothese_7_x top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_x top.ni_2.main.ni_5.controleur.__controleur_2_x top.ni_2.main.ni_5.controleur.__controleur_4_x top.ni_2.main.ni_5.controleur.ni_10._arrow._first_x top.ni_2.main.ni_6.controleur.__controleur_2_x top.ni_2.main.ni_6.controleur.__controleur_4_x top.ni_2.main.ni_6.controleur.ni_10._arrow._first_x top.ni_2.main.ni_7._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.__top_2_x top.__top_3_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_8._arrow._first_x top.ni_2.main.__main_2_x top.ni_2.main.__main_3_x top.ni_2.main.__main_4_x top.ni_2.main.ni_3.hypothese.__hypothese_2_x top.ni_2.main.ni_3.hypothese.__hypothese_4_x top.ni_2.main.ni_3.hypothese.__hypothese_7_x top.ni_2.main.ni_3.hypothese.ni_9._arrow._first_x top.ni_2.main.ni_4.hypothese.__hypothese_2_x top.ni_2.main.ni_4.hypothese.__hypothese_4_x top.ni_2.main.ni_4.hypothese.__hypothese_7_x top.ni_2.main.ni_4.hypothese.ni_9._arrow._first_x top.ni_2.main.ni_5.controleur.__controleur_2_x top.ni_2.main.ni_5.controleur.__controleur_4_x top.ni_2.main.ni_5.controleur.ni_10._arrow._first_x top.ni_2.main.ni_6.controleur.__controleur_2_x top.ni_2.main.ni_6.controleur.__controleur_4_x top.ni_2.main.ni_6.controleur.ni_10._arrow._first_x top.ni_2.main.ni_7._arrow._first_x top.OK))
  ERR))
(query ERR)
