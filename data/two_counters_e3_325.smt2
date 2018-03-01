; Statically linked libraries
; greycounter
(declare-var greycounter.x Bool)
(declare-var greycounter.out Bool)
(declare-var greycounter.__greycounter_2_c Bool)
(declare-var greycounter.__greycounter_3_c Bool)
(declare-var greycounter.ni_3._arrow._first_c Bool)
(declare-var greycounter.__greycounter_2_m Bool)
(declare-var greycounter.__greycounter_3_m Bool)
(declare-var greycounter.ni_3._arrow._first_m Bool)
(declare-var greycounter.__greycounter_2_x Bool)
(declare-var greycounter.__greycounter_3_x Bool)
(declare-var greycounter.ni_3._arrow._first_x Bool)
(declare-var greycounter.__greycounter_1 Bool)
(declare-var greycounter.a Bool)
(declare-var greycounter.b Bool)
(declare-rel greycounter_reset (Bool Bool Bool Bool Bool Bool))
(declare-rel greycounter_step (Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= greycounter.__greycounter_2_m greycounter.__greycounter_2_c)
       (= greycounter.__greycounter_3_m greycounter.__greycounter_3_c)
       (= greycounter.ni_3._arrow._first_m true)
  )
  (greycounter_reset greycounter.__greycounter_2_c
                     greycounter.__greycounter_3_c
                     greycounter.ni_3._arrow._first_c
                     greycounter.__greycounter_2_m
                     greycounter.__greycounter_3_m
                     greycounter.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= greycounter.ni_3._arrow._first_m greycounter.ni_3._arrow._first_c)
       (and (= greycounter.__greycounter_1 (ite greycounter.ni_3._arrow._first_m true false))
            (= greycounter.ni_3._arrow._first_x false))
       (and (or (not (= greycounter.__greycounter_1 false))
               (and (= greycounter.b greycounter.__greycounter_2_c)
                    (= greycounter.a (not greycounter.__greycounter_3_c))
                    ))
            (or (not (= greycounter.__greycounter_1 true))
               (and (= greycounter.b false)
                    (= greycounter.a false)
                    ))
       )
       (= greycounter.out (and greycounter.a greycounter.b))
       (= greycounter.__greycounter_3_x greycounter.b)
       (= greycounter.__greycounter_2_x greycounter.a)
       )
  (greycounter_step greycounter.x
                    greycounter.out
                    greycounter.__greycounter_2_c
                    greycounter.__greycounter_3_c
                    greycounter.ni_3._arrow._first_c
                    greycounter.__greycounter_2_x
                    greycounter.__greycounter_3_x
                    greycounter.ni_3._arrow._first_x)
))

; intloopcounter
(declare-var intloopcounter.x Bool)
(declare-var intloopcounter.out Bool)
(declare-var intloopcounter.__intloopcounter_2_c Int)
(declare-var intloopcounter.ni_2._arrow._first_c Bool)
(declare-var intloopcounter.__intloopcounter_2_m Int)
(declare-var intloopcounter.ni_2._arrow._first_m Bool)
(declare-var intloopcounter.__intloopcounter_2_x Int)
(declare-var intloopcounter.ni_2._arrow._first_x Bool)
(declare-var intloopcounter.__intloopcounter_1 Bool)
(declare-var intloopcounter.__intloopcounter_3 Bool)
(declare-var intloopcounter.time Int)
(declare-rel intloopcounter_reset (Int Bool Int Bool))
(declare-rel intloopcounter_step (Bool Bool Int Bool Int Bool))

(rule (=> 
  (and 
       (= intloopcounter.__intloopcounter_2_m intloopcounter.__intloopcounter_2_c)
       (= intloopcounter.ni_2._arrow._first_m true)
  )
  (intloopcounter_reset intloopcounter.__intloopcounter_2_c
                        intloopcounter.ni_2._arrow._first_c
                        intloopcounter.__intloopcounter_2_m
                        intloopcounter.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= intloopcounter.__intloopcounter_3 (= intloopcounter.__intloopcounter_2_c 3))
       (= intloopcounter.ni_2._arrow._first_m intloopcounter.ni_2._arrow._first_c)
       (and (= intloopcounter.__intloopcounter_1 (ite intloopcounter.ni_2._arrow._first_m true false))
            (= intloopcounter.ni_2._arrow._first_x false))
       (and (or (not (= intloopcounter.__intloopcounter_1 true))
               (= intloopcounter.time 0))
            (or (not (= intloopcounter.__intloopcounter_1 false))
               (and (or (not (= intloopcounter.__intloopcounter_3 true))
                       (= intloopcounter.time 0))
                    (or (not (= intloopcounter.__intloopcounter_3 false))
                       (= intloopcounter.time (- intloopcounter.__intloopcounter_2_c 1)))
               ))
       )
       (= intloopcounter.out (= intloopcounter.time 2))
       (= intloopcounter.__intloopcounter_2_x intloopcounter.time)
       )
  (intloopcounter_step intloopcounter.x
                       intloopcounter.out
                       intloopcounter.__intloopcounter_2_c
                       intloopcounter.ni_2._arrow._first_c
                       intloopcounter.__intloopcounter_2_x
                       intloopcounter.ni_2._arrow._first_x)
))

; top
(declare-var top.x Bool)
(declare-var top.OK Bool)
(declare-var top.ni_0.greycounter.__greycounter_2_c Bool)
(declare-var top.ni_0.greycounter.__greycounter_3_c Bool)
(declare-var top.ni_0.greycounter.ni_3._arrow._first_c Bool)
(declare-var top.ni_1.intloopcounter.__intloopcounter_2_c Int)
(declare-var top.ni_1.intloopcounter.ni_2._arrow._first_c Bool)
(declare-var top.ni_0.greycounter.__greycounter_2_m Bool)
(declare-var top.ni_0.greycounter.__greycounter_3_m Bool)
(declare-var top.ni_0.greycounter.ni_3._arrow._first_m Bool)
(declare-var top.ni_1.intloopcounter.__intloopcounter_2_m Int)
(declare-var top.ni_1.intloopcounter.ni_2._arrow._first_m Bool)
(declare-var top.ni_0.greycounter.__greycounter_2_x Bool)
(declare-var top.ni_0.greycounter.__greycounter_3_x Bool)
(declare-var top.ni_0.greycounter.ni_3._arrow._first_x Bool)
(declare-var top.ni_1.intloopcounter.__intloopcounter_2_x Int)
(declare-var top.ni_1.intloopcounter.ni_2._arrow._first_x Bool)
(declare-var top.b Bool)
(declare-var top.d Bool)
(declare-rel top_reset (Bool Bool Bool Int Bool Bool Bool Bool Int Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Int Bool))

(rule (=> 
  (and 
       
       (intloopcounter_reset top.ni_1.intloopcounter.__intloopcounter_2_c
                             top.ni_1.intloopcounter.ni_2._arrow._first_c
                             top.ni_1.intloopcounter.__intloopcounter_2_m
                             top.ni_1.intloopcounter.ni_2._arrow._first_m)
       (greycounter_reset top.ni_0.greycounter.__greycounter_2_c
                          top.ni_0.greycounter.__greycounter_3_c
                          top.ni_0.greycounter.ni_3._arrow._first_c
                          top.ni_0.greycounter.__greycounter_2_m
                          top.ni_0.greycounter.__greycounter_3_m
                          top.ni_0.greycounter.ni_3._arrow._first_m)
  )
  (top_reset top.ni_0.greycounter.__greycounter_2_c
             top.ni_0.greycounter.__greycounter_3_c
             top.ni_0.greycounter.ni_3._arrow._first_c
             top.ni_1.intloopcounter.__intloopcounter_2_c
             top.ni_1.intloopcounter.ni_2._arrow._first_c
             top.ni_0.greycounter.__greycounter_2_m
             top.ni_0.greycounter.__greycounter_3_m
             top.ni_0.greycounter.ni_3._arrow._first_m
             top.ni_1.intloopcounter.__intloopcounter_2_m
             top.ni_1.intloopcounter.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_1.intloopcounter.__intloopcounter_2_m top.ni_1.intloopcounter.__intloopcounter_2_c)
            (= top.ni_1.intloopcounter.ni_2._arrow._first_m top.ni_1.intloopcounter.ni_2._arrow._first_c)
            )
       (intloopcounter_step top.x
                            top.d
                            top.ni_1.intloopcounter.__intloopcounter_2_m
                            top.ni_1.intloopcounter.ni_2._arrow._first_m
                            top.ni_1.intloopcounter.__intloopcounter_2_x
                            top.ni_1.intloopcounter.ni_2._arrow._first_x)
       (and (= top.ni_0.greycounter.__greycounter_2_m top.ni_0.greycounter.__greycounter_2_c)
            (= top.ni_0.greycounter.__greycounter_3_m top.ni_0.greycounter.__greycounter_3_c)
            (= top.ni_0.greycounter.ni_3._arrow._first_m top.ni_0.greycounter.ni_3._arrow._first_c)
            )
       (greycounter_step top.x
                         top.b
                         top.ni_0.greycounter.__greycounter_2_m
                         top.ni_0.greycounter.__greycounter_3_m
                         top.ni_0.greycounter.ni_3._arrow._first_m
                         top.ni_0.greycounter.__greycounter_2_x
                         top.ni_0.greycounter.__greycounter_3_x
                         top.ni_0.greycounter.ni_3._arrow._first_x)
       (= top.OK (= top.b top.d))
       )
  (top_step top.x
            top.OK
            top.ni_0.greycounter.__greycounter_2_c
            top.ni_0.greycounter.__greycounter_3_c
            top.ni_0.greycounter.ni_3._arrow._first_c
            top.ni_1.intloopcounter.__intloopcounter_2_c
            top.ni_1.intloopcounter.ni_2._arrow._first_c
            top.ni_0.greycounter.__greycounter_2_x
            top.ni_0.greycounter.__greycounter_3_x
            top.ni_0.greycounter.ni_3._arrow._first_x
            top.ni_1.intloopcounter.__intloopcounter_2_x
            top.ni_1.intloopcounter.ni_2._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Bool Bool Int Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.greycounter.__greycounter_2_c top.ni_0.greycounter.__greycounter_3_c top.ni_0.greycounter.ni_3._arrow._first_c top.ni_1.intloopcounter.__intloopcounter_2_c top.ni_1.intloopcounter.ni_2._arrow._first_c top.ni_0.greycounter.__greycounter_2_m top.ni_0.greycounter.__greycounter_3_m top.ni_0.greycounter.ni_3._arrow._first_m top.ni_1.intloopcounter.__intloopcounter_2_m top.ni_1.intloopcounter.ni_2._arrow._first_m)
       (top_step top.x top.OK top.ni_0.greycounter.__greycounter_2_m top.ni_0.greycounter.__greycounter_3_m top.ni_0.greycounter.ni_3._arrow._first_m top.ni_1.intloopcounter.__intloopcounter_2_m top.ni_1.intloopcounter.ni_2._arrow._first_m top.ni_0.greycounter.__greycounter_2_x top.ni_0.greycounter.__greycounter_3_x top.ni_0.greycounter.ni_3._arrow._first_x top.ni_1.intloopcounter.__intloopcounter_2_x top.ni_1.intloopcounter.ni_2._arrow._first_x)
  )
  (MAIN top.ni_0.greycounter.__greycounter_2_x top.ni_0.greycounter.__greycounter_3_x top.ni_0.greycounter.ni_3._arrow._first_x top.ni_1.intloopcounter.__intloopcounter_2_x top.ni_1.intloopcounter.ni_2._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.greycounter.__greycounter_2_c top.ni_0.greycounter.__greycounter_3_c top.ni_0.greycounter.ni_3._arrow._first_c top.ni_1.intloopcounter.__intloopcounter_2_c top.ni_1.intloopcounter.ni_2._arrow._first_c dummytop.OK)
       (top_step top.x top.OK top.ni_0.greycounter.__greycounter_2_c top.ni_0.greycounter.__greycounter_3_c top.ni_0.greycounter.ni_3._arrow._first_c top.ni_1.intloopcounter.__intloopcounter_2_c top.ni_1.intloopcounter.ni_2._arrow._first_c top.ni_0.greycounter.__greycounter_2_x top.ni_0.greycounter.__greycounter_3_x top.ni_0.greycounter.ni_3._arrow._first_x top.ni_1.intloopcounter.__intloopcounter_2_x top.ni_1.intloopcounter.ni_2._arrow._first_x)
  )
  (MAIN top.ni_0.greycounter.__greycounter_2_x top.ni_0.greycounter.__greycounter_3_x top.ni_0.greycounter.ni_3._arrow._first_x top.ni_1.intloopcounter.__intloopcounter_2_x top.ni_1.intloopcounter.ni_2._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.greycounter.__greycounter_2_x top.ni_0.greycounter.__greycounter_3_x top.ni_0.greycounter.ni_3._arrow._first_x top.ni_1.intloopcounter.__intloopcounter_2_x top.ni_1.intloopcounter.ni_2._arrow._first_x top.OK))
  ERR))
(query ERR)
