; Statically linked libraries
; intloop6counter
(declare-var intloop6counter.x Bool)
(declare-var intloop6counter.out Bool)
(declare-var intloop6counter.__intloop6counter_2_c Int)
(declare-var intloop6counter.__intloop6counter_5_c Bool)
(declare-var intloop6counter.ni_3._arrow._first_c Bool)
(declare-var intloop6counter.__intloop6counter_2_m Int)
(declare-var intloop6counter.__intloop6counter_5_m Bool)
(declare-var intloop6counter.ni_3._arrow._first_m Bool)
(declare-var intloop6counter.__intloop6counter_2_x Int)
(declare-var intloop6counter.__intloop6counter_5_x Bool)
(declare-var intloop6counter.ni_3._arrow._first_x Bool)
(declare-var intloop6counter.__intloop6counter_1 Bool)
(declare-var intloop6counter.__intloop6counter_3 Bool)
(declare-var intloop6counter.__intloop6counter_4 Bool)
(declare-var intloop6counter.__intloop6counter_6 Bool)
(declare-var intloop6counter.time Int)
(declare-rel intloop6counter_reset (Int Bool Bool Int Bool Bool))
(declare-rel intloop6counter_step (Bool Bool Int Bool Bool Int Bool Bool))

(rule (=> 
  (and 
       (= intloop6counter.__intloop6counter_2_m intloop6counter.__intloop6counter_2_c)
       (= intloop6counter.__intloop6counter_5_m intloop6counter.__intloop6counter_5_c)
       (= intloop6counter.ni_3._arrow._first_m true)
  )
  (intloop6counter_reset intloop6counter.__intloop6counter_2_c
                         intloop6counter.__intloop6counter_5_c
                         intloop6counter.ni_3._arrow._first_c
                         intloop6counter.__intloop6counter_2_m
                         intloop6counter.__intloop6counter_5_m
                         intloop6counter.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= intloop6counter.__intloop6counter_6 (not intloop6counter.__intloop6counter_5_c))
       (= intloop6counter.__intloop6counter_4 (= intloop6counter.__intloop6counter_2_c 4))
       (= intloop6counter.__intloop6counter_3 (= intloop6counter.__intloop6counter_2_c 5))
       (= intloop6counter.ni_3._arrow._first_m intloop6counter.ni_3._arrow._first_c)
       (and (= intloop6counter.__intloop6counter_1 (ite intloop6counter.ni_3._arrow._first_m true false))
            (= intloop6counter.ni_3._arrow._first_x false))
       (and (or (not (= intloop6counter.__intloop6counter_1 true))
               (= intloop6counter.time 0))
            (or (not (= intloop6counter.__intloop6counter_1 false))
               (and (or (not (= intloop6counter.__intloop6counter_3 true))
                       (= intloop6counter.time 2))
                    (or (not (= intloop6counter.__intloop6counter_3 false))
                       (and (or (not (= intloop6counter.__intloop6counter_4 true))
                               (and (or (not (= intloop6counter.__intloop6counter_6 true))
                                       (= intloop6counter.time 3))
                                    (or (not (= intloop6counter.__intloop6counter_6 false))
                                       (= intloop6counter.time 5))
                               ))
                            (or (not (= intloop6counter.__intloop6counter_4 false))
                               (= intloop6counter.time (+ intloop6counter.__intloop6counter_2_c 1)))
                       ))
               ))
       )
       (= intloop6counter.out (= intloop6counter.time 5))
       (= intloop6counter.__intloop6counter_5_x intloop6counter.x)
       (= intloop6counter.__intloop6counter_2_x intloop6counter.time)
       )
  (intloop6counter_step intloop6counter.x
                        intloop6counter.out
                        intloop6counter.__intloop6counter_2_c
                        intloop6counter.__intloop6counter_5_c
                        intloop6counter.ni_3._arrow._first_c
                        intloop6counter.__intloop6counter_2_x
                        intloop6counter.__intloop6counter_5_x
                        intloop6counter.ni_3._arrow._first_x)
))

; loop6counter
(declare-var loop6counter.x Bool)
(declare-var loop6counter.out Bool)
(declare-var loop6counter.__loop6counter_2_c Bool)
(declare-var loop6counter.__loop6counter_3_c Bool)
(declare-var loop6counter.__loop6counter_4_c Bool)
(declare-var loop6counter.__loop6counter_5_c Bool)
(declare-var loop6counter.ni_2._arrow._first_c Bool)
(declare-var loop6counter.__loop6counter_2_m Bool)
(declare-var loop6counter.__loop6counter_3_m Bool)
(declare-var loop6counter.__loop6counter_4_m Bool)
(declare-var loop6counter.__loop6counter_5_m Bool)
(declare-var loop6counter.ni_2._arrow._first_m Bool)
(declare-var loop6counter.__loop6counter_2_x Bool)
(declare-var loop6counter.__loop6counter_3_x Bool)
(declare-var loop6counter.__loop6counter_4_x Bool)
(declare-var loop6counter.__loop6counter_5_x Bool)
(declare-var loop6counter.ni_2._arrow._first_x Bool)
(declare-var loop6counter.__loop6counter_1 Bool)
(declare-var loop6counter.a Bool)
(declare-var loop6counter.b Bool)
(declare-var loop6counter.c Bool)
(declare-rel loop6counter_reset (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel loop6counter_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= loop6counter.__loop6counter_2_m loop6counter.__loop6counter_2_c)
       (= loop6counter.__loop6counter_3_m loop6counter.__loop6counter_3_c)
       (= loop6counter.__loop6counter_4_m loop6counter.__loop6counter_4_c)
       (= loop6counter.__loop6counter_5_m loop6counter.__loop6counter_5_c)
       (= loop6counter.ni_2._arrow._first_m true)
  )
  (loop6counter_reset loop6counter.__loop6counter_2_c
                      loop6counter.__loop6counter_3_c
                      loop6counter.__loop6counter_4_c
                      loop6counter.__loop6counter_5_c
                      loop6counter.ni_2._arrow._first_c
                      loop6counter.__loop6counter_2_m
                      loop6counter.__loop6counter_3_m
                      loop6counter.__loop6counter_4_m
                      loop6counter.__loop6counter_5_m
                      loop6counter.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= loop6counter.ni_2._arrow._first_m loop6counter.ni_2._arrow._first_c)
       (and (= loop6counter.__loop6counter_1 (ite loop6counter.ni_2._arrow._first_m true false))
            (= loop6counter.ni_2._arrow._first_x false))
       (and (or (not (= loop6counter.__loop6counter_1 false))
               (and (= loop6counter.c (not loop6counter.__loop6counter_2_c))
                    (= loop6counter.a (or (and loop6counter.__loop6counter_5_c loop6counter.__loop6counter_2_c) (and (and loop6counter.__loop6counter_4_c loop6counter.__loop6counter_3_c) (not loop6counter.__loop6counter_2_c))))
                    ))
            (or (not (= loop6counter.__loop6counter_1 true))
               (and (= loop6counter.c false)
                    (= loop6counter.a false)
                    ))
       )
       (= loop6counter.out (and loop6counter.a loop6counter.c))
       (and (or (not (= loop6counter.__loop6counter_1 true))
               (= loop6counter.b false))
            (or (not (= loop6counter.__loop6counter_1 false))
               (= loop6counter.b (or (or (and (not loop6counter.__loop6counter_5_c) loop6counter.__loop6counter_2_c) (and loop6counter.__loop6counter_5_c (not loop6counter.__loop6counter_2_c))) (and (not loop6counter.__loop6counter_4_c) loop6counter.__loop6counter_3_c))))
       )
       (= loop6counter.__loop6counter_5_x loop6counter.b)
       (= loop6counter.__loop6counter_4_x loop6counter.x)
       (= loop6counter.__loop6counter_3_x loop6counter.a)
       (= loop6counter.__loop6counter_2_x loop6counter.c)
       )
  (loop6counter_step loop6counter.x
                     loop6counter.out
                     loop6counter.__loop6counter_2_c
                     loop6counter.__loop6counter_3_c
                     loop6counter.__loop6counter_4_c
                     loop6counter.__loop6counter_5_c
                     loop6counter.ni_2._arrow._first_c
                     loop6counter.__loop6counter_2_x
                     loop6counter.__loop6counter_3_x
                     loop6counter.__loop6counter_4_x
                     loop6counter.__loop6counter_5_x
                     loop6counter.ni_2._arrow._first_x)
))

; top
(declare-var top.x Bool)
(declare-var top.OK Bool)
(declare-var top.ni_0.loop6counter.__loop6counter_2_c Bool)
(declare-var top.ni_0.loop6counter.__loop6counter_3_c Bool)
(declare-var top.ni_0.loop6counter.__loop6counter_4_c Bool)
(declare-var top.ni_0.loop6counter.__loop6counter_5_c Bool)
(declare-var top.ni_0.loop6counter.ni_2._arrow._first_c Bool)
(declare-var top.ni_1.intloop6counter.__intloop6counter_2_c Int)
(declare-var top.ni_1.intloop6counter.__intloop6counter_5_c Bool)
(declare-var top.ni_1.intloop6counter.ni_3._arrow._first_c Bool)
(declare-var top.ni_0.loop6counter.__loop6counter_2_m Bool)
(declare-var top.ni_0.loop6counter.__loop6counter_3_m Bool)
(declare-var top.ni_0.loop6counter.__loop6counter_4_m Bool)
(declare-var top.ni_0.loop6counter.__loop6counter_5_m Bool)
(declare-var top.ni_0.loop6counter.ni_2._arrow._first_m Bool)
(declare-var top.ni_1.intloop6counter.__intloop6counter_2_m Int)
(declare-var top.ni_1.intloop6counter.__intloop6counter_5_m Bool)
(declare-var top.ni_1.intloop6counter.ni_3._arrow._first_m Bool)
(declare-var top.ni_0.loop6counter.__loop6counter_2_x Bool)
(declare-var top.ni_0.loop6counter.__loop6counter_3_x Bool)
(declare-var top.ni_0.loop6counter.__loop6counter_4_x Bool)
(declare-var top.ni_0.loop6counter.__loop6counter_5_x Bool)
(declare-var top.ni_0.loop6counter.ni_2._arrow._first_x Bool)
(declare-var top.ni_1.intloop6counter.__intloop6counter_2_x Int)
(declare-var top.ni_1.intloop6counter.__intloop6counter_5_x Bool)
(declare-var top.ni_1.intloop6counter.ni_3._arrow._first_x Bool)
(declare-var top.b Bool)
(declare-var top.d Bool)
(declare-rel top_reset (Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Int Bool Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Int Bool Bool))

(rule (=> 
  (and 
       
       (intloop6counter_reset top.ni_1.intloop6counter.__intloop6counter_2_c
                              top.ni_1.intloop6counter.__intloop6counter_5_c
                              top.ni_1.intloop6counter.ni_3._arrow._first_c
                              top.ni_1.intloop6counter.__intloop6counter_2_m
                              top.ni_1.intloop6counter.__intloop6counter_5_m
                              top.ni_1.intloop6counter.ni_3._arrow._first_m)
       (loop6counter_reset top.ni_0.loop6counter.__loop6counter_2_c
                           top.ni_0.loop6counter.__loop6counter_3_c
                           top.ni_0.loop6counter.__loop6counter_4_c
                           top.ni_0.loop6counter.__loop6counter_5_c
                           top.ni_0.loop6counter.ni_2._arrow._first_c
                           top.ni_0.loop6counter.__loop6counter_2_m
                           top.ni_0.loop6counter.__loop6counter_3_m
                           top.ni_0.loop6counter.__loop6counter_4_m
                           top.ni_0.loop6counter.__loop6counter_5_m
                           top.ni_0.loop6counter.ni_2._arrow._first_m)
  )
  (top_reset top.ni_0.loop6counter.__loop6counter_2_c
             top.ni_0.loop6counter.__loop6counter_3_c
             top.ni_0.loop6counter.__loop6counter_4_c
             top.ni_0.loop6counter.__loop6counter_5_c
             top.ni_0.loop6counter.ni_2._arrow._first_c
             top.ni_1.intloop6counter.__intloop6counter_2_c
             top.ni_1.intloop6counter.__intloop6counter_5_c
             top.ni_1.intloop6counter.ni_3._arrow._first_c
             top.ni_0.loop6counter.__loop6counter_2_m
             top.ni_0.loop6counter.__loop6counter_3_m
             top.ni_0.loop6counter.__loop6counter_4_m
             top.ni_0.loop6counter.__loop6counter_5_m
             top.ni_0.loop6counter.ni_2._arrow._first_m
             top.ni_1.intloop6counter.__intloop6counter_2_m
             top.ni_1.intloop6counter.__intloop6counter_5_m
             top.ni_1.intloop6counter.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_1.intloop6counter.__intloop6counter_2_m top.ni_1.intloop6counter.__intloop6counter_2_c)
            (= top.ni_1.intloop6counter.__intloop6counter_5_m top.ni_1.intloop6counter.__intloop6counter_5_c)
            (= top.ni_1.intloop6counter.ni_3._arrow._first_m top.ni_1.intloop6counter.ni_3._arrow._first_c)
            )
       (intloop6counter_step top.x
                             top.d
                             top.ni_1.intloop6counter.__intloop6counter_2_m
                             top.ni_1.intloop6counter.__intloop6counter_5_m
                             top.ni_1.intloop6counter.ni_3._arrow._first_m
                             top.ni_1.intloop6counter.__intloop6counter_2_x
                             top.ni_1.intloop6counter.__intloop6counter_5_x
                             top.ni_1.intloop6counter.ni_3._arrow._first_x)
       (and (= top.ni_0.loop6counter.__loop6counter_2_m top.ni_0.loop6counter.__loop6counter_2_c)
            (= top.ni_0.loop6counter.__loop6counter_3_m top.ni_0.loop6counter.__loop6counter_3_c)
            (= top.ni_0.loop6counter.__loop6counter_4_m top.ni_0.loop6counter.__loop6counter_4_c)
            (= top.ni_0.loop6counter.__loop6counter_5_m top.ni_0.loop6counter.__loop6counter_5_c)
            (= top.ni_0.loop6counter.ni_2._arrow._first_m top.ni_0.loop6counter.ni_2._arrow._first_c)
            )
       (loop6counter_step top.x
                          top.b
                          top.ni_0.loop6counter.__loop6counter_2_m
                          top.ni_0.loop6counter.__loop6counter_3_m
                          top.ni_0.loop6counter.__loop6counter_4_m
                          top.ni_0.loop6counter.__loop6counter_5_m
                          top.ni_0.loop6counter.ni_2._arrow._first_m
                          top.ni_0.loop6counter.__loop6counter_2_x
                          top.ni_0.loop6counter.__loop6counter_3_x
                          top.ni_0.loop6counter.__loop6counter_4_x
                          top.ni_0.loop6counter.__loop6counter_5_x
                          top.ni_0.loop6counter.ni_2._arrow._first_x)
       (= top.OK (or (not top.x) (= top.b top.d)))
       )
  (top_step top.x
            top.OK
            top.ni_0.loop6counter.__loop6counter_2_c
            top.ni_0.loop6counter.__loop6counter_3_c
            top.ni_0.loop6counter.__loop6counter_4_c
            top.ni_0.loop6counter.__loop6counter_5_c
            top.ni_0.loop6counter.ni_2._arrow._first_c
            top.ni_1.intloop6counter.__intloop6counter_2_c
            top.ni_1.intloop6counter.__intloop6counter_5_c
            top.ni_1.intloop6counter.ni_3._arrow._first_c
            top.ni_0.loop6counter.__loop6counter_2_x
            top.ni_0.loop6counter.__loop6counter_3_x
            top.ni_0.loop6counter.__loop6counter_4_x
            top.ni_0.loop6counter.__loop6counter_5_x
            top.ni_0.loop6counter.ni_2._arrow._first_x
            top.ni_1.intloop6counter.__intloop6counter_2_x
            top.ni_1.intloop6counter.__intloop6counter_5_x
            top.ni_1.intloop6counter.ni_3._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Bool Bool Bool Bool Int Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.loop6counter.__loop6counter_2_c top.ni_0.loop6counter.__loop6counter_3_c top.ni_0.loop6counter.__loop6counter_4_c top.ni_0.loop6counter.__loop6counter_5_c top.ni_0.loop6counter.ni_2._arrow._first_c top.ni_1.intloop6counter.__intloop6counter_2_c top.ni_1.intloop6counter.__intloop6counter_5_c top.ni_1.intloop6counter.ni_3._arrow._first_c top.ni_0.loop6counter.__loop6counter_2_m top.ni_0.loop6counter.__loop6counter_3_m top.ni_0.loop6counter.__loop6counter_4_m top.ni_0.loop6counter.__loop6counter_5_m top.ni_0.loop6counter.ni_2._arrow._first_m top.ni_1.intloop6counter.__intloop6counter_2_m top.ni_1.intloop6counter.__intloop6counter_5_m top.ni_1.intloop6counter.ni_3._arrow._first_m)
       (top_step top.x top.OK top.ni_0.loop6counter.__loop6counter_2_m top.ni_0.loop6counter.__loop6counter_3_m top.ni_0.loop6counter.__loop6counter_4_m top.ni_0.loop6counter.__loop6counter_5_m top.ni_0.loop6counter.ni_2._arrow._first_m top.ni_1.intloop6counter.__intloop6counter_2_m top.ni_1.intloop6counter.__intloop6counter_5_m top.ni_1.intloop6counter.ni_3._arrow._first_m top.ni_0.loop6counter.__loop6counter_2_x top.ni_0.loop6counter.__loop6counter_3_x top.ni_0.loop6counter.__loop6counter_4_x top.ni_0.loop6counter.__loop6counter_5_x top.ni_0.loop6counter.ni_2._arrow._first_x top.ni_1.intloop6counter.__intloop6counter_2_x top.ni_1.intloop6counter.__intloop6counter_5_x top.ni_1.intloop6counter.ni_3._arrow._first_x)
  )
  (MAIN top.ni_0.loop6counter.__loop6counter_2_x top.ni_0.loop6counter.__loop6counter_3_x top.ni_0.loop6counter.__loop6counter_4_x top.ni_0.loop6counter.__loop6counter_5_x top.ni_0.loop6counter.ni_2._arrow._first_x top.ni_1.intloop6counter.__intloop6counter_2_x top.ni_1.intloop6counter.__intloop6counter_5_x top.ni_1.intloop6counter.ni_3._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.loop6counter.__loop6counter_2_c top.ni_0.loop6counter.__loop6counter_3_c top.ni_0.loop6counter.__loop6counter_4_c top.ni_0.loop6counter.__loop6counter_5_c top.ni_0.loop6counter.ni_2._arrow._first_c top.ni_1.intloop6counter.__intloop6counter_2_c top.ni_1.intloop6counter.__intloop6counter_5_c top.ni_1.intloop6counter.ni_3._arrow._first_c dummytop.OK)
       (top_step top.x top.OK top.ni_0.loop6counter.__loop6counter_2_c top.ni_0.loop6counter.__loop6counter_3_c top.ni_0.loop6counter.__loop6counter_4_c top.ni_0.loop6counter.__loop6counter_5_c top.ni_0.loop6counter.ni_2._arrow._first_c top.ni_1.intloop6counter.__intloop6counter_2_c top.ni_1.intloop6counter.__intloop6counter_5_c top.ni_1.intloop6counter.ni_3._arrow._first_c top.ni_0.loop6counter.__loop6counter_2_x top.ni_0.loop6counter.__loop6counter_3_x top.ni_0.loop6counter.__loop6counter_4_x top.ni_0.loop6counter.__loop6counter_5_x top.ni_0.loop6counter.ni_2._arrow._first_x top.ni_1.intloop6counter.__intloop6counter_2_x top.ni_1.intloop6counter.__intloop6counter_5_x top.ni_1.intloop6counter.ni_3._arrow._first_x)
  )
  (MAIN top.ni_0.loop6counter.__loop6counter_2_x top.ni_0.loop6counter.__loop6counter_3_x top.ni_0.loop6counter.__loop6counter_4_x top.ni_0.loop6counter.__loop6counter_5_x top.ni_0.loop6counter.ni_2._arrow._first_x top.ni_1.intloop6counter.__intloop6counter_2_x top.ni_1.intloop6counter.__intloop6counter_5_x top.ni_1.intloop6counter.ni_3._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.loop6counter.__loop6counter_2_x top.ni_0.loop6counter.__loop6counter_3_x top.ni_0.loop6counter.__loop6counter_4_x top.ni_0.loop6counter.__loop6counter_5_x top.ni_0.loop6counter.ni_2._arrow._first_x top.ni_1.intloop6counter.__intloop6counter_2_x top.ni_1.intloop6counter.__intloop6counter_5_x top.ni_1.intloop6counter.ni_3._arrow._first_x top.OK))
  ERR))
(query ERR)
