; Statically linked libraries
; bool6
(declare-var bool6.x Bool)
(declare-var bool6.out Bool)
(declare-var bool6.__bool6_2_c Bool)
(declare-var bool6.__bool6_3_c Bool)
(declare-var bool6.__bool6_4_c Bool)
(declare-var bool6.ni_3._arrow._first_c Bool)
(declare-var bool6.__bool6_2_m Bool)
(declare-var bool6.__bool6_3_m Bool)
(declare-var bool6.__bool6_4_m Bool)
(declare-var bool6.ni_3._arrow._first_m Bool)
(declare-var bool6.__bool6_2_x Bool)
(declare-var bool6.__bool6_3_x Bool)
(declare-var bool6.__bool6_4_x Bool)
(declare-var bool6.ni_3._arrow._first_x Bool)
(declare-var bool6.__bool6_1 Bool)
(declare-var bool6.a Bool)
(declare-var bool6.b Bool)
(declare-var bool6.c Bool)
(declare-rel bool6_reset (Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel bool6_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= bool6.__bool6_2_m bool6.__bool6_2_c)
       (= bool6.__bool6_3_m bool6.__bool6_3_c)
       (= bool6.__bool6_4_m bool6.__bool6_4_c)
       (= bool6.ni_3._arrow._first_m true)
  )
  (bool6_reset bool6.__bool6_2_c
               bool6.__bool6_3_c
               bool6.__bool6_4_c
               bool6.ni_3._arrow._first_c
               bool6.__bool6_2_m
               bool6.__bool6_3_m
               bool6.__bool6_4_m
               bool6.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= bool6.ni_3._arrow._first_m bool6.ni_3._arrow._first_c)(and (= bool6.__bool6_1 (ite bool6.ni_3._arrow._first_m true false))
                                                                    (= bool6.ni_3._arrow._first_x false))
       (and (or (not (= bool6.__bool6_1 false))
               (and (= bool6.c (or (and bool6.__bool6_4_c (not bool6.__bool6_2_c)) (and bool6.__bool6_3_c bool6.__bool6_2_c)))
                    (= bool6.a (not bool6.__bool6_2_c))
                    ))
            (or (not (= bool6.__bool6_1 true))
               (and (= bool6.c false)
                    (= bool6.a false)
                    ))
       )
       (= bool6.out (and bool6.a bool6.c))
       (and (or (not (= bool6.__bool6_1 true))
               (= bool6.b false))
            (or (not (= bool6.__bool6_1 false))
               (= bool6.b (or (and (and (not bool6.__bool6_4_c) (not bool6.__bool6_3_c)) bool6.__bool6_2_c) (and bool6.__bool6_3_c (not bool6.__bool6_2_c)))))
       )
       (= bool6.__bool6_4_x bool6.c)
       (= bool6.__bool6_3_x bool6.b)
       (= bool6.__bool6_2_x bool6.a)
       )
  (bool6_step bool6.x
              bool6.out
              bool6.__bool6_2_c
              bool6.__bool6_3_c
              bool6.__bool6_4_c
              bool6.ni_3._arrow._first_c
              bool6.__bool6_2_x
              bool6.__bool6_3_x
              bool6.__bool6_4_x
              bool6.ni_3._arrow._first_x)
))

; int6I
(declare-var int6I.x Bool)
(declare-var int6I.out Bool)
(declare-var int6I.__int6I_2_c Int)
(declare-var int6I.ni_2._arrow._first_c Bool)
(declare-var int6I.__int6I_2_m Int)
(declare-var int6I.ni_2._arrow._first_m Bool)
(declare-var int6I.__int6I_2_x Int)
(declare-var int6I.ni_2._arrow._first_x Bool)
(declare-var int6I.__int6I_1 Bool)
(declare-var int6I.__int6I_3 Bool)
(declare-var int6I.time Int)
(declare-rel int6I_reset (Int Bool Int Bool))
(declare-rel int6I_step (Bool Bool Int Bool Int Bool))

(rule (=> 
  (and 
       (= int6I.__int6I_2_m int6I.__int6I_2_c)
       (= int6I.ni_2._arrow._first_m true)
  )
  (int6I_reset int6I.__int6I_2_c
               int6I.ni_2._arrow._first_c
               int6I.__int6I_2_m
               int6I.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= int6I.__int6I_3 (= int6I.__int6I_2_c 5))
       (= int6I.ni_2._arrow._first_m int6I.ni_2._arrow._first_c)(and (= int6I.__int6I_1 (ite int6I.ni_2._arrow._first_m true false))
                                                                    (= int6I.ni_2._arrow._first_x false))
       (and (or (not (= int6I.__int6I_1 true))
               (= int6I.time 0))
            (or (not (= int6I.__int6I_1 false))
               (and (or (not (= int6I.__int6I_3 true))
                       (= int6I.time 1))
                    (or (not (= int6I.__int6I_3 false))
                       (= int6I.time (+ int6I.__int6I_2_c 1)))
               ))
       )
       (= int6I.out (= int6I.time 5))
       (= int6I.__int6I_2_x int6I.time)
       )
  (int6I_step int6I.x
              int6I.out
              int6I.__int6I_2_c
              int6I.ni_2._arrow._first_c
              int6I.__int6I_2_x
              int6I.ni_2._arrow._first_x)
))

; top
(declare-var top.x Bool)
(declare-var top.OK Bool)
(declare-var top.ni_0.int6I.__int6I_2_c Int)
(declare-var top.ni_0.int6I.ni_2._arrow._first_c Bool)
(declare-var top.ni_1.bool6.__bool6_2_c Bool)
(declare-var top.ni_1.bool6.__bool6_3_c Bool)
(declare-var top.ni_1.bool6.__bool6_4_c Bool)
(declare-var top.ni_1.bool6.ni_3._arrow._first_c Bool)
(declare-var top.ni_0.int6I.__int6I_2_m Int)
(declare-var top.ni_0.int6I.ni_2._arrow._first_m Bool)
(declare-var top.ni_1.bool6.__bool6_2_m Bool)
(declare-var top.ni_1.bool6.__bool6_3_m Bool)
(declare-var top.ni_1.bool6.__bool6_4_m Bool)
(declare-var top.ni_1.bool6.ni_3._arrow._first_m Bool)
(declare-var top.ni_0.int6I.__int6I_2_x Int)
(declare-var top.ni_0.int6I.ni_2._arrow._first_x Bool)
(declare-var top.ni_1.bool6.__bool6_2_x Bool)
(declare-var top.ni_1.bool6.__bool6_3_x Bool)
(declare-var top.ni_1.bool6.__bool6_4_x Bool)
(declare-var top.ni_1.bool6.ni_3._arrow._first_x Bool)
(declare-var top.a Bool)
(declare-var top.b Bool)
(declare-rel top_reset (Int Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool))
(declare-rel top_step (Bool Bool Int Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       
       (bool6_reset top.ni_1.bool6.__bool6_2_c top.ni_1.bool6.__bool6_3_c
                    top.ni_1.bool6.__bool6_4_c
                    top.ni_1.bool6.ni_3._arrow._first_c
                    top.ni_1.bool6.__bool6_2_m top.ni_1.bool6.__bool6_3_m
                    top.ni_1.bool6.__bool6_4_m
                    top.ni_1.bool6.ni_3._arrow._first_m)
       (int6I_reset top.ni_0.int6I.__int6I_2_c
                    top.ni_0.int6I.ni_2._arrow._first_c
                    top.ni_0.int6I.__int6I_2_m
                    top.ni_0.int6I.ni_2._arrow._first_m)
  )
  (top_reset top.ni_0.int6I.__int6I_2_c
             top.ni_0.int6I.ni_2._arrow._first_c
             top.ni_1.bool6.__bool6_2_c
             top.ni_1.bool6.__bool6_3_c
             top.ni_1.bool6.__bool6_4_c
             top.ni_1.bool6.ni_3._arrow._first_c
             top.ni_0.int6I.__int6I_2_m
             top.ni_0.int6I.ni_2._arrow._first_m
             top.ni_1.bool6.__bool6_2_m
             top.ni_1.bool6.__bool6_3_m
             top.ni_1.bool6.__bool6_4_m
             top.ni_1.bool6.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_1.bool6.__bool6_2_m top.ni_1.bool6.__bool6_2_c)
            (= top.ni_1.bool6.__bool6_3_m top.ni_1.bool6.__bool6_3_c)
            (= top.ni_1.bool6.__bool6_4_m top.ni_1.bool6.__bool6_4_c)
            (= top.ni_1.bool6.ni_3._arrow._first_m top.ni_1.bool6.ni_3._arrow._first_c)
            )
       (bool6_step top.x
                   top.b
                   top.ni_1.bool6.__bool6_2_m
                   top.ni_1.bool6.__bool6_3_m
                   top.ni_1.bool6.__bool6_4_m
                   top.ni_1.bool6.ni_3._arrow._first_m
                   top.ni_1.bool6.__bool6_2_x
                   top.ni_1.bool6.__bool6_3_x
                   top.ni_1.bool6.__bool6_4_x
                   top.ni_1.bool6.ni_3._arrow._first_x)
       (and (= top.ni_0.int6I.__int6I_2_m top.ni_0.int6I.__int6I_2_c)
            (= top.ni_0.int6I.ni_2._arrow._first_m top.ni_0.int6I.ni_2._arrow._first_c)
            )
       (int6I_step top.x
                   top.a
                   top.ni_0.int6I.__int6I_2_m
                   top.ni_0.int6I.ni_2._arrow._first_m
                   top.ni_0.int6I.__int6I_2_x
                   top.ni_0.int6I.ni_2._arrow._first_x)
       (= top.OK (= top.a top.b))
       )
  (top_step top.x
            top.OK
            top.ni_0.int6I.__int6I_2_c
            top.ni_0.int6I.ni_2._arrow._first_c
            top.ni_1.bool6.__bool6_2_c
            top.ni_1.bool6.__bool6_3_c
            top.ni_1.bool6.__bool6_4_c
            top.ni_1.bool6.ni_3._arrow._first_c
            top.ni_0.int6I.__int6I_2_x
            top.ni_0.int6I.ni_2._arrow._first_x
            top.ni_1.bool6.__bool6_2_x
            top.ni_1.bool6.__bool6_3_x
            top.ni_1.bool6.__bool6_4_x
            top.ni_1.bool6.ni_3._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Bool Bool Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.int6I.__int6I_2_c top.ni_0.int6I.ni_2._arrow._first_c top.ni_1.bool6.__bool6_2_c top.ni_1.bool6.__bool6_3_c top.ni_1.bool6.__bool6_4_c top.ni_1.bool6.ni_3._arrow._first_c top.ni_0.int6I.__int6I_2_m top.ni_0.int6I.ni_2._arrow._first_m top.ni_1.bool6.__bool6_2_m top.ni_1.bool6.__bool6_3_m top.ni_1.bool6.__bool6_4_m top.ni_1.bool6.ni_3._arrow._first_m)
       (top_step top.x top.OK top.ni_0.int6I.__int6I_2_m top.ni_0.int6I.ni_2._arrow._first_m top.ni_1.bool6.__bool6_2_m top.ni_1.bool6.__bool6_3_m top.ni_1.bool6.__bool6_4_m top.ni_1.bool6.ni_3._arrow._first_m top.ni_0.int6I.__int6I_2_x top.ni_0.int6I.ni_2._arrow._first_x top.ni_1.bool6.__bool6_2_x top.ni_1.bool6.__bool6_3_x top.ni_1.bool6.__bool6_4_x top.ni_1.bool6.ni_3._arrow._first_x)
  )
  (MAIN top.ni_0.int6I.__int6I_2_x top.ni_0.int6I.ni_2._arrow._first_x top.ni_1.bool6.__bool6_2_x top.ni_1.bool6.__bool6_3_x top.ni_1.bool6.__bool6_4_x top.ni_1.bool6.ni_3._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.int6I.__int6I_2_c top.ni_0.int6I.ni_2._arrow._first_c top.ni_1.bool6.__bool6_2_c top.ni_1.bool6.__bool6_3_c top.ni_1.bool6.__bool6_4_c top.ni_1.bool6.ni_3._arrow._first_c dummytop.OK)
       (top_step top.x top.OK top.ni_0.int6I.__int6I_2_c top.ni_0.int6I.ni_2._arrow._first_c top.ni_1.bool6.__bool6_2_c top.ni_1.bool6.__bool6_3_c top.ni_1.bool6.__bool6_4_c top.ni_1.bool6.ni_3._arrow._first_c top.ni_0.int6I.__int6I_2_x top.ni_0.int6I.ni_2._arrow._first_x top.ni_1.bool6.__bool6_2_x top.ni_1.bool6.__bool6_3_x top.ni_1.bool6.__bool6_4_x top.ni_1.bool6.ni_3._arrow._first_x)
  )
  (MAIN top.ni_0.int6I.__int6I_2_x top.ni_0.int6I.ni_2._arrow._first_x top.ni_1.bool6.__bool6_2_x top.ni_1.bool6.__bool6_3_x top.ni_1.bool6.__bool6_4_x top.ni_1.bool6.ni_3._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.int6I.__int6I_2_x top.ni_0.int6I.ni_2._arrow._first_x top.ni_1.bool6.__bool6_2_x top.ni_1.bool6.__bool6_3_x top.ni_1.bool6.__bool6_4_x top.ni_1.bool6.ni_3._arrow._first_x top.OK))
  ERR))
(query ERR)
