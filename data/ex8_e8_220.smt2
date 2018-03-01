; Statically linked libraries
; COUNTER
(declare-var COUNTER.init Int)
(declare-var COUNTER.incr Int)
(declare-var COUNTER.X Bool)
(declare-var COUNTER.reset Bool)
(declare-var COUNTER.C Int)
(declare-var COUNTER.__COUNTER_2_c Int)
(declare-var COUNTER.ni_4._arrow._first_c Bool)
(declare-var COUNTER.__COUNTER_2_m Int)
(declare-var COUNTER.ni_4._arrow._first_m Bool)
(declare-var COUNTER.__COUNTER_2_x Int)
(declare-var COUNTER.ni_4._arrow._first_x Bool)
(declare-var COUNTER.PC Int)
(declare-var COUNTER.__COUNTER_1 Bool)
(declare-rel COUNTER_reset (Int Bool Int Bool))
(declare-rel COUNTER_step (Int Int Bool Bool Int Int Bool Int Bool))

(rule (=> 
  (and 
       (= COUNTER.__COUNTER_2_m COUNTER.__COUNTER_2_c)
       (= COUNTER.ni_4._arrow._first_m true)
  )
  (COUNTER_reset COUNTER.__COUNTER_2_c
                 COUNTER.ni_4._arrow._first_c
                 COUNTER.__COUNTER_2_m
                 COUNTER.ni_4._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= COUNTER.ni_4._arrow._first_m COUNTER.ni_4._arrow._first_c)(and (= COUNTER.__COUNTER_1 (ite COUNTER.ni_4._arrow._first_m true false))
                                                                    (= COUNTER.ni_4._arrow._first_x false))
       (and (or (not (= COUNTER.__COUNTER_1 true))
               (= COUNTER.PC COUNTER.init))
            (or (not (= COUNTER.__COUNTER_1 false))
               (= COUNTER.PC COUNTER.__COUNTER_2_c))
       )
       (and (or (not (= COUNTER.reset true))
               (= COUNTER.C COUNTER.init))
            (or (not (= COUNTER.reset false))
               (and (or (not (= COUNTER.X true))
                       (= COUNTER.C (+ COUNTER.PC COUNTER.incr)))
                    (or (not (= COUNTER.X false))
                       (= COUNTER.C COUNTER.PC))
               ))
       )
       (= COUNTER.__COUNTER_2_x COUNTER.C)
       )
  (COUNTER_step COUNTER.init
                COUNTER.incr
                COUNTER.X
                COUNTER.reset
                COUNTER.C
                COUNTER.__COUNTER_2_c
                COUNTER.ni_4._arrow._first_c
                COUNTER.__COUNTER_2_x
                COUNTER.ni_4._arrow._first_x)
))

; speed
(declare-var speed.beacon Bool)
(declare-var speed.second Bool)
(declare-var speed.late Bool)
(declare-var speed.early Bool)
(declare-var speed.__speed_2_c Bool)
(declare-var speed.__speed_3_c Bool)
(declare-var speed.ni_2._arrow._first_c Bool)
(declare-var speed.ni_3.COUNTER.__COUNTER_2_c Int)
(declare-var speed.ni_3.COUNTER.ni_4._arrow._first_c Bool)
(declare-var speed.__speed_2_m Bool)
(declare-var speed.__speed_3_m Bool)
(declare-var speed.ni_2._arrow._first_m Bool)
(declare-var speed.ni_3.COUNTER.__COUNTER_2_m Int)
(declare-var speed.ni_3.COUNTER.ni_4._arrow._first_m Bool)
(declare-var speed.__speed_2_x Bool)
(declare-var speed.__speed_3_x Bool)
(declare-var speed.ni_2._arrow._first_x Bool)
(declare-var speed.ni_3.COUNTER.__COUNTER_2_x Int)
(declare-var speed.ni_3.COUNTER.ni_4._arrow._first_x Bool)
(declare-var speed.__speed_1 Bool)
(declare-var speed.diff Int)
(declare-var speed.incr Int)
(declare-rel speed_reset (Bool Bool Bool Int Bool Bool Bool Bool Int Bool))
(declare-rel speed_step (Bool Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Int Bool))

(rule (=> 
  (and 
       (= speed.__speed_2_m speed.__speed_2_c)
       (= speed.__speed_3_m speed.__speed_3_c)
       (COUNTER_reset speed.ni_3.COUNTER.__COUNTER_2_c
                      speed.ni_3.COUNTER.ni_4._arrow._first_c
                      speed.ni_3.COUNTER.__COUNTER_2_m
                      speed.ni_3.COUNTER.ni_4._arrow._first_m)
       (= speed.ni_2._arrow._first_m true)
  )
  (speed_reset speed.__speed_2_c
               speed.__speed_3_c
               speed.ni_2._arrow._first_c
               speed.ni_3.COUNTER.__COUNTER_2_c
               speed.ni_3.COUNTER.ni_4._arrow._first_c
               speed.__speed_2_m
               speed.__speed_3_m
               speed.ni_2._arrow._first_m
               speed.ni_3.COUNTER.__COUNTER_2_m
               speed.ni_3.COUNTER.ni_4._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (or (not (= (and speed.beacon (not speed.second)) true))
               (= speed.incr 1))
            (or (not (= (and speed.beacon (not speed.second)) false))
               (and (or (not (= (and speed.second (not speed.beacon)) true))
                       (= speed.incr 2))
                    (or (not (= (and speed.second (not speed.beacon)) false))
                       (= speed.incr 0))
               ))
       )
       (and (= speed.ni_3.COUNTER.__COUNTER_2_m speed.ni_3.COUNTER.__COUNTER_2_c)
            (= speed.ni_3.COUNTER.ni_4._arrow._first_m speed.ni_3.COUNTER.ni_4._arrow._first_c)
            )
       (COUNTER_step 0
                     speed.incr
                     (and speed.beacon speed.second)
                     false
                     speed.diff
                     speed.ni_3.COUNTER.__COUNTER_2_m
                     speed.ni_3.COUNTER.ni_4._arrow._first_m
                     speed.ni_3.COUNTER.__COUNTER_2_x
                     speed.ni_3.COUNTER.ni_4._arrow._first_x)
       (= speed.ni_2._arrow._first_m speed.ni_2._arrow._first_c)(and (= speed.__speed_1 (ite speed.ni_2._arrow._first_m true false))
                                                                    (= speed.ni_2._arrow._first_x false))
       (and (or (not (= speed.__speed_1 false))
               (and (and (or (not (= speed.__speed_2_c true))
                            (= speed.late (< speed.diff 0)))
                         (or (not (= speed.__speed_2_c false))
                            (= speed.late (<= speed.diff (- 10))))
                    )
                    (and (or (not (= speed.__speed_3_c true))
                            (= speed.early (> speed.diff 0)))
                         (or (not (= speed.__speed_3_c false))
                            (= speed.early (>= speed.diff 10)))
                    )
                    ))
            (or (not (= speed.__speed_1 true))
               (and (= speed.late false)
                    (= speed.early false)
                    ))
       )
       (= speed.__speed_3_x speed.early)
       (= speed.__speed_2_x speed.late)
       )
  (speed_step speed.beacon
              speed.second
              speed.late
              speed.early
              speed.__speed_2_c
              speed.__speed_3_c
              speed.ni_2._arrow._first_c
              speed.ni_3.COUNTER.__COUNTER_2_c
              speed.ni_3.COUNTER.ni_4._arrow._first_c
              speed.__speed_2_x
              speed.__speed_3_x
              speed.ni_2._arrow._first_x
              speed.ni_3.COUNTER.__COUNTER_2_x
              speed.ni_3.COUNTER.ni_4._arrow._first_x)
))

; top
(declare-var top.beacon Bool)
(declare-var top.second Bool)
(declare-var top.OK Bool)
(declare-var top.__top_2_c Bool)
(declare-var top.ni_0._arrow._first_c Bool)
(declare-var top.ni_1.speed.__speed_2_c Bool)
(declare-var top.ni_1.speed.__speed_3_c Bool)
(declare-var top.ni_1.speed.ni_2._arrow._first_c Bool)
(declare-var top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_c Int)
(declare-var top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_c Bool)
(declare-var top.__top_2_m Bool)
(declare-var top.ni_0._arrow._first_m Bool)
(declare-var top.ni_1.speed.__speed_2_m Bool)
(declare-var top.ni_1.speed.__speed_3_m Bool)
(declare-var top.ni_1.speed.ni_2._arrow._first_m Bool)
(declare-var top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_m Int)
(declare-var top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_m Bool)
(declare-var top.__top_2_x Bool)
(declare-var top.ni_0._arrow._first_x Bool)
(declare-var top.ni_1.speed.__speed_2_x Bool)
(declare-var top.ni_1.speed.__speed_3_x Bool)
(declare-var top.ni_1.speed.ni_2._arrow._first_x Bool)
(declare-var top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_x Int)
(declare-var top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.early Bool)
(declare-var top.late Bool)
(declare-rel top_reset (Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Int Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Int Bool))

(rule (=> 
  (and 
       (= top.__top_2_m top.__top_2_c)
       (speed_reset top.ni_1.speed.__speed_2_c top.ni_1.speed.__speed_3_c
                    top.ni_1.speed.ni_2._arrow._first_c
                    top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_c
                    top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_c
                    top.ni_1.speed.__speed_2_m top.ni_1.speed.__speed_3_m
                    top.ni_1.speed.ni_2._arrow._first_m
                    top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_m
                    top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_m)
       (= top.ni_0._arrow._first_m true)
  )
  (top_reset top.__top_2_c
             top.ni_0._arrow._first_c
             top.ni_1.speed.__speed_2_c
             top.ni_1.speed.__speed_3_c
             top.ni_1.speed.ni_2._arrow._first_c
             top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_c
             top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_c
             top.__top_2_m
             top.ni_0._arrow._first_m
             top.ni_1.speed.__speed_2_m
             top.ni_1.speed.__speed_3_m
             top.ni_1.speed.ni_2._arrow._first_m
             top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_m
             top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_1.speed.__speed_2_m top.ni_1.speed.__speed_2_c)
            (= top.ni_1.speed.__speed_3_m top.ni_1.speed.__speed_3_c)
            (= top.ni_1.speed.ni_2._arrow._first_m top.ni_1.speed.ni_2._arrow._first_c)
            (= top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_m top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_c)
            (= top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_m top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_c)
            )
       (speed_step top.beacon
                   top.second
                   top.late
                   top.early
                   top.ni_1.speed.__speed_2_m
                   top.ni_1.speed.__speed_3_m
                   top.ni_1.speed.ni_2._arrow._first_m
                   top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_m
                   top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_m
                   top.ni_1.speed.__speed_2_x
                   top.ni_1.speed.__speed_3_x
                   top.ni_1.speed.ni_2._arrow._first_x
                   top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_x
                   top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_x)
       (= top.ni_0._arrow._first_m top.ni_0._arrow._first_c)(and (= top.__top_1 (ite top.ni_0._arrow._first_m true false))
                                                                 (= top.ni_0._arrow._first_x false))
       (and (or (not (= top.__top_1 true))
               (= top.OK true))
            (or (not (= top.__top_1 false))
               (= top.OK (and (not top.late) top.__top_2_c)))
       )
       (= top.__top_2_x top.early)
       )
  (top_step top.beacon
            top.second
            top.OK
            top.__top_2_c
            top.ni_0._arrow._first_c
            top.ni_1.speed.__speed_2_c
            top.ni_1.speed.__speed_3_c
            top.ni_1.speed.ni_2._arrow._first_c
            top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_c
            top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_c
            top.__top_2_x
            top.ni_0._arrow._first_x
            top.ni_1.speed.__speed_2_x
            top.ni_1.speed.__speed_3_x
            top.ni_1.speed.ni_2._arrow._first_x
            top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_x
            top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Bool Bool Bool Bool Int Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.__top_2_c top.ni_0._arrow._first_c top.ni_1.speed.__speed_2_c top.ni_1.speed.__speed_3_c top.ni_1.speed.ni_2._arrow._first_c top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_c top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_c top.__top_2_m top.ni_0._arrow._first_m top.ni_1.speed.__speed_2_m top.ni_1.speed.__speed_3_m top.ni_1.speed.ni_2._arrow._first_m top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_m top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_m)
       (top_step top.beacon top.second top.OK top.__top_2_m top.ni_0._arrow._first_m top.ni_1.speed.__speed_2_m top.ni_1.speed.__speed_3_m top.ni_1.speed.ni_2._arrow._first_m top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_m top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_m top.__top_2_x top.ni_0._arrow._first_x top.ni_1.speed.__speed_2_x top.ni_1.speed.__speed_3_x top.ni_1.speed.ni_2._arrow._first_x top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_x top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_x)
  )
  (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.speed.__speed_2_x top.ni_1.speed.__speed_3_x top.ni_1.speed.ni_2._arrow._first_x top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_x top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.__top_2_c top.ni_0._arrow._first_c top.ni_1.speed.__speed_2_c top.ni_1.speed.__speed_3_c top.ni_1.speed.ni_2._arrow._first_c top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_c top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_c dummytop.OK)
       (top_step top.beacon top.second top.OK top.__top_2_c top.ni_0._arrow._first_c top.ni_1.speed.__speed_2_c top.ni_1.speed.__speed_3_c top.ni_1.speed.ni_2._arrow._first_c top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_c top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_c top.__top_2_x top.ni_0._arrow._first_x top.ni_1.speed.__speed_2_x top.ni_1.speed.__speed_3_x top.ni_1.speed.ni_2._arrow._first_x top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_x top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_x)
  )
  (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.speed.__speed_2_x top.ni_1.speed.__speed_3_x top.ni_1.speed.ni_2._arrow._first_x top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_x top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.speed.__speed_2_x top.ni_1.speed.__speed_3_x top.ni_1.speed.ni_2._arrow._first_x top.ni_1.speed.ni_3.COUNTER.__COUNTER_2_x top.ni_1.speed.ni_3.COUNTER.ni_4._arrow._first_x top.OK))
  ERR))
(query ERR)
