; Statically linked libraries
; top
(declare-var top.init Int)
(declare-var top.OK Bool)
(declare-var top.__top_2_c Int)
(declare-var top.ni_0._arrow._first_c Bool)
(declare-var top.__top_2_m Int)
(declare-var top.ni_0._arrow._first_m Bool)
(declare-var top.__top_2_x Int)
(declare-var top.ni_0._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.__top_3 Bool)
(declare-var top.time Int)
(declare-rel top_reset (Int Bool Int Bool))
(declare-rel top_step (Int Bool Int Bool Int Bool))

(rule (=> 
  (and 
       (= top.__top_2_m top.__top_2_c)
       (= top.ni_0._arrow._first_m true)
  )
  (top_reset top.__top_2_c
             top.ni_0._arrow._first_c
             top.__top_2_m
             top.ni_0._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= top.__top_3 (= top.__top_2_c 5))
       (= top.ni_0._arrow._first_m top.ni_0._arrow._first_c)(and (= top.__top_1 (ite top.ni_0._arrow._first_m true false))
                                                                 (= top.ni_0._arrow._first_x false))
       (and (or (not (= top.__top_1 true))
               (= top.time 0))
            (or (not (= top.__top_1 false))
               (and (or (not (= top.__top_3 true))
                       (= top.time 0))
                    (or (not (= top.__top_3 false))
                       (= top.time (+ top.__top_2_c 1)))
               ))
       )
       (= top.__top_2_x top.time)
       (= top.OK (< top.time 0))
       )
  (top_step top.init
            top.OK
            top.__top_2_c
            top.ni_0._arrow._first_c
            top.__top_2_x
            top.ni_0._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.__top_2_c top.ni_0._arrow._first_c top.__top_2_m top.ni_0._arrow._first_m)
       (top_step top.init top.OK top.__top_2_m top.ni_0._arrow._first_m top.__top_2_x top.ni_0._arrow._first_x)
  )
  (MAIN top.__top_2_x top.ni_0._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.__top_2_c top.ni_0._arrow._first_c dummytop.OK)
       (top_step top.init top.OK top.__top_2_c top.ni_0._arrow._first_c top.__top_2_x top.ni_0._arrow._first_x)
  )
  (MAIN top.__top_2_x top.ni_0._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.__top_2_x top.ni_0._arrow._first_x top.OK))
  ERR))
(query ERR)
