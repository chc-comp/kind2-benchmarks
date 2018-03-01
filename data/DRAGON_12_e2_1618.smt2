; Statically linked libraries
; DRAGON
(declare-var DRAGON.e01 Bool)
(declare-var DRAGON.e02 Bool)
(declare-var DRAGON.e03 Bool)
(declare-var DRAGON.e04 Bool)
(declare-var DRAGON.e05 Bool)
(declare-var DRAGON.e06 Bool)
(declare-var DRAGON.e07 Bool)
(declare-var DRAGON.e08 Bool)
(declare-var DRAGON.e09 Bool)
(declare-var DRAGON.e10 Bool)
(declare-var DRAGON.e11 Bool)
(declare-var DRAGON.e12 Bool)
(declare-var DRAGON.init_invalid Int)
(declare-var DRAGON.exclusive Int)
(declare-var DRAGON.shared Int)
(declare-var DRAGON.shared_dirty Int)
(declare-var DRAGON.dirty Int)
(declare-var DRAGON.invalid Int)
(declare-var DRAGON.erreur Bool)
(declare-var DRAGON.__DRAGON_2_c Int)
(declare-var DRAGON.__DRAGON_3_c Int)
(declare-var DRAGON.__DRAGON_4_c Int)
(declare-var DRAGON.__DRAGON_5_c Int)
(declare-var DRAGON.__DRAGON_6_c Int)
(declare-var DRAGON.__DRAGON_8_c Int)
(declare-var DRAGON.ni_5._arrow._first_c Bool)
(declare-var DRAGON.__DRAGON_2_m Int)
(declare-var DRAGON.__DRAGON_3_m Int)
(declare-var DRAGON.__DRAGON_4_m Int)
(declare-var DRAGON.__DRAGON_5_m Int)
(declare-var DRAGON.__DRAGON_6_m Int)
(declare-var DRAGON.__DRAGON_8_m Int)
(declare-var DRAGON.ni_5._arrow._first_m Bool)
(declare-var DRAGON.__DRAGON_2_x Int)
(declare-var DRAGON.__DRAGON_3_x Int)
(declare-var DRAGON.__DRAGON_4_x Int)
(declare-var DRAGON.__DRAGON_5_x Int)
(declare-var DRAGON.__DRAGON_6_x Int)
(declare-var DRAGON.__DRAGON_8_x Int)
(declare-var DRAGON.ni_5._arrow._first_x Bool)
(declare-var DRAGON.__DRAGON_1 Bool)
(declare-var DRAGON.g01 Bool)
(declare-var DRAGON.g02 Bool)
(declare-var DRAGON.g03 Bool)
(declare-var DRAGON.g04 Bool)
(declare-var DRAGON.g05 Bool)
(declare-var DRAGON.g06 Bool)
(declare-var DRAGON.g07 Bool)
(declare-var DRAGON.g08 Bool)
(declare-var DRAGON.g09 Bool)
(declare-var DRAGON.g10 Bool)
(declare-var DRAGON.g11 Bool)
(declare-var DRAGON.g12 Bool)
(declare-var DRAGON.mem_init Int)
(declare-rel DRAGON_reset (Int Int Int Int Int Int Bool Int Int Int Int Int Int Bool))
(declare-rel DRAGON_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Bool Int Int Int Int Int Int Bool Int Int Int Int Int Int Bool))

(rule (=> 
  (and 
       (= DRAGON.__DRAGON_2_m DRAGON.__DRAGON_2_c)
       (= DRAGON.__DRAGON_3_m DRAGON.__DRAGON_3_c)
       (= DRAGON.__DRAGON_4_m DRAGON.__DRAGON_4_c)
       (= DRAGON.__DRAGON_5_m DRAGON.__DRAGON_5_c)
       (= DRAGON.__DRAGON_6_m DRAGON.__DRAGON_6_c)
       (= DRAGON.__DRAGON_8_m DRAGON.__DRAGON_8_c)
       (= DRAGON.ni_5._arrow._first_m true)
  )
  (DRAGON_reset DRAGON.__DRAGON_2_c
                DRAGON.__DRAGON_3_c
                DRAGON.__DRAGON_4_c
                DRAGON.__DRAGON_5_c
                DRAGON.__DRAGON_6_c
                DRAGON.__DRAGON_8_c
                DRAGON.ni_5._arrow._first_c
                DRAGON.__DRAGON_2_m
                DRAGON.__DRAGON_3_m
                DRAGON.__DRAGON_4_m
                DRAGON.__DRAGON_5_m
                DRAGON.__DRAGON_6_m
                DRAGON.__DRAGON_8_m
                DRAGON.ni_5._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= DRAGON.g11 (>= DRAGON.__DRAGON_4_c 1))
       (= DRAGON.g08 (and (>= DRAGON.__DRAGON_2_c 1) (>= (+ (+ (+ DRAGON.__DRAGON_3_c DRAGON.__DRAGON_6_c) DRAGON.__DRAGON_5_c) DRAGON.__DRAGON_4_c) 1)))
       (= DRAGON.g06 (>= (+ DRAGON.__DRAGON_4_c DRAGON.__DRAGON_6_c) 2))
       (= DRAGON.g04 (and (= DRAGON.__DRAGON_4_c 1) (= DRAGON.__DRAGON_6_c 0)))
       (= DRAGON.g02 (and (>= DRAGON.__DRAGON_2_c 1) (>= (+ (+ (+ (- DRAGON.__DRAGON_3_c 1) DRAGON.__DRAGON_6_c) DRAGON.__DRAGON_5_c) DRAGON.__DRAGON_4_c) 1)))
       (= DRAGON.ni_5._arrow._first_m DRAGON.ni_5._arrow._first_c)(and (= DRAGON.__DRAGON_1 (ite DRAGON.ni_5._arrow._first_m true false))
                                                                    (= DRAGON.ni_5._arrow._first_x false))
       (and (or (not (= DRAGON.__DRAGON_1 true))
               (= DRAGON.shared_dirty 0))
            (or (not (= DRAGON.__DRAGON_1 false))
               (and (or (not (= DRAGON.e02 true))
                       (and (or (not (= DRAGON.g02 true))
                               (= DRAGON.shared_dirty (+ DRAGON.__DRAGON_4_c DRAGON.__DRAGON_3_c)))
                            (or (not (= DRAGON.g02 false))
                               (= DRAGON.shared_dirty DRAGON.__DRAGON_4_c))
                       ))
                    (or (not (= DRAGON.e02 false))
                       (and (or (not (= DRAGON.e04 true))
                               (and (or (not (= DRAGON.g04 true))
                                       (= DRAGON.shared_dirty 0))
                                    (or (not (= DRAGON.g04 false))
                                       (= DRAGON.shared_dirty DRAGON.__DRAGON_4_c))
                               ))
                            (or (not (= DRAGON.e04 false))
                               (and (or (not (= DRAGON.e06 true))
                                       (and (or (not (= DRAGON.g06 true))
                                               (= DRAGON.shared_dirty 1))
                                            (or (not (= DRAGON.g06 false))
                                               (= DRAGON.shared_dirty DRAGON.__DRAGON_4_c))
                                       ))
                                    (or (not (= DRAGON.e06 false))
                                       (and (or (not (= DRAGON.e08 true))
                                               (and (or (not (= DRAGON.g08 true))
                                                       (= DRAGON.shared_dirty 1))
                                                    (or (not (= DRAGON.g08 false))
                                                       (= DRAGON.shared_dirty DRAGON.__DRAGON_4_c))
                                               ))
                                            (or (not (= DRAGON.e08 false))
                                               (and (or (not (= DRAGON.e11 true))
                                                       (and (or (not (= DRAGON.g11 true))
                                                               (= DRAGON.shared_dirty (- DRAGON.__DRAGON_4_c 1)))
                                                            (or (not (= DRAGON.g11 false))
                                                               (= DRAGON.shared_dirty DRAGON.__DRAGON_4_c))
                                                       ))
                                                    (or (not (= DRAGON.e11 false))
                                                       (= DRAGON.shared_dirty DRAGON.__DRAGON_4_c))
                                               ))
                                       ))
                               ))
                       ))
               ))
       )
       (= DRAGON.g10 (>= DRAGON.__DRAGON_6_c 1))
       (= DRAGON.g05 (and (= DRAGON.__DRAGON_4_c 0) (= DRAGON.__DRAGON_6_c 1)))
       (and (or (not (= DRAGON.__DRAGON_1 false))
               (and (and (or (not (= DRAGON.e02 true))
                            (and (or (not (= DRAGON.g02 true))
                                    (= DRAGON.shared (+ (+ DRAGON.__DRAGON_6_c DRAGON.__DRAGON_5_c) 1)))
                                 (or (not (= DRAGON.g02 false))
                                    (= DRAGON.shared DRAGON.__DRAGON_6_c))
                            ))
                         (or (not (= DRAGON.e02 false))
                            (and (or (not (= DRAGON.e05 true))
                                    (and (or (not (= DRAGON.g05 true))
                                            (= DRAGON.shared 0))
                                         (or (not (= DRAGON.g05 false))
                                            (= DRAGON.shared DRAGON.__DRAGON_6_c))
                                    ))
                                 (or (not (= DRAGON.e05 false))
                                    (and (or (not (= DRAGON.e06 true))
                                            (and (or (not (= DRAGON.g06 true))
                                                    (= DRAGON.shared (- (+ DRAGON.__DRAGON_6_c DRAGON.__DRAGON_4_c) 1)))
                                                 (or (not (= DRAGON.g06 false))
                                                    (= DRAGON.shared DRAGON.__DRAGON_6_c))
                                            ))
                                         (or (not (= DRAGON.e06 false))
                                            (and (or (not (= DRAGON.e08 true))
                                                    (and (or (not (= DRAGON.g08 true))
                                                            (= DRAGON.shared (+ (+ (+ DRAGON.__DRAGON_6_c DRAGON.__DRAGON_5_c) DRAGON.__DRAGON_4_c) DRAGON.__DRAGON_3_c)))
                                                         (or (not (= DRAGON.g08 false))
                                                            (= DRAGON.shared DRAGON.__DRAGON_6_c))
                                                    ))
                                                 (or (not (= DRAGON.e08 false))
                                                    (and (or (not (= DRAGON.e10 true))
                                                            (and (or (not (= DRAGON.g10 true))
                                                                    (= DRAGON.shared (- DRAGON.__DRAGON_6_c 1)))
                                                                 (or (not (= DRAGON.g10 false))
                                                                    (= DRAGON.shared DRAGON.__DRAGON_6_c))
                                                            ))
                                                         (or (not (= DRAGON.e10 false))
                                                            (= DRAGON.shared DRAGON.__DRAGON_6_c))
                                                    ))
                                            ))
                                    ))
                            ))
                    )
                    (= DRAGON.mem_init DRAGON.__DRAGON_8_c)
                    ))
            (or (not (= DRAGON.__DRAGON_1 true))
               (and (= DRAGON.shared 0)
                    (= DRAGON.mem_init DRAGON.init_invalid)
                    ))
       )
       (= DRAGON.g12 (>= DRAGON.__DRAGON_5_c 1))
       (= DRAGON.g09 (>= DRAGON.__DRAGON_3_c 1))
       (= DRAGON.g07 (and (and (and (and (>= DRAGON.__DRAGON_2_c 1) (= DRAGON.__DRAGON_3_c 0)) (= DRAGON.__DRAGON_6_c 0)) (= DRAGON.__DRAGON_5_c 0)) (= DRAGON.__DRAGON_4_c 0)))
       (= DRAGON.g01 (and (and (and (and (>= DRAGON.__DRAGON_2_c 1) (= DRAGON.__DRAGON_3_c 0)) (= DRAGON.__DRAGON_6_c 0)) (= DRAGON.__DRAGON_5_c 0)) (= DRAGON.__DRAGON_4_c 0)))
       (and (or (not (= DRAGON.__DRAGON_1 true))
               (= DRAGON.invalid DRAGON.mem_init))
            (or (not (= DRAGON.__DRAGON_1 false))
               (and (or (not (= DRAGON.e01 true))
                       (and (or (not (= DRAGON.g01 true))
                               (= DRAGON.invalid (- DRAGON.__DRAGON_2_c 1)))
                            (or (not (= DRAGON.g01 false))
                               (= DRAGON.invalid DRAGON.__DRAGON_2_c))
                       ))
                    (or (not (= DRAGON.e01 false))
                       (and (or (not (= DRAGON.e02 true))
                               (and (or (not (= DRAGON.g02 true))
                                       (= DRAGON.invalid (- DRAGON.__DRAGON_2_c 1)))
                                    (or (not (= DRAGON.g02 false))
                                       (= DRAGON.invalid DRAGON.__DRAGON_2_c))
                               ))
                            (or (not (= DRAGON.e02 false))
                               (and (or (not (= DRAGON.e07 true))
                                       (and (or (not (= DRAGON.g07 true))
                                               (= DRAGON.invalid (- DRAGON.__DRAGON_2_c 1)))
                                            (or (not (= DRAGON.g07 false))
                                               (= DRAGON.invalid DRAGON.__DRAGON_2_c))
                                       ))
                                    (or (not (= DRAGON.e07 false))
                                       (and (or (not (= DRAGON.e08 true))
                                               (and (or (not (= DRAGON.g08 true))
                                                       (= DRAGON.invalid (- DRAGON.__DRAGON_2_c 1)))
                                                    (or (not (= DRAGON.g08 false))
                                                       (= DRAGON.invalid DRAGON.__DRAGON_2_c))
                                               ))
                                            (or (not (= DRAGON.e08 false))
                                               (and (or (not (= DRAGON.e09 true))
                                                       (and (or (not (= DRAGON.g09 true))
                                                               (= DRAGON.invalid (+ DRAGON.__DRAGON_2_c 1)))
                                                            (or (not (= DRAGON.g09 false))
                                                               (= DRAGON.invalid DRAGON.__DRAGON_2_c))
                                                       ))
                                                    (or (not (= DRAGON.e09 false))
                                                       (and (or (not (= DRAGON.e10 true))
                                                               (and (or (not (= DRAGON.g10 true))
                                                                    (= DRAGON.invalid (+ DRAGON.__DRAGON_2_c 1)))
                                                                    (or (not (= DRAGON.g10 false))
                                                                    (= DRAGON.invalid DRAGON.__DRAGON_2_c))
                                                               ))
                                                            (or (not (= DRAGON.e10 false))
                                                               (and (or (not (= DRAGON.e11 true))
                                                                    (and 
                                                                    (or (not (= DRAGON.g11 true))
                                                                    (= DRAGON.invalid (+ DRAGON.__DRAGON_2_c 1)))
                                                                    (or (not (= DRAGON.g11 false))
                                                                    (= DRAGON.invalid DRAGON.__DRAGON_2_c))
                                                                    ))
                                                                    (or (not (= DRAGON.e11 false))
                                                                    (and 
                                                                    (or (not (= DRAGON.e12 true))
                                                                    (and 
                                                                    (or (not (= DRAGON.g12 true))
                                                                    (= DRAGON.invalid (+ DRAGON.__DRAGON_2_c 1)))
                                                                    (or (not (= DRAGON.g12 false))
                                                                    (= DRAGON.invalid DRAGON.__DRAGON_2_c))
                                                                    ))
                                                                    (or (not (= DRAGON.e12 false))
                                                                    (= DRAGON.invalid DRAGON.__DRAGON_2_c))
                                                                    ))
                                                               ))
                                                       ))
                                               ))
                                       ))
                               ))
                       ))
               ))
       )
       (= DRAGON.g03 (>= DRAGON.__DRAGON_5_c 1))
       (and (or (not (= DRAGON.__DRAGON_1 true))
               (= DRAGON.exclusive 0))
            (or (not (= DRAGON.__DRAGON_1 false))
               (and (or (not (= DRAGON.e01 true))
                       (and (or (not (= DRAGON.g01 true))
                               (= DRAGON.exclusive (+ DRAGON.__DRAGON_5_c 1)))
                            (or (not (= DRAGON.g01 false))
                               (= DRAGON.exclusive DRAGON.__DRAGON_5_c))
                       ))
                    (or (not (= DRAGON.e01 false))
                       (and (or (not (= DRAGON.e02 true))
                               (and (or (not (= DRAGON.g02 true))
                                       (= DRAGON.exclusive 0))
                                    (or (not (= DRAGON.g02 false))
                                       (= DRAGON.exclusive DRAGON.__DRAGON_5_c))
                               ))
                            (or (not (= DRAGON.e02 false))
                               (and (or (not (= DRAGON.e03 true))
                                       (and (or (not (= DRAGON.g03 true))
                                               (= DRAGON.exclusive (- DRAGON.__DRAGON_5_c 1)))
                                            (or (not (= DRAGON.g03 false))
                                               (= DRAGON.exclusive DRAGON.__DRAGON_5_c))
                                       ))
                                    (or (not (= DRAGON.e03 false))
                                       (and (or (not (= DRAGON.e08 true))
                                               (and (or (not (= DRAGON.g08 true))
                                                       (= DRAGON.exclusive 0))
                                                    (or (not (= DRAGON.g08 false))
                                                       (= DRAGON.exclusive DRAGON.__DRAGON_5_c))
                                               ))
                                            (or (not (= DRAGON.e08 false))
                                               (and (or (not (= DRAGON.e12 true))
                                                       (and (or (not (= DRAGON.g12 true))
                                                               (= DRAGON.exclusive (- DRAGON.__DRAGON_5_c 1)))
                                                            (or (not (= DRAGON.g12 false))
                                                               (= DRAGON.exclusive DRAGON.__DRAGON_5_c))
                                                       ))
                                                    (or (not (= DRAGON.e12 false))
                                                       (= DRAGON.exclusive DRAGON.__DRAGON_5_c))
                                               ))
                                       ))
                               ))
                       ))
               ))
       )
       (and (or (not (= (>= DRAGON.exclusive 2) true))
               (= DRAGON.erreur true))
            (or (not (= (>= DRAGON.exclusive 2) false))
               (= DRAGON.erreur false))
       )
       (and (or (not (= DRAGON.__DRAGON_1 true))
               (= DRAGON.dirty 0))
            (or (not (= DRAGON.__DRAGON_1 false))
               (and (or (not (= DRAGON.e02 true))
                       (and (or (not (= DRAGON.g02 true))
                               (= DRAGON.dirty 0))
                            (or (not (= DRAGON.g02 false))
                               (= DRAGON.dirty DRAGON.__DRAGON_3_c))
                       ))
                    (or (not (= DRAGON.e02 false))
                       (and (or (not (= DRAGON.e03 true))
                               (and (or (not (= DRAGON.g03 true))
                                       (= DRAGON.dirty (+ DRAGON.__DRAGON_3_c 1)))
                                    (or (not (= DRAGON.g03 false))
                                       (= DRAGON.dirty DRAGON.__DRAGON_3_c))
                               ))
                            (or (not (= DRAGON.e03 false))
                               (and (or (not (= DRAGON.e04 true))
                                       (and (or (not (= DRAGON.g04 true))
                                               (= DRAGON.dirty (+ DRAGON.__DRAGON_3_c 1)))
                                            (or (not (= DRAGON.g04 false))
                                               (= DRAGON.dirty DRAGON.__DRAGON_3_c))
                                       ))
                                    (or (not (= DRAGON.e04 false))
                                       (and (or (not (= DRAGON.e05 true))
                                               (and (or (not (= DRAGON.g05 true))
                                                       (= DRAGON.dirty (+ DRAGON.__DRAGON_3_c 1)))
                                                    (or (not (= DRAGON.g05 false))
                                                       (= DRAGON.dirty DRAGON.__DRAGON_3_c))
                                               ))
                                            (or (not (= DRAGON.e05 false))
                                               (and (or (not (= DRAGON.e07 true))
                                                       (and (or (not (= DRAGON.g07 true))
                                                               (= DRAGON.dirty (+ DRAGON.__DRAGON_3_c 1)))
                                                            (or (not (= DRAGON.g07 false))
                                                               (= DRAGON.dirty DRAGON.__DRAGON_3_c))
                                                       ))
                                                    (or (not (= DRAGON.e07 false))
                                                       (and (or (not (= DRAGON.e08 true))
                                                               (and (or (not (= DRAGON.g08 true))
                                                                    (= DRAGON.dirty 0))
                                                                    (or (not (= DRAGON.g08 false))
                                                                    (= DRAGON.dirty DRAGON.__DRAGON_3_c))
                                                               ))
                                                            (or (not (= DRAGON.e08 false))
                                                               (and (or (not (= DRAGON.e09 true))
                                                                    (and 
                                                                    (or (not (= DRAGON.g09 true))
                                                                    (= DRAGON.dirty (- DRAGON.__DRAGON_3_c 1)))
                                                                    (or (not (= DRAGON.g09 false))
                                                                    (= DRAGON.dirty DRAGON.__DRAGON_3_c))
                                                                    ))
                                                                    (or (not (= DRAGON.e09 false))
                                                                    (= DRAGON.dirty DRAGON.__DRAGON_3_c))
                                                               ))
                                                       ))
                                               ))
                                       ))
                               ))
                       ))
               ))
       )
       (= DRAGON.__DRAGON_8_x DRAGON.mem_init)
       (= DRAGON.__DRAGON_6_x DRAGON.shared)
       (= DRAGON.__DRAGON_5_x DRAGON.exclusive)
       (= DRAGON.__DRAGON_4_x DRAGON.shared_dirty)
       (= DRAGON.__DRAGON_3_x DRAGON.dirty)
       (= DRAGON.__DRAGON_2_x DRAGON.invalid)
       )
  (DRAGON_step DRAGON.e01
               DRAGON.e02
               DRAGON.e03
               DRAGON.e04
               DRAGON.e05
               DRAGON.e06
               DRAGON.e07
               DRAGON.e08
               DRAGON.e09
               DRAGON.e10
               DRAGON.e11
               DRAGON.e12
               DRAGON.init_invalid
               DRAGON.exclusive
               DRAGON.shared
               DRAGON.shared_dirty
               DRAGON.dirty
               DRAGON.invalid
               DRAGON.erreur
               DRAGON.__DRAGON_2_c
               DRAGON.__DRAGON_3_c
               DRAGON.__DRAGON_4_c
               DRAGON.__DRAGON_5_c
               DRAGON.__DRAGON_6_c
               DRAGON.__DRAGON_8_c
               DRAGON.ni_5._arrow._first_c
               DRAGON.__DRAGON_2_x
               DRAGON.__DRAGON_3_x
               DRAGON.__DRAGON_4_x
               DRAGON.__DRAGON_5_x
               DRAGON.__DRAGON_6_x
               DRAGON.__DRAGON_8_x
               DRAGON.ni_5._arrow._first_x)
))

; First
(declare-var First.X Int)
(declare-var First.First Int)
(declare-var First.__First_2_c Int)
(declare-var First.ni_4._arrow._first_c Bool)
(declare-var First.__First_2_m Int)
(declare-var First.ni_4._arrow._first_m Bool)
(declare-var First.__First_2_x Int)
(declare-var First.ni_4._arrow._first_x Bool)
(declare-var First.__First_1 Bool)
(declare-rel First_reset (Int Bool Int Bool))
(declare-rel First_step (Int Int Int Bool Int Bool))

(rule (=> 
  (and 
       (= First.__First_2_m First.__First_2_c)
       (= First.ni_4._arrow._first_m true)
  )
  (First_reset First.__First_2_c
               First.ni_4._arrow._first_c
               First.__First_2_m
               First.ni_4._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= First.ni_4._arrow._first_m First.ni_4._arrow._first_c)(and (= First.__First_1 (ite First.ni_4._arrow._first_m true false))
                                                                    (= First.ni_4._arrow._first_x false))
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
              First.ni_4._arrow._first_c
              First.__First_2_x
              First.ni_4._arrow._first_x)
))

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
(declare-var top.init_invalid Int)
(declare-var top.OK Bool)
(declare-var top.ni_0.First.__First_2_c Int)
(declare-var top.ni_0.First.ni_4._arrow._first_c Bool)
(declare-var top.ni_1.DRAGON.__DRAGON_2_c Int)
(declare-var top.ni_1.DRAGON.__DRAGON_3_c Int)
(declare-var top.ni_1.DRAGON.__DRAGON_4_c Int)
(declare-var top.ni_1.DRAGON.__DRAGON_5_c Int)
(declare-var top.ni_1.DRAGON.__DRAGON_6_c Int)
(declare-var top.ni_1.DRAGON.__DRAGON_8_c Int)
(declare-var top.ni_1.DRAGON.ni_5._arrow._first_c Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_2.Sofar.ni_3._arrow._first_c Bool)
(declare-var top.ni_0.First.__First_2_m Int)
(declare-var top.ni_0.First.ni_4._arrow._first_m Bool)
(declare-var top.ni_1.DRAGON.__DRAGON_2_m Int)
(declare-var top.ni_1.DRAGON.__DRAGON_3_m Int)
(declare-var top.ni_1.DRAGON.__DRAGON_4_m Int)
(declare-var top.ni_1.DRAGON.__DRAGON_5_m Int)
(declare-var top.ni_1.DRAGON.__DRAGON_6_m Int)
(declare-var top.ni_1.DRAGON.__DRAGON_8_m Int)
(declare-var top.ni_1.DRAGON.ni_5._arrow._first_m Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_2.Sofar.ni_3._arrow._first_m Bool)
(declare-var top.ni_0.First.__First_2_x Int)
(declare-var top.ni_0.First.ni_4._arrow._first_x Bool)
(declare-var top.ni_1.DRAGON.__DRAGON_2_x Int)
(declare-var top.ni_1.DRAGON.__DRAGON_3_x Int)
(declare-var top.ni_1.DRAGON.__DRAGON_4_x Int)
(declare-var top.ni_1.DRAGON.__DRAGON_5_x Int)
(declare-var top.ni_1.DRAGON.__DRAGON_6_x Int)
(declare-var top.ni_1.DRAGON.__DRAGON_8_x Int)
(declare-var top.ni_1.DRAGON.ni_5._arrow._first_x Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_2.Sofar.ni_3._arrow._first_x Bool)
(declare-var top.__top_1 Int)
(declare-var top.__top_2 Bool)
(declare-var top.dirty Int)
(declare-var top.env Bool)
(declare-var top.erreur Bool)
(declare-var top.exclusive Int)
(declare-var top.invalid Int)
(declare-var top.shared Int)
(declare-var top.shared_dirty Int)
(declare-rel top_reset (Int Bool Int Int Int Int Int Int Bool Bool Bool Int Bool Int Int Int Int Int Int Bool Bool Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Bool Int Bool Int Int Int Int Int Int Bool Bool Bool Int Bool Int Int Int Int Int Int Bool Bool Bool))

(rule (=> 
  (and 
       
       (Sofar_reset top.ni_2.Sofar.__Sofar_2_c
                    top.ni_2.Sofar.ni_3._arrow._first_c
                    top.ni_2.Sofar.__Sofar_2_m
                    top.ni_2.Sofar.ni_3._arrow._first_m)
       (DRAGON_reset top.ni_1.DRAGON.__DRAGON_2_c
                     top.ni_1.DRAGON.__DRAGON_3_c
                     top.ni_1.DRAGON.__DRAGON_4_c
                     top.ni_1.DRAGON.__DRAGON_5_c
                     top.ni_1.DRAGON.__DRAGON_6_c
                     top.ni_1.DRAGON.__DRAGON_8_c
                     top.ni_1.DRAGON.ni_5._arrow._first_c
                     top.ni_1.DRAGON.__DRAGON_2_m
                     top.ni_1.DRAGON.__DRAGON_3_m
                     top.ni_1.DRAGON.__DRAGON_4_m
                     top.ni_1.DRAGON.__DRAGON_5_m
                     top.ni_1.DRAGON.__DRAGON_6_m
                     top.ni_1.DRAGON.__DRAGON_8_m
                     top.ni_1.DRAGON.ni_5._arrow._first_m)
       (First_reset top.ni_0.First.__First_2_c
                    top.ni_0.First.ni_4._arrow._first_c
                    top.ni_0.First.__First_2_m
                    top.ni_0.First.ni_4._arrow._first_m)
  )
  (top_reset top.ni_0.First.__First_2_c
             top.ni_0.First.ni_4._arrow._first_c
             top.ni_1.DRAGON.__DRAGON_2_c
             top.ni_1.DRAGON.__DRAGON_3_c
             top.ni_1.DRAGON.__DRAGON_4_c
             top.ni_1.DRAGON.__DRAGON_5_c
             top.ni_1.DRAGON.__DRAGON_6_c
             top.ni_1.DRAGON.__DRAGON_8_c
             top.ni_1.DRAGON.ni_5._arrow._first_c
             top.ni_2.Sofar.__Sofar_2_c
             top.ni_2.Sofar.ni_3._arrow._first_c
             top.ni_0.First.__First_2_m
             top.ni_0.First.ni_4._arrow._first_m
             top.ni_1.DRAGON.__DRAGON_2_m
             top.ni_1.DRAGON.__DRAGON_3_m
             top.ni_1.DRAGON.__DRAGON_4_m
             top.ni_1.DRAGON.__DRAGON_5_m
             top.ni_1.DRAGON.__DRAGON_6_m
             top.ni_1.DRAGON.__DRAGON_8_m
             top.ni_1.DRAGON.ni_5._arrow._first_m
             top.ni_2.Sofar.__Sofar_2_m
             top.ni_2.Sofar.ni_3._arrow._first_m)
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
                       top.__top_2)
       (and (= top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.__Sofar_2_c)
            (= top.ni_2.Sofar.ni_3._arrow._first_m top.ni_2.Sofar.ni_3._arrow._first_c)
            )
       (Sofar_step (and top.__top_2 (> top.init_invalid 0))
                   top.env
                   top.ni_2.Sofar.__Sofar_2_m
                   top.ni_2.Sofar.ni_3._arrow._first_m
                   top.ni_2.Sofar.__Sofar_2_x
                   top.ni_2.Sofar.ni_3._arrow._first_x)
       (and (= top.ni_1.DRAGON.__DRAGON_2_m top.ni_1.DRAGON.__DRAGON_2_c)
            (= top.ni_1.DRAGON.__DRAGON_3_m top.ni_1.DRAGON.__DRAGON_3_c)
            (= top.ni_1.DRAGON.__DRAGON_4_m top.ni_1.DRAGON.__DRAGON_4_c)
            (= top.ni_1.DRAGON.__DRAGON_5_m top.ni_1.DRAGON.__DRAGON_5_c)
            (= top.ni_1.DRAGON.__DRAGON_6_m top.ni_1.DRAGON.__DRAGON_6_c)
            (= top.ni_1.DRAGON.__DRAGON_8_m top.ni_1.DRAGON.__DRAGON_8_c)
            (= top.ni_1.DRAGON.ni_5._arrow._first_m top.ni_1.DRAGON.ni_5._arrow._first_c)
            )
       (DRAGON_step top.e01
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
                    top.init_invalid
                    top.exclusive
                    top.shared
                    top.shared_dirty
                    top.dirty
                    top.invalid
                    top.erreur
                    top.ni_1.DRAGON.__DRAGON_2_m
                    top.ni_1.DRAGON.__DRAGON_3_m
                    top.ni_1.DRAGON.__DRAGON_4_m
                    top.ni_1.DRAGON.__DRAGON_5_m
                    top.ni_1.DRAGON.__DRAGON_6_m
                    top.ni_1.DRAGON.__DRAGON_8_m
                    top.ni_1.DRAGON.ni_5._arrow._first_m
                    top.ni_1.DRAGON.__DRAGON_2_x
                    top.ni_1.DRAGON.__DRAGON_3_x
                    top.ni_1.DRAGON.__DRAGON_4_x
                    top.ni_1.DRAGON.__DRAGON_5_x
                    top.ni_1.DRAGON.__DRAGON_6_x
                    top.ni_1.DRAGON.__DRAGON_8_x
                    top.ni_1.DRAGON.ni_5._arrow._first_x)
       (and (= top.ni_0.First.__First_2_m top.ni_0.First.__First_2_c)
            (= top.ni_0.First.ni_4._arrow._first_m top.ni_0.First.ni_4._arrow._first_c)
            )
       (First_step top.init_invalid
                   top.__top_1
                   top.ni_0.First.__First_2_m
                   top.ni_0.First.ni_4._arrow._first_m
                   top.ni_0.First.__First_2_x
                   top.ni_0.First.ni_4._arrow._first_x)
       (= top.OK (=> top.env (<= top.shared_dirty top.__top_1)))
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
            top.init_invalid
            top.OK
            top.ni_0.First.__First_2_c
            top.ni_0.First.ni_4._arrow._first_c
            top.ni_1.DRAGON.__DRAGON_2_c
            top.ni_1.DRAGON.__DRAGON_3_c
            top.ni_1.DRAGON.__DRAGON_4_c
            top.ni_1.DRAGON.__DRAGON_5_c
            top.ni_1.DRAGON.__DRAGON_6_c
            top.ni_1.DRAGON.__DRAGON_8_c
            top.ni_1.DRAGON.ni_5._arrow._first_c
            top.ni_2.Sofar.__Sofar_2_c
            top.ni_2.Sofar.ni_3._arrow._first_c
            top.ni_0.First.__First_2_x
            top.ni_0.First.ni_4._arrow._first_x
            top.ni_1.DRAGON.__DRAGON_2_x
            top.ni_1.DRAGON.__DRAGON_3_x
            top.ni_1.DRAGON.__DRAGON_4_x
            top.ni_1.DRAGON.__DRAGON_5_x
            top.ni_1.DRAGON.__DRAGON_6_x
            top.ni_1.DRAGON.__DRAGON_8_x
            top.ni_1.DRAGON.ni_5._arrow._first_x
            top.ni_2.Sofar.__Sofar_2_x
            top.ni_2.Sofar.ni_3._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Bool Int Int Int Int Int Int Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.First.__First_2_c top.ni_0.First.ni_4._arrow._first_c top.ni_1.DRAGON.__DRAGON_2_c top.ni_1.DRAGON.__DRAGON_3_c top.ni_1.DRAGON.__DRAGON_4_c top.ni_1.DRAGON.__DRAGON_5_c top.ni_1.DRAGON.__DRAGON_6_c top.ni_1.DRAGON.__DRAGON_8_c top.ni_1.DRAGON.ni_5._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_3._arrow._first_c top.ni_0.First.__First_2_m top.ni_0.First.ni_4._arrow._first_m top.ni_1.DRAGON.__DRAGON_2_m top.ni_1.DRAGON.__DRAGON_3_m top.ni_1.DRAGON.__DRAGON_4_m top.ni_1.DRAGON.__DRAGON_5_m top.ni_1.DRAGON.__DRAGON_6_m top.ni_1.DRAGON.__DRAGON_8_m top.ni_1.DRAGON.ni_5._arrow._first_m top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.ni_3._arrow._first_m)
       (top_step top.e01 top.e02 top.e03 top.e04 top.e05 top.e06 top.e07 top.e08 top.e09 top.e10 top.e11 top.e12 top.init_invalid top.OK top.ni_0.First.__First_2_m top.ni_0.First.ni_4._arrow._first_m top.ni_1.DRAGON.__DRAGON_2_m top.ni_1.DRAGON.__DRAGON_3_m top.ni_1.DRAGON.__DRAGON_4_m top.ni_1.DRAGON.__DRAGON_5_m top.ni_1.DRAGON.__DRAGON_6_m top.ni_1.DRAGON.__DRAGON_8_m top.ni_1.DRAGON.ni_5._arrow._first_m top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.ni_3._arrow._first_m top.ni_0.First.__First_2_x top.ni_0.First.ni_4._arrow._first_x top.ni_1.DRAGON.__DRAGON_2_x top.ni_1.DRAGON.__DRAGON_3_x top.ni_1.DRAGON.__DRAGON_4_x top.ni_1.DRAGON.__DRAGON_5_x top.ni_1.DRAGON.__DRAGON_6_x top.ni_1.DRAGON.__DRAGON_8_x top.ni_1.DRAGON.ni_5._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_3._arrow._first_x)
  )
  (MAIN top.ni_0.First.__First_2_x top.ni_0.First.ni_4._arrow._first_x top.ni_1.DRAGON.__DRAGON_2_x top.ni_1.DRAGON.__DRAGON_3_x top.ni_1.DRAGON.__DRAGON_4_x top.ni_1.DRAGON.__DRAGON_5_x top.ni_1.DRAGON.__DRAGON_6_x top.ni_1.DRAGON.__DRAGON_8_x top.ni_1.DRAGON.ni_5._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_3._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.First.__First_2_c top.ni_0.First.ni_4._arrow._first_c top.ni_1.DRAGON.__DRAGON_2_c top.ni_1.DRAGON.__DRAGON_3_c top.ni_1.DRAGON.__DRAGON_4_c top.ni_1.DRAGON.__DRAGON_5_c top.ni_1.DRAGON.__DRAGON_6_c top.ni_1.DRAGON.__DRAGON_8_c top.ni_1.DRAGON.ni_5._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_3._arrow._first_c dummytop.OK)
       (top_step top.e01 top.e02 top.e03 top.e04 top.e05 top.e06 top.e07 top.e08 top.e09 top.e10 top.e11 top.e12 top.init_invalid top.OK top.ni_0.First.__First_2_c top.ni_0.First.ni_4._arrow._first_c top.ni_1.DRAGON.__DRAGON_2_c top.ni_1.DRAGON.__DRAGON_3_c top.ni_1.DRAGON.__DRAGON_4_c top.ni_1.DRAGON.__DRAGON_5_c top.ni_1.DRAGON.__DRAGON_6_c top.ni_1.DRAGON.__DRAGON_8_c top.ni_1.DRAGON.ni_5._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_3._arrow._first_c top.ni_0.First.__First_2_x top.ni_0.First.ni_4._arrow._first_x top.ni_1.DRAGON.__DRAGON_2_x top.ni_1.DRAGON.__DRAGON_3_x top.ni_1.DRAGON.__DRAGON_4_x top.ni_1.DRAGON.__DRAGON_5_x top.ni_1.DRAGON.__DRAGON_6_x top.ni_1.DRAGON.__DRAGON_8_x top.ni_1.DRAGON.ni_5._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_3._arrow._first_x)
  )
  (MAIN top.ni_0.First.__First_2_x top.ni_0.First.ni_4._arrow._first_x top.ni_1.DRAGON.__DRAGON_2_x top.ni_1.DRAGON.__DRAGON_3_x top.ni_1.DRAGON.__DRAGON_4_x top.ni_1.DRAGON.__DRAGON_5_x top.ni_1.DRAGON.__DRAGON_6_x top.ni_1.DRAGON.__DRAGON_8_x top.ni_1.DRAGON.ni_5._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_3._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.First.__First_2_x top.ni_0.First.ni_4._arrow._first_x top.ni_1.DRAGON.__DRAGON_2_x top.ni_1.DRAGON.__DRAGON_3_x top.ni_1.DRAGON.__DRAGON_4_x top.ni_1.DRAGON.__DRAGON_5_x top.ni_1.DRAGON.__DRAGON_6_x top.ni_1.DRAGON.__DRAGON_8_x top.ni_1.DRAGON.ni_5._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_3._arrow._first_x top.OK))
  ERR))
(query ERR)
