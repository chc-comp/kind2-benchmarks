; Statically linked libraries
; SWITCH
(declare-var SWITCH.set Bool)
(declare-var SWITCH.reset Bool)
(declare-var SWITCH.init Bool)
(declare-var SWITCH.level Bool)
(declare-var SWITCH.__SWITCH_2_c Bool)
(declare-var SWITCH.ni_3._arrow._first_c Bool)
(declare-var SWITCH.__SWITCH_2_m Bool)
(declare-var SWITCH.ni_3._arrow._first_m Bool)
(declare-var SWITCH.__SWITCH_2_x Bool)
(declare-var SWITCH.ni_3._arrow._first_x Bool)
(declare-var SWITCH.__SWITCH_1 Bool)
(declare-var SWITCH.__SWITCH_3 Bool)
(declare-rel SWITCH_reset (Bool Bool Bool Bool))
(declare-rel SWITCH_step (Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= SWITCH.__SWITCH_2_m SWITCH.__SWITCH_2_c)
       (= SWITCH.ni_3._arrow._first_m true)
  )
  (SWITCH_reset SWITCH.__SWITCH_2_c
                SWITCH.ni_3._arrow._first_c
                SWITCH.__SWITCH_2_m
                SWITCH.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= SWITCH.__SWITCH_3 (and SWITCH.set (not SWITCH.__SWITCH_2_c)))
       (= SWITCH.ni_3._arrow._first_m SWITCH.ni_3._arrow._first_c)(and (= SWITCH.__SWITCH_1 (ite SWITCH.ni_3._arrow._first_m true false))
                                                                    (= SWITCH.ni_3._arrow._first_x false))
       (and (or (not (= SWITCH.__SWITCH_1 true))
               (= SWITCH.level SWITCH.init))
            (or (not (= SWITCH.__SWITCH_1 false))
               (and (or (not (= SWITCH.__SWITCH_3 true))
                       (= SWITCH.level true))
                    (or (not (= SWITCH.__SWITCH_3 false))
                       (and (or (not (= SWITCH.reset true))
                               (= SWITCH.level false))
                            (or (not (= SWITCH.reset false))
                               (= SWITCH.level SWITCH.__SWITCH_2_c))
                       ))
               ))
       )
       (= SWITCH.__SWITCH_2_x SWITCH.level)
       )
  (SWITCH_step SWITCH.set
               SWITCH.reset
               SWITCH.init
               SWITCH.level
               SWITCH.__SWITCH_2_c
               SWITCH.ni_3._arrow._first_c
               SWITCH.__SWITCH_2_x
               SWITCH.ni_3._arrow._first_x)
))

; SWITCH1
(declare-var SWITCH1.set Bool)
(declare-var SWITCH1.reset Bool)
(declare-var SWITCH1.init Bool)
(declare-var SWITCH1.level Bool)
(declare-var SWITCH1.__SWITCH1_2_c Bool)
(declare-var SWITCH1.ni_2._arrow._first_c Bool)
(declare-var SWITCH1.__SWITCH1_2_m Bool)
(declare-var SWITCH1.ni_2._arrow._first_m Bool)
(declare-var SWITCH1.__SWITCH1_2_x Bool)
(declare-var SWITCH1.ni_2._arrow._first_x Bool)
(declare-var SWITCH1.__SWITCH1_1 Bool)
(declare-rel SWITCH1_reset (Bool Bool Bool Bool))
(declare-rel SWITCH1_step (Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= SWITCH1.__SWITCH1_2_m SWITCH1.__SWITCH1_2_c)
       (= SWITCH1.ni_2._arrow._first_m true)
  )
  (SWITCH1_reset SWITCH1.__SWITCH1_2_c
                 SWITCH1.ni_2._arrow._first_c
                 SWITCH1.__SWITCH1_2_m
                 SWITCH1.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= SWITCH1.ni_2._arrow._first_m SWITCH1.ni_2._arrow._first_c)(and (= SWITCH1.__SWITCH1_1 (ite SWITCH1.ni_2._arrow._first_m true false))
                                                                    (= SWITCH1.ni_2._arrow._first_x false))
       (and (or (not (= SWITCH1.__SWITCH1_1 true))
               (= SWITCH1.level SWITCH1.init))
            (or (not (= SWITCH1.__SWITCH1_1 false))
               (and (or (not (= SWITCH1.set true))
                       (= SWITCH1.level true))
                    (or (not (= SWITCH1.set false))
                       (and (or (not (= SWITCH1.reset true))
                               (= SWITCH1.level false))
                            (or (not (= SWITCH1.reset false))
                               (= SWITCH1.level SWITCH1.__SWITCH1_2_c))
                       ))
               ))
       )
       (= SWITCH1.__SWITCH1_2_x SWITCH1.level)
       )
  (SWITCH1_step SWITCH1.set
                SWITCH1.reset
                SWITCH1.init
                SWITCH1.level
                SWITCH1.__SWITCH1_2_c
                SWITCH1.ni_2._arrow._first_c
                SWITCH1.__SWITCH1_2_x
                SWITCH1.ni_2._arrow._first_x)
))

; top
(declare-var top.set Bool)
(declare-var top.treset Bool)
(declare-var top.init Bool)
(declare-var top.OK Bool)
(declare-var top.ni_0.SWITCH.__SWITCH_2_c Bool)
(declare-var top.ni_0.SWITCH.ni_3._arrow._first_c Bool)
(declare-var top.ni_1.SWITCH1.__SWITCH1_2_c Bool)
(declare-var top.ni_1.SWITCH1.ni_2._arrow._first_c Bool)
(declare-var top.ni_0.SWITCH.__SWITCH_2_m Bool)
(declare-var top.ni_0.SWITCH.ni_3._arrow._first_m Bool)
(declare-var top.ni_1.SWITCH1.__SWITCH1_2_m Bool)
(declare-var top.ni_1.SWITCH1.ni_2._arrow._first_m Bool)
(declare-var top.ni_0.SWITCH.__SWITCH_2_x Bool)
(declare-var top.ni_0.SWITCH.ni_3._arrow._first_x Bool)
(declare-var top.ni_1.SWITCH1.__SWITCH1_2_x Bool)
(declare-var top.ni_1.SWITCH1.ni_2._arrow._first_x Bool)
(declare-var top.level Bool)
(declare-var top.level1 Bool)
(declare-rel top_reset (Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       
       (SWITCH1_reset top.ni_1.SWITCH1.__SWITCH1_2_c
                      top.ni_1.SWITCH1.ni_2._arrow._first_c
                      top.ni_1.SWITCH1.__SWITCH1_2_m
                      top.ni_1.SWITCH1.ni_2._arrow._first_m)
       (SWITCH_reset top.ni_0.SWITCH.__SWITCH_2_c
                     top.ni_0.SWITCH.ni_3._arrow._first_c
                     top.ni_0.SWITCH.__SWITCH_2_m
                     top.ni_0.SWITCH.ni_3._arrow._first_m)
  )
  (top_reset top.ni_0.SWITCH.__SWITCH_2_c
             top.ni_0.SWITCH.ni_3._arrow._first_c
             top.ni_1.SWITCH1.__SWITCH1_2_c
             top.ni_1.SWITCH1.ni_2._arrow._first_c
             top.ni_0.SWITCH.__SWITCH_2_m
             top.ni_0.SWITCH.ni_3._arrow._first_m
             top.ni_1.SWITCH1.__SWITCH1_2_m
             top.ni_1.SWITCH1.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_1.SWITCH1.__SWITCH1_2_m top.ni_1.SWITCH1.__SWITCH1_2_c)
            (= top.ni_1.SWITCH1.ni_2._arrow._first_m top.ni_1.SWITCH1.ni_2._arrow._first_c)
            )
       (SWITCH1_step top.set
                     top.treset
                     top.init
                     top.level1
                     top.ni_1.SWITCH1.__SWITCH1_2_m
                     top.ni_1.SWITCH1.ni_2._arrow._first_m
                     top.ni_1.SWITCH1.__SWITCH1_2_x
                     top.ni_1.SWITCH1.ni_2._arrow._first_x)
       (and (= top.ni_0.SWITCH.__SWITCH_2_m top.ni_0.SWITCH.__SWITCH_2_c)
            (= top.ni_0.SWITCH.ni_3._arrow._first_m top.ni_0.SWITCH.ni_3._arrow._first_c)
            )
       (SWITCH_step top.set
                    top.treset
                    top.init
                    top.level
                    top.ni_0.SWITCH.__SWITCH_2_m
                    top.ni_0.SWITCH.ni_3._arrow._first_m
                    top.ni_0.SWITCH.__SWITCH_2_x
                    top.ni_0.SWITCH.ni_3._arrow._first_x)
       (and (or (not (= (not (and top.set top.treset)) true))
               (= top.OK (= top.level top.level1)))
            (or (not (= (not (and top.set top.treset)) false))
               (= top.OK true))
       )
       )
  (top_step top.set
            top.treset
            top.init
            top.OK
            top.ni_0.SWITCH.__SWITCH_2_c
            top.ni_0.SWITCH.ni_3._arrow._first_c
            top.ni_1.SWITCH1.__SWITCH1_2_c
            top.ni_1.SWITCH1.ni_2._arrow._first_c
            top.ni_0.SWITCH.__SWITCH_2_x
            top.ni_0.SWITCH.ni_3._arrow._first_x
            top.ni_1.SWITCH1.__SWITCH1_2_x
            top.ni_1.SWITCH1.ni_2._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.SWITCH.__SWITCH_2_c top.ni_0.SWITCH.ni_3._arrow._first_c top.ni_1.SWITCH1.__SWITCH1_2_c top.ni_1.SWITCH1.ni_2._arrow._first_c top.ni_0.SWITCH.__SWITCH_2_m top.ni_0.SWITCH.ni_3._arrow._first_m top.ni_1.SWITCH1.__SWITCH1_2_m top.ni_1.SWITCH1.ni_2._arrow._first_m)
       (top_step top.set top.treset top.init top.OK top.ni_0.SWITCH.__SWITCH_2_m top.ni_0.SWITCH.ni_3._arrow._first_m top.ni_1.SWITCH1.__SWITCH1_2_m top.ni_1.SWITCH1.ni_2._arrow._first_m top.ni_0.SWITCH.__SWITCH_2_x top.ni_0.SWITCH.ni_3._arrow._first_x top.ni_1.SWITCH1.__SWITCH1_2_x top.ni_1.SWITCH1.ni_2._arrow._first_x)
  )
  (MAIN top.ni_0.SWITCH.__SWITCH_2_x top.ni_0.SWITCH.ni_3._arrow._first_x top.ni_1.SWITCH1.__SWITCH1_2_x top.ni_1.SWITCH1.ni_2._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.SWITCH.__SWITCH_2_c top.ni_0.SWITCH.ni_3._arrow._first_c top.ni_1.SWITCH1.__SWITCH1_2_c top.ni_1.SWITCH1.ni_2._arrow._first_c dummytop.OK)
       (top_step top.set top.treset top.init top.OK top.ni_0.SWITCH.__SWITCH_2_c top.ni_0.SWITCH.ni_3._arrow._first_c top.ni_1.SWITCH1.__SWITCH1_2_c top.ni_1.SWITCH1.ni_2._arrow._first_c top.ni_0.SWITCH.__SWITCH_2_x top.ni_0.SWITCH.ni_3._arrow._first_x top.ni_1.SWITCH1.__SWITCH1_2_x top.ni_1.SWITCH1.ni_2._arrow._first_x)
  )
  (MAIN top.ni_0.SWITCH.__SWITCH_2_x top.ni_0.SWITCH.ni_3._arrow._first_x top.ni_1.SWITCH1.__SWITCH1_2_x top.ni_1.SWITCH1.ni_2._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.SWITCH.__SWITCH_2_x top.ni_0.SWITCH.ni_3._arrow._first_x top.ni_1.SWITCH1.__SWITCH1_2_x top.ni_1.SWITCH1.ni_2._arrow._first_x top.OK))
  ERR))
(query ERR)
