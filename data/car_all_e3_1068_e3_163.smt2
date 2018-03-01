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

; excludes2
(declare-var excludes2.X1 Bool)
(declare-var excludes2.X2 Bool)
(declare-var excludes2.excludes Bool)
(declare-rel excludes2_fun (Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (= excludes2.excludes (not (and excludes2.X1 excludes2.X2)))
  (excludes2_fun excludes2.X1 excludes2.X2 excludes2.excludes)
))

; voiture
(declare-var voiture.m Bool)
(declare-var voiture.s Bool)
(declare-var voiture.toofast Bool)
(declare-var voiture.stop Bool)
(declare-var voiture.bump Bool)
(declare-var voiture.dist Int)
(declare-var voiture.speed Int)
(declare-var voiture.time Int)
(declare-var voiture.move Bool)
(declare-var voiture.second Bool)
(declare-var voiture.meter Bool)
(declare-var voiture.__voiture_2_c Int)
(declare-var voiture.__voiture_5_c Int)
(declare-var voiture.__voiture_6_c Int)
(declare-var voiture.__voiture_7_c Bool)
(declare-var voiture.ni_2._arrow._first_c Bool)
(declare-var voiture.__voiture_2_m Int)
(declare-var voiture.__voiture_5_m Int)
(declare-var voiture.__voiture_6_m Int)
(declare-var voiture.__voiture_7_m Bool)
(declare-var voiture.ni_2._arrow._first_m Bool)
(declare-var voiture.__voiture_2_x Int)
(declare-var voiture.__voiture_5_x Int)
(declare-var voiture.__voiture_6_x Int)
(declare-var voiture.__voiture_7_x Bool)
(declare-var voiture.ni_2._arrow._first_x Bool)
(declare-var voiture.__voiture_1 Bool)
(declare-var voiture.__voiture_4 Bool)
(declare-rel voiture_reset (Int Int Int Bool Bool Int Int Int Bool Bool))
(declare-rel voiture_step (Bool Bool Bool Bool Bool Int Int Int Bool Bool Bool Int Int Int Bool Bool Int Int Int Bool Bool))

(rule (=> 
  (and 
       (= voiture.__voiture_2_m voiture.__voiture_2_c)
       (= voiture.__voiture_5_m voiture.__voiture_5_c)
       (= voiture.__voiture_6_m voiture.__voiture_6_c)
       (= voiture.__voiture_7_m voiture.__voiture_7_c)
       (= voiture.ni_2._arrow._first_m true)
  )
  (voiture_reset voiture.__voiture_2_c
                 voiture.__voiture_5_c
                 voiture.__voiture_6_c
                 voiture.__voiture_7_c
                 voiture.ni_2._arrow._first_c
                 voiture.__voiture_2_m
                 voiture.__voiture_5_m
                 voiture.__voiture_6_m
                 voiture.__voiture_7_m
                 voiture.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= voiture.ni_2._arrow._first_m voiture.ni_2._arrow._first_c)(and (= voiture.__voiture_1 (ite voiture.ni_2._arrow._first_m true false))
                                                                    (= voiture.ni_2._arrow._first_x false))
       (and (or (not (= voiture.__voiture_1 false))
               (and (= voiture.second voiture.s)
                    (= voiture.move voiture.__voiture_7_c)
                    (= voiture.meter (and voiture.m (not voiture.s)))
                    ))
            (or (not (= voiture.__voiture_1 true))
               (and (= voiture.second false)
                    (= voiture.move true)
                    (= voiture.meter false)
                    ))
       )
       (= voiture.__voiture_4 (and voiture.move voiture.meter))
       (and (or (not (= voiture.__voiture_1 true))
               (= voiture.speed 0))
            (or (not (= voiture.__voiture_1 false))
               (and (or (not (= (or (not voiture.move) voiture.second) true))
                       (= voiture.speed 0))
                    (or (not (= (or (not voiture.move) voiture.second) false))
                       (and (or (not (= voiture.__voiture_4 true))
                               (= voiture.speed (- voiture.__voiture_5_c 1)))
                            (or (not (= voiture.__voiture_4 false))
                               (= voiture.speed voiture.__voiture_5_c))
                       ))
               ))
       )
       (= voiture.toofast (>= voiture.speed 3))
       (and (or (not (= voiture.__voiture_1 true))
               (= voiture.time 0))
            (or (not (= voiture.__voiture_1 false))
               (and (or (not (= voiture.second true))
                       (= voiture.time (- voiture.__voiture_2_c 1)))
                    (or (not (= voiture.second false))
                       (= voiture.time voiture.__voiture_2_c))
               ))
       )
       (= voiture.stop (>= voiture.time 4))
       (and (or (not (= voiture.__voiture_1 true))
               (= voiture.dist 0))
            (or (not (= voiture.__voiture_1 false))
               (and (or (not (= voiture.__voiture_4 true))
                       (= voiture.dist (+ voiture.__voiture_6_c 1)))
                    (or (not (= voiture.__voiture_4 false))
                       (= voiture.dist voiture.__voiture_6_c))
               ))
       )
       (= voiture.bump (= voiture.dist 10))
       (= voiture.__voiture_7_x (and (and (and voiture.move (not voiture.stop)) (not voiture.toofast)) (not voiture.bump)))
       (= voiture.__voiture_6_x voiture.dist)
       (= voiture.__voiture_5_x voiture.speed)
       (= voiture.__voiture_2_x voiture.time)
       )
  (voiture_step voiture.m
                voiture.s
                voiture.toofast
                voiture.stop
                voiture.bump
                voiture.dist
                voiture.speed
                voiture.time
                voiture.move
                voiture.second
                voiture.meter
                voiture.__voiture_2_c
                voiture.__voiture_5_c
                voiture.__voiture_6_c
                voiture.__voiture_7_c
                voiture.ni_2._arrow._first_c
                voiture.__voiture_2_x
                voiture.__voiture_5_x
                voiture.__voiture_6_x
                voiture.__voiture_7_x
                voiture.ni_2._arrow._first_x)
))

; top
(declare-var top.m Bool)
(declare-var top.s Bool)
(declare-var top.OK Bool)
(declare-var top.ni_0.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_0.Sofar.ni_3._arrow._first_c Bool)
(declare-var top.ni_1.voiture.__voiture_2_c Int)
(declare-var top.ni_1.voiture.__voiture_5_c Int)
(declare-var top.ni_1.voiture.__voiture_6_c Int)
(declare-var top.ni_1.voiture.__voiture_7_c Bool)
(declare-var top.ni_1.voiture.ni_2._arrow._first_c Bool)
(declare-var top.ni_0.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_0.Sofar.ni_3._arrow._first_m Bool)
(declare-var top.ni_1.voiture.__voiture_2_m Int)
(declare-var top.ni_1.voiture.__voiture_5_m Int)
(declare-var top.ni_1.voiture.__voiture_6_m Int)
(declare-var top.ni_1.voiture.__voiture_7_m Bool)
(declare-var top.ni_1.voiture.ni_2._arrow._first_m Bool)
(declare-var top.ni_0.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_0.Sofar.ni_3._arrow._first_x Bool)
(declare-var top.ni_1.voiture.__voiture_2_x Int)
(declare-var top.ni_1.voiture.__voiture_5_x Int)
(declare-var top.ni_1.voiture.__voiture_6_x Int)
(declare-var top.ni_1.voiture.__voiture_7_x Bool)
(declare-var top.ni_1.voiture.ni_2._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.bump Bool)
(declare-var top.dist Int)
(declare-var top.env Bool)
(declare-var top.meter Bool)
(declare-var top.move Bool)
(declare-var top.second Bool)
(declare-var top.speed Int)
(declare-var top.stop Bool)
(declare-var top.time Int)
(declare-var top.toofast Bool)
(declare-rel top_reset (Bool Bool Int Int Int Bool Bool Bool Bool Int Int Int Bool Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Int Int Int Bool Bool Bool Bool Int Int Int Bool Bool))

(rule (=> 
  (and 
       
       (voiture_reset top.ni_1.voiture.__voiture_2_c
                      top.ni_1.voiture.__voiture_5_c
                      top.ni_1.voiture.__voiture_6_c
                      top.ni_1.voiture.__voiture_7_c
                      top.ni_1.voiture.ni_2._arrow._first_c
                      top.ni_1.voiture.__voiture_2_m
                      top.ni_1.voiture.__voiture_5_m
                      top.ni_1.voiture.__voiture_6_m
                      top.ni_1.voiture.__voiture_7_m
                      top.ni_1.voiture.ni_2._arrow._first_m)
       (Sofar_reset top.ni_0.Sofar.__Sofar_2_c
                    top.ni_0.Sofar.ni_3._arrow._first_c
                    top.ni_0.Sofar.__Sofar_2_m
                    top.ni_0.Sofar.ni_3._arrow._first_m)
  )
  (top_reset top.ni_0.Sofar.__Sofar_2_c
             top.ni_0.Sofar.ni_3._arrow._first_c
             top.ni_1.voiture.__voiture_2_c
             top.ni_1.voiture.__voiture_5_c
             top.ni_1.voiture.__voiture_6_c
             top.ni_1.voiture.__voiture_7_c
             top.ni_1.voiture.ni_2._arrow._first_c
             top.ni_0.Sofar.__Sofar_2_m
             top.ni_0.Sofar.ni_3._arrow._first_m
             top.ni_1.voiture.__voiture_2_m
             top.ni_1.voiture.__voiture_5_m
             top.ni_1.voiture.__voiture_6_m
             top.ni_1.voiture.__voiture_7_m
             top.ni_1.voiture.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_1.voiture.__voiture_2_m top.ni_1.voiture.__voiture_2_c)
            (= top.ni_1.voiture.__voiture_5_m top.ni_1.voiture.__voiture_5_c)
            (= top.ni_1.voiture.__voiture_6_m top.ni_1.voiture.__voiture_6_c)
            (= top.ni_1.voiture.__voiture_7_m top.ni_1.voiture.__voiture_7_c)
            (= top.ni_1.voiture.ni_2._arrow._first_m top.ni_1.voiture.ni_2._arrow._first_c)
            )
       (voiture_step top.m
                     top.s
                     top.toofast
                     top.stop
                     top.bump
                     top.dist
                     top.speed
                     top.time
                     top.move
                     top.second
                     top.meter
                     top.ni_1.voiture.__voiture_2_m
                     top.ni_1.voiture.__voiture_5_m
                     top.ni_1.voiture.__voiture_6_m
                     top.ni_1.voiture.__voiture_7_m
                     top.ni_1.voiture.ni_2._arrow._first_m
                     top.ni_1.voiture.__voiture_2_x
                     top.ni_1.voiture.__voiture_5_x
                     top.ni_1.voiture.__voiture_6_x
                     top.ni_1.voiture.__voiture_7_x
                     top.ni_1.voiture.ni_2._arrow._first_x)
       (excludes2_fun top.m
                      top.s
                      top.__top_1)
       (and (= top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.__Sofar_2_c)
            (= top.ni_0.Sofar.ni_3._arrow._first_m top.ni_0.Sofar.ni_3._arrow._first_c)
            )
       (Sofar_step (and top.__top_1 (< top.dist 32767))
                   top.env
                   top.ni_0.Sofar.__Sofar_2_m
                   top.ni_0.Sofar.ni_3._arrow._first_m
                   top.ni_0.Sofar.__Sofar_2_x
                   top.ni_0.Sofar.ni_3._arrow._first_x)
       (= top.OK (=> top.env (and (and (and (>= top.dist 0) (< top.dist 11)) (< top.speed 4)) (>= top.speed 0))))
       )
  (top_step top.m
            top.s
            top.OK
            top.ni_0.Sofar.__Sofar_2_c
            top.ni_0.Sofar.ni_3._arrow._first_c
            top.ni_1.voiture.__voiture_2_c
            top.ni_1.voiture.__voiture_5_c
            top.ni_1.voiture.__voiture_6_c
            top.ni_1.voiture.__voiture_7_c
            top.ni_1.voiture.ni_2._arrow._first_c
            top.ni_0.Sofar.__Sofar_2_x
            top.ni_0.Sofar.ni_3._arrow._first_x
            top.ni_1.voiture.__voiture_2_x
            top.ni_1.voiture.__voiture_5_x
            top.ni_1.voiture.__voiture_6_x
            top.ni_1.voiture.__voiture_7_x
            top.ni_1.voiture.ni_2._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Bool Int Int Int Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_3._arrow._first_c top.ni_1.voiture.__voiture_2_c top.ni_1.voiture.__voiture_5_c top.ni_1.voiture.__voiture_6_c top.ni_1.voiture.__voiture_7_c top.ni_1.voiture.ni_2._arrow._first_c top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.ni_3._arrow._first_m top.ni_1.voiture.__voiture_2_m top.ni_1.voiture.__voiture_5_m top.ni_1.voiture.__voiture_6_m top.ni_1.voiture.__voiture_7_m top.ni_1.voiture.ni_2._arrow._first_m)
       (top_step top.m top.s top.OK top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.ni_3._arrow._first_m top.ni_1.voiture.__voiture_2_m top.ni_1.voiture.__voiture_5_m top.ni_1.voiture.__voiture_6_m top.ni_1.voiture.__voiture_7_m top.ni_1.voiture.ni_2._arrow._first_m top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.voiture.__voiture_2_x top.ni_1.voiture.__voiture_5_x top.ni_1.voiture.__voiture_6_x top.ni_1.voiture.__voiture_7_x top.ni_1.voiture.ni_2._arrow._first_x)
  )
  (MAIN top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.voiture.__voiture_2_x top.ni_1.voiture.__voiture_5_x top.ni_1.voiture.__voiture_6_x top.ni_1.voiture.__voiture_7_x top.ni_1.voiture.ni_2._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_3._arrow._first_c top.ni_1.voiture.__voiture_2_c top.ni_1.voiture.__voiture_5_c top.ni_1.voiture.__voiture_6_c top.ni_1.voiture.__voiture_7_c top.ni_1.voiture.ni_2._arrow._first_c dummytop.OK)
       (top_step top.m top.s top.OK top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_3._arrow._first_c top.ni_1.voiture.__voiture_2_c top.ni_1.voiture.__voiture_5_c top.ni_1.voiture.__voiture_6_c top.ni_1.voiture.__voiture_7_c top.ni_1.voiture.ni_2._arrow._first_c top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.voiture.__voiture_2_x top.ni_1.voiture.__voiture_5_x top.ni_1.voiture.__voiture_6_x top.ni_1.voiture.__voiture_7_x top.ni_1.voiture.ni_2._arrow._first_x)
  )
  (MAIN top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.voiture.__voiture_2_x top.ni_1.voiture.__voiture_5_x top.ni_1.voiture.__voiture_6_x top.ni_1.voiture.__voiture_7_x top.ni_1.voiture.ni_2._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_3._arrow._first_x top.ni_1.voiture.__voiture_2_x top.ni_1.voiture.__voiture_5_x top.ni_1.voiture.__voiture_6_x top.ni_1.voiture.__voiture_7_x top.ni_1.voiture.ni_2._arrow._first_x top.OK))
  ERR))
(query ERR)
