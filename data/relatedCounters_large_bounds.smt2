; Statically linked libraries
; top
(declare-var top.a Bool)
(declare-var top.b Bool)
(declare-var top.c Bool)
(declare-var top.ok Bool)
(declare-var top.__top_5_c Int)
(declare-var top.__top_6_c Int)
(declare-var top.ni_0._arrow._first_c Bool)
(declare-var top.__top_5_m Int)
(declare-var top.__top_6_m Int)
(declare-var top.ni_0._arrow._first_m Bool)
(declare-var top.__top_5_x Int)
(declare-var top.__top_6_x Int)
(declare-var top.ni_0._arrow._first_x Bool)
(declare-var top.__top_4 Bool)
(declare-var top.pre_x Int)
(declare-var top.pre_y Int)
(declare-var top.x Int)
(declare-var top.y Int)
(declare-rel top_reset (Int Int Bool Int Int Bool))
(declare-rel top_step (Bool Bool Bool Bool Int Int Bool Int Int Bool))

(rule (=> 
  (and 
       (= top.__top_5_m top.__top_5_c)
       (= top.__top_6_m top.__top_6_c)
       (= top.ni_0._arrow._first_m true)
  )
  (top_reset top.__top_5_c
             top.__top_6_c
             top.ni_0._arrow._first_c
             top.__top_5_m
             top.__top_6_m
             top.ni_0._arrow._first_m)
))

; Step rule with Assertions 
(rule (=> 
  (and 
  (and (= top.ni_0._arrow._first_m top.ni_0._arrow._first_c)(and (= top.__top_4 (ite top.ni_0._arrow._first_m true false))
                                                                 (= top.ni_0._arrow._first_x false))
       (and (or (not (= top.__top_4 true))
               (= top.pre_y 0))
            (or (not (= top.__top_4 false))
               (= top.pre_y top.__top_5_c))
       )
       (and (or (not (= top.c true))
               (= top.y 0))
            (or (not (= top.c false))
               (and (or (not (= (and top.a (< top.pre_y 600)) true))
                       (= top.y (+ top.pre_y 1)))
                    (or (not (= (and top.a (< top.pre_y 600)) false))
                       (= top.y top.pre_y))
               ))
       )
       (and (or (not (= top.__top_4 true))
               (= top.pre_x 0))
            (or (not (= top.__top_4 false))
               (= top.pre_x top.__top_6_c))
       )
       (and (or (not (= (or top.b top.c) true))
               (= top.x 0))
            (or (not (= (or top.b top.c) false))
               (and (or (not (= (and top.a (< top.pre_x 1000)) true))
                       (= top.x (+ top.pre_x 1)))
                    (or (not (= (and top.a (< top.pre_x 1000)) false))
                       (= top.x top.pre_x))
               ))
       )
       (= top.ok (=> (= top.x 1000) (= top.y 600)))
       (= top.__top_6_x top.x)
       (= top.__top_5_x top.y)
       )
 (and (and (and (<= 0 top.x) (<= top.x top.nX)) (<= 0 top.y)) (<= top.y top.nY)))
(top_step top.a top.b top.c top.ok top.__top_5_c top.__top_6_c top.ni_0._arrow._first_c top.__top_5_x top.__top_6_x top.ni_0._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Int Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.__top_5_c top.__top_6_c top.ni_0._arrow._first_c top.__top_5_m top.__top_6_m top.ni_0._arrow._first_m)
       (top_step top.a top.b top.c top.ok top.__top_5_m top.__top_6_m top.ni_0._arrow._first_m top.__top_5_x top.__top_6_x top.ni_0._arrow._first_x)
  )
  (MAIN top.__top_5_x top.__top_6_x top.ni_0._arrow._first_x top.ok)
))

; Inductive def
(declare-var dummytop.ok Bool)
(rule (=> 
  (and (MAIN top.__top_5_c top.__top_6_c top.ni_0._arrow._first_c dummytop.ok)
       (top_step top.a top.b top.c top.ok top.__top_5_c top.__top_6_c top.ni_0._arrow._first_c top.__top_5_x top.__top_6_x top.ni_0._arrow._first_x)
  )
  (MAIN top.__top_5_x top.__top_6_x top.ni_0._arrow._first_x top.ok)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.ok)
       (MAIN top.__top_5_x top.__top_6_x top.ni_0._arrow._first_x top.ok))
  ERR))
(query ERR)
