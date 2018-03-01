; Statically linked libraries
; Age
(declare-var Age.p Bool)
(declare-var Age.age_of_p Int)
(declare-var Age.__Age_2_c Bool)
(declare-var Age.__Age_3_c Int)
(declare-var Age.ni_5._arrow._first_c Bool)
(declare-var Age.__Age_2_m Bool)
(declare-var Age.__Age_3_m Int)
(declare-var Age.ni_5._arrow._first_m Bool)
(declare-var Age.__Age_2_x Bool)
(declare-var Age.__Age_3_x Int)
(declare-var Age.ni_5._arrow._first_x Bool)
(declare-var Age.__Age_1 Bool)
(declare-rel Age_reset (Bool Int Bool Bool Int Bool))
(declare-rel Age_step (Bool Int Bool Int Bool Bool Int Bool))

(rule (=> 
  (and 
       (= Age.__Age_2_m Age.__Age_2_c)
       (= Age.__Age_3_m Age.__Age_3_c)
       (= Age.ni_5._arrow._first_m true)
  )
  (Age_reset Age.__Age_2_c
             Age.__Age_3_c
             Age.ni_5._arrow._first_c
             Age.__Age_2_m
             Age.__Age_3_m
             Age.ni_5._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Age.ni_5._arrow._first_m Age.ni_5._arrow._first_c)(and (= Age.__Age_1 (ite Age.ni_5._arrow._first_m true false))
                                                                 (= Age.ni_5._arrow._first_x false))
       (and (or (not (= Age.__Age_1 true))
               (= Age.age_of_p 0))
            (or (not (= Age.__Age_1 false))
               (and (or (not (= Age.__Age_2_c true))
                       (= Age.age_of_p (+ (- Age.__Age_3_c 1) 1)))
                    (or (not (= Age.__Age_2_c false))
                       (= Age.age_of_p 0))
               ))
       )
       (= Age.__Age_3_x Age.age_of_p)
       (= Age.__Age_2_x Age.p)
       )
  (Age_step Age.p
            Age.age_of_p
            Age.__Age_2_c
            Age.__Age_3_c
            Age.ni_5._arrow._first_c
            Age.__Age_2_x
            Age.__Age_3_x
            Age.ni_5._arrow._first_x)
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

; top
(declare-var top.k0 Int)
(declare-var top.m0 Int)
(declare-var top.p Bool)
(declare-var top.q Bool)
(declare-var top.OK Bool)
(declare-var top.__top_4_c Int)
(declare-var top.__top_5_c Int)
(declare-var top.ni_0.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_0.Sofar.ni_4._arrow._first_c Bool)
(declare-var top.ni_1.Age.__Age_2_c Bool)
(declare-var top.ni_1.Age.__Age_3_c Int)
(declare-var top.ni_1.Age.ni_5._arrow._first_c Bool)
(declare-var top.ni_2.Age.__Age_2_c Bool)
(declare-var top.ni_2.Age.__Age_3_c Int)
(declare-var top.ni_2.Age.ni_5._arrow._first_c Bool)
(declare-var top.ni_3._arrow._first_c Bool)
(declare-var top.__top_4_m Int)
(declare-var top.__top_5_m Int)
(declare-var top.ni_0.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_0.Sofar.ni_4._arrow._first_m Bool)
(declare-var top.ni_1.Age.__Age_2_m Bool)
(declare-var top.ni_1.Age.__Age_3_m Int)
(declare-var top.ni_1.Age.ni_5._arrow._first_m Bool)
(declare-var top.ni_2.Age.__Age_2_m Bool)
(declare-var top.ni_2.Age.__Age_3_m Int)
(declare-var top.ni_2.Age.ni_5._arrow._first_m Bool)
(declare-var top.ni_3._arrow._first_m Bool)
(declare-var top.__top_4_x Int)
(declare-var top.__top_5_x Int)
(declare-var top.ni_0.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_0.Sofar.ni_4._arrow._first_x Bool)
(declare-var top.ni_1.Age.__Age_2_x Bool)
(declare-var top.ni_1.Age.__Age_3_x Int)
(declare-var top.ni_1.Age.ni_5._arrow._first_x Bool)
(declare-var top.ni_2.Age.__Age_2_x Bool)
(declare-var top.ni_2.Age.__Age_3_x Int)
(declare-var top.ni_2.Age.ni_5._arrow._first_x Bool)
(declare-var top.ni_3._arrow._first_x Bool)
(declare-var top.__top_1 Int)
(declare-var top.__top_2 Int)
(declare-var top.__top_3 Bool)
(declare-var top.env Bool)
(declare-var top.k Int)
(declare-var top.m Int)
(declare-rel top_reset (Int Int Bool Bool Bool Int Bool Bool Int Bool Bool Int Int Bool Bool Bool Int Bool Bool Int Bool Bool))
(declare-rel top_step (Int Int Bool Bool Bool Int Int Bool Bool Bool Int Bool Bool Int Bool Bool Int Int Bool Bool Bool Int Bool Bool Int Bool Bool))

(rule (=> 
  (and 
       (= top.__top_4_m top.__top_4_c)
       (= top.__top_5_m top.__top_5_c)
       (= top.ni_3._arrow._first_m true)
       (Age_reset top.ni_2.Age.__Age_2_c top.ni_2.Age.__Age_3_c
                  top.ni_2.Age.ni_5._arrow._first_c top.ni_2.Age.__Age_2_m
                  top.ni_2.Age.__Age_3_m top.ni_2.Age.ni_5._arrow._first_m)
       (Age_reset top.ni_1.Age.__Age_2_c top.ni_1.Age.__Age_3_c
                  top.ni_1.Age.ni_5._arrow._first_c top.ni_1.Age.__Age_2_m
                  top.ni_1.Age.__Age_3_m top.ni_1.Age.ni_5._arrow._first_m)
       (Sofar_reset top.ni_0.Sofar.__Sofar_2_c
                    top.ni_0.Sofar.ni_4._arrow._first_c
                    top.ni_0.Sofar.__Sofar_2_m
                    top.ni_0.Sofar.ni_4._arrow._first_m)
  )
  (top_reset top.__top_4_c
             top.__top_5_c
             top.ni_0.Sofar.__Sofar_2_c
             top.ni_0.Sofar.ni_4._arrow._first_c
             top.ni_1.Age.__Age_2_c
             top.ni_1.Age.__Age_3_c
             top.ni_1.Age.ni_5._arrow._first_c
             top.ni_2.Age.__Age_2_c
             top.ni_2.Age.__Age_3_c
             top.ni_2.Age.ni_5._arrow._first_c
             top.ni_3._arrow._first_c
             top.__top_4_m
             top.__top_5_m
             top.ni_0.Sofar.__Sofar_2_m
             top.ni_0.Sofar.ni_4._arrow._first_m
             top.ni_1.Age.__Age_2_m
             top.ni_1.Age.__Age_3_m
             top.ni_1.Age.ni_5._arrow._first_m
             top.ni_2.Age.__Age_2_m
             top.ni_2.Age.__Age_3_m
             top.ni_2.Age.ni_5._arrow._first_m
             top.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= top.ni_3._arrow._first_m top.ni_3._arrow._first_c)(and (= top.__top_3 (ite top.ni_3._arrow._first_m true false))
                                                                 (= top.ni_3._arrow._first_x false))
       (and (or (not (= top.__top_3 false))
               (and (= top.m top.__top_4_c)
                    (= top.k top.__top_5_c)
                    ))
            (or (not (= top.__top_3 true))
               (and (= top.m top.m0)
                    (= top.k top.k0)
                    ))
       )
       (and (= top.ni_2.Age.__Age_2_m top.ni_2.Age.__Age_2_c)
            (= top.ni_2.Age.__Age_3_m top.ni_2.Age.__Age_3_c)
            (= top.ni_2.Age.ni_5._arrow._first_m top.ni_2.Age.ni_5._arrow._first_c)
            )
       (Age_step top.q
                 top.__top_2
                 top.ni_2.Age.__Age_2_m
                 top.ni_2.Age.__Age_3_m
                 top.ni_2.Age.ni_5._arrow._first_m
                 top.ni_2.Age.__Age_2_x
                 top.ni_2.Age.__Age_3_x
                 top.ni_2.Age.ni_5._arrow._first_x)
       (and (= top.ni_1.Age.__Age_2_m top.ni_1.Age.__Age_2_c)
            (= top.ni_1.Age.__Age_3_m top.ni_1.Age.__Age_3_c)
            (= top.ni_1.Age.ni_5._arrow._first_m top.ni_1.Age.ni_5._arrow._first_c)
            )
       (Age_step top.p
                 top.__top_1
                 top.ni_1.Age.__Age_2_m
                 top.ni_1.Age.__Age_3_m
                 top.ni_1.Age.ni_5._arrow._first_m
                 top.ni_1.Age.__Age_2_x
                 top.ni_1.Age.__Age_3_x
                 top.ni_1.Age.ni_5._arrow._first_x)
       (and (= top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.__Sofar_2_c)
            (= top.ni_0.Sofar.ni_4._arrow._first_m top.ni_0.Sofar.ni_4._arrow._first_c)
            )
       (Sofar_step (and (and (and (>= top.k 1) (>= top.m 1)) (=> (>= top.__top_1 top.k) top.q)) (<= top.__top_2 top.m))
                   top.env
                   top.ni_0.Sofar.__Sofar_2_m
                   top.ni_0.Sofar.ni_4._arrow._first_m
                   top.ni_0.Sofar.__Sofar_2_x
                   top.ni_0.Sofar.ni_4._arrow._first_x)
       (= top.__top_5_x top.k)
       (= top.__top_4_x top.m)
       (= top.OK (=> top.env (<= top.__top_1 (+ top.k top.m))))
       )
  (top_step top.k0
            top.m0
            top.p
            top.q
            top.OK
            top.__top_4_c
            top.__top_5_c
            top.ni_0.Sofar.__Sofar_2_c
            top.ni_0.Sofar.ni_4._arrow._first_c
            top.ni_1.Age.__Age_2_c
            top.ni_1.Age.__Age_3_c
            top.ni_1.Age.ni_5._arrow._first_c
            top.ni_2.Age.__Age_2_c
            top.ni_2.Age.__Age_3_c
            top.ni_2.Age.ni_5._arrow._first_c
            top.ni_3._arrow._first_c
            top.__top_4_x
            top.__top_5_x
            top.ni_0.Sofar.__Sofar_2_x
            top.ni_0.Sofar.ni_4._arrow._first_x
            top.ni_1.Age.__Age_2_x
            top.ni_1.Age.__Age_3_x
            top.ni_1.Age.ni_5._arrow._first_x
            top.ni_2.Age.__Age_2_x
            top.ni_2.Age.__Age_3_x
            top.ni_2.Age.ni_5._arrow._first_x
            top.ni_3._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Int Bool Bool Bool Int Bool Bool Int Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.__top_4_c top.__top_5_c top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_4._arrow._first_c top.ni_1.Age.__Age_2_c top.ni_1.Age.__Age_3_c top.ni_1.Age.ni_5._arrow._first_c top.ni_2.Age.__Age_2_c top.ni_2.Age.__Age_3_c top.ni_2.Age.ni_5._arrow._first_c top.ni_3._arrow._first_c top.__top_4_m top.__top_5_m top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.ni_4._arrow._first_m top.ni_1.Age.__Age_2_m top.ni_1.Age.__Age_3_m top.ni_1.Age.ni_5._arrow._first_m top.ni_2.Age.__Age_2_m top.ni_2.Age.__Age_3_m top.ni_2.Age.ni_5._arrow._first_m top.ni_3._arrow._first_m)
       (top_step top.k0 top.m0 top.p top.q top.OK top.__top_4_m top.__top_5_m top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.ni_4._arrow._first_m top.ni_1.Age.__Age_2_m top.ni_1.Age.__Age_3_m top.ni_1.Age.ni_5._arrow._first_m top.ni_2.Age.__Age_2_m top.ni_2.Age.__Age_3_m top.ni_2.Age.ni_5._arrow._first_m top.ni_3._arrow._first_m top.__top_4_x top.__top_5_x top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_4._arrow._first_x top.ni_1.Age.__Age_2_x top.ni_1.Age.__Age_3_x top.ni_1.Age.ni_5._arrow._first_x top.ni_2.Age.__Age_2_x top.ni_2.Age.__Age_3_x top.ni_2.Age.ni_5._arrow._first_x top.ni_3._arrow._first_x)
  )
  (MAIN top.__top_4_x top.__top_5_x top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_4._arrow._first_x top.ni_1.Age.__Age_2_x top.ni_1.Age.__Age_3_x top.ni_1.Age.ni_5._arrow._first_x top.ni_2.Age.__Age_2_x top.ni_2.Age.__Age_3_x top.ni_2.Age.ni_5._arrow._first_x top.ni_3._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.__top_4_c top.__top_5_c top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_4._arrow._first_c top.ni_1.Age.__Age_2_c top.ni_1.Age.__Age_3_c top.ni_1.Age.ni_5._arrow._first_c top.ni_2.Age.__Age_2_c top.ni_2.Age.__Age_3_c top.ni_2.Age.ni_5._arrow._first_c top.ni_3._arrow._first_c dummytop.OK)
       (top_step top.k0 top.m0 top.p top.q top.OK top.__top_4_c top.__top_5_c top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_4._arrow._first_c top.ni_1.Age.__Age_2_c top.ni_1.Age.__Age_3_c top.ni_1.Age.ni_5._arrow._first_c top.ni_2.Age.__Age_2_c top.ni_2.Age.__Age_3_c top.ni_2.Age.ni_5._arrow._first_c top.ni_3._arrow._first_c top.__top_4_x top.__top_5_x top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_4._arrow._first_x top.ni_1.Age.__Age_2_x top.ni_1.Age.__Age_3_x top.ni_1.Age.ni_5._arrow._first_x top.ni_2.Age.__Age_2_x top.ni_2.Age.__Age_3_x top.ni_2.Age.ni_5._arrow._first_x top.ni_3._arrow._first_x)
  )
  (MAIN top.__top_4_x top.__top_5_x top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_4._arrow._first_x top.ni_1.Age.__Age_2_x top.ni_1.Age.__Age_3_x top.ni_1.Age.ni_5._arrow._first_x top.ni_2.Age.__Age_2_x top.ni_2.Age.__Age_3_x top.ni_2.Age.ni_5._arrow._first_x top.ni_3._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.__top_4_x top.__top_5_x top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_4._arrow._first_x top.ni_1.Age.__Age_2_x top.ni_1.Age.__Age_3_x top.ni_1.Age.ni_5._arrow._first_x top.ni_2.Age.__Age_2_x top.ni_2.Age.__Age_3_x top.ni_2.Age.ni_5._arrow._first_x top.ni_3._arrow._first_x top.OK))
  ERR))
(query ERR)
