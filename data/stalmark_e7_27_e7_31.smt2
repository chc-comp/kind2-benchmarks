; Statically linked libraries
; top
(declare-var top.x Bool)
(declare-var top.OK Bool)
(declare-var top.__top_2_c Bool)
(declare-var top.__top_3_c Bool)
(declare-var top.__top_4_c Bool)
(declare-var top.ni_0._arrow._first_c Bool)
(declare-var top.__top_2_m Bool)
(declare-var top.__top_3_m Bool)
(declare-var top.__top_4_m Bool)
(declare-var top.ni_0._arrow._first_m Bool)
(declare-var top.__top_2_x Bool)
(declare-var top.__top_3_x Bool)
(declare-var top.__top_4_x Bool)
(declare-var top.ni_0._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.a Bool)
(declare-var top.b Bool)
(declare-var top.c Bool)
(declare-rel top_reset (Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= top.__top_2_m top.__top_2_c)
       (= top.__top_3_m top.__top_3_c)
       (= top.__top_4_m top.__top_4_c)
       (= top.ni_0._arrow._first_m true)
  )
  (top_reset top.__top_2_c
             top.__top_3_c
             top.__top_4_c
             top.ni_0._arrow._first_c
             top.__top_2_m
             top.__top_3_m
             top.__top_4_m
             top.ni_0._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= top.ni_0._arrow._first_m top.ni_0._arrow._first_c)(and (= top.__top_1 (ite top.ni_0._arrow._first_m true false))
                                                                 (= top.ni_0._arrow._first_x false))
       (and (or (not (= top.__top_1 false))
               (and (= top.c top.__top_2_c)
                    (= top.b top.__top_3_c)
                    (= top.a top.__top_4_c)
                    ))
            (or (not (= top.__top_1 true))
               (and (= top.c false)
                    (= top.b false)
                    (= top.a true)
                    ))
       )
       (= top.__top_4_x top.c)
       (= top.__top_3_x top.a)
       (= top.__top_2_x top.b)
       (= top.OK (and (or (or (or (or (or (not top.a) (not top.b)) top.c) (and (and (not top.a) top.b) (not top.c))) (and (and top.a (not top.b)) (not top.c))) (and (and top.a top.b) top.c)) (not (and (and top.a top.b) top.c))))
       )
  (top_step top.x
            top.OK
            top.__top_2_c
            top.__top_3_c
            top.__top_4_c
            top.ni_0._arrow._first_c
            top.__top_2_x
            top.__top_3_x
            top.__top_4_x
            top.ni_0._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.__top_2_c top.__top_3_c top.__top_4_c top.ni_0._arrow._first_c top.__top_2_m top.__top_3_m top.__top_4_m top.ni_0._arrow._first_m)
       (top_step top.x top.OK top.__top_2_m top.__top_3_m top.__top_4_m top.ni_0._arrow._first_m top.__top_2_x top.__top_3_x top.__top_4_x top.ni_0._arrow._first_x)
  )
  (MAIN top.__top_2_x top.__top_3_x top.__top_4_x top.ni_0._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.__top_2_c top.__top_3_c top.__top_4_c top.ni_0._arrow._first_c dummytop.OK)
       (top_step top.x top.OK top.__top_2_c top.__top_3_c top.__top_4_c top.ni_0._arrow._first_c top.__top_2_x top.__top_3_x top.__top_4_x top.ni_0._arrow._first_x)
  )
  (MAIN top.__top_2_x top.__top_3_x top.__top_4_x top.ni_0._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.__top_2_x top.__top_3_x top.__top_4_x top.ni_0._arrow._first_x top.OK))
  ERR))
(query ERR)
