; Statically linked libraries
; counter
(declare-var counter.init Int)
(declare-var counter.incr Int)
(declare-var counter.x Bool)
(declare-var counter.reset Bool)
(declare-var counter.c Int)
(declare-var counter.__counter_3_c Int)
(declare-var counter.ni_4._arrow._first_c Bool)
(declare-var counter.__counter_3_m Int)
(declare-var counter.ni_4._arrow._first_m Bool)
(declare-var counter.__counter_3_x Int)
(declare-var counter.ni_4._arrow._first_x Bool)
(declare-var counter.__counter_2 Bool)
(declare-var counter.pc Int)
(declare-rel counter_reset (Int Bool Int Bool))
(declare-rel counter_step (Int Int Bool Bool Int Int Bool Int Bool))

(rule (=> 
  (and 
       (= counter.__counter_3_m counter.__counter_3_c)
       (= counter.ni_4._arrow._first_m true)
  )
  (counter_reset counter.__counter_3_c
                 counter.ni_4._arrow._first_c
                 counter.__counter_3_m
                 counter.ni_4._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= counter.ni_4._arrow._first_m counter.ni_4._arrow._first_c)(and (= counter.__counter_2 (ite counter.ni_4._arrow._first_m true false))
                                                                    (= counter.ni_4._arrow._first_x false))
       (and (or (not (= counter.__counter_2 true))
               (= counter.pc counter.init))
            (or (not (= counter.__counter_2 false))
               (= counter.pc counter.__counter_3_c))
       )
       (and (or (not (= counter.reset true))
               (= counter.c counter.init))
            (or (not (= counter.reset false))
               (and (or (not (= (and (and counter.x (> counter.pc (- 1000))) (< counter.pc 1000)) true))
                       (= counter.c (+ counter.pc counter.incr)))
                    (or (not (= (and (and counter.x (> counter.pc (- 1000))) (< counter.pc 1000)) false))
                       (= counter.c counter.pc))
               ))
       )
       (= counter.__counter_3_x counter.c)
       )
  (counter_step counter.init
                counter.incr
                counter.x
                counter.reset
                counter.c
                counter.__counter_3_c
                counter.ni_4._arrow._first_c
                counter.__counter_3_x
                counter.ni_4._arrow._first_x)
))

; speed
(declare-var speed.beacon Bool)
(declare-var speed.second Bool)
(declare-var speed.late Bool)
(declare-var speed.early Bool)
(declare-var speed.__speed_2_c Bool)
(declare-var speed.__speed_3_c Bool)
(declare-var speed.ni_2._arrow._first_c Bool)
(declare-var speed.ni_3.counter.__counter_3_c Int)
(declare-var speed.ni_3.counter.ni_4._arrow._first_c Bool)
(declare-var speed.__speed_2_m Bool)
(declare-var speed.__speed_3_m Bool)
(declare-var speed.ni_2._arrow._first_m Bool)
(declare-var speed.ni_3.counter.__counter_3_m Int)
(declare-var speed.ni_3.counter.ni_4._arrow._first_m Bool)
(declare-var speed.__speed_2_x Bool)
(declare-var speed.__speed_3_x Bool)
(declare-var speed.ni_2._arrow._first_x Bool)
(declare-var speed.ni_3.counter.__counter_3_x Int)
(declare-var speed.ni_3.counter.ni_4._arrow._first_x Bool)
(declare-var speed.__speed_1 Bool)
(declare-var speed.diff Int)
(declare-var speed.incr Int)
(declare-rel speed_reset (Bool Bool Bool Int Bool Bool Bool Bool Int Bool))
(declare-rel speed_step (Bool Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Int Bool))

(rule (=> 
  (and 
       (= speed.__speed_2_m speed.__speed_2_c)
       (= speed.__speed_3_m speed.__speed_3_c)
       (counter_reset speed.ni_3.counter.__counter_3_c
                      speed.ni_3.counter.ni_4._arrow._first_c
                      speed.ni_3.counter.__counter_3_m
                      speed.ni_3.counter.ni_4._arrow._first_m)
       (= speed.ni_2._arrow._first_m true)
  )
  (speed_reset speed.__speed_2_c
               speed.__speed_3_c
               speed.ni_2._arrow._first_c
               speed.ni_3.counter.__counter_3_c
               speed.ni_3.counter.ni_4._arrow._first_c
               speed.__speed_2_m
               speed.__speed_3_m
               speed.ni_2._arrow._first_m
               speed.ni_3.counter.__counter_3_m
               speed.ni_3.counter.ni_4._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (or (not (= (and speed.beacon (not speed.second)) true))
               (= speed.incr 1))
            (or (not (= (and speed.beacon (not speed.second)) false))
               (and (or (not (= (and speed.second (not speed.beacon)) true))
                       (= speed.incr (- 1)))
                    (or (not (= (and speed.second (not speed.beacon)) false))
                       (= speed.incr 0))
               ))
       )
       (and (= speed.ni_3.counter.__counter_3_m speed.ni_3.counter.__counter_3_c)
            (= speed.ni_3.counter.ni_4._arrow._first_m speed.ni_3.counter.ni_4._arrow._first_c)
            )
       (counter_step 0
                     speed.incr
                     (or speed.beacon speed.second)
                     false
                     speed.diff
                     speed.ni_3.counter.__counter_3_m
                     speed.ni_3.counter.ni_4._arrow._first_m
                     speed.ni_3.counter.__counter_3_x
                     speed.ni_3.counter.ni_4._arrow._first_x)
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
              speed.ni_3.counter.__counter_3_c
              speed.ni_3.counter.ni_4._arrow._first_c
              speed.__speed_2_x
              speed.__speed_3_x
              speed.ni_2._arrow._first_x
              speed.ni_3.counter.__counter_3_x
              speed.ni_3.counter.ni_4._arrow._first_x)
))

; top
(declare-var top.beacon Bool)
(declare-var top.second Bool)
(declare-var top.OK Bool)
(declare-var top.__top_2_c Bool)
(declare-var top.__top_4_c Bool)
(declare-var top.ni_0._arrow._first_c Bool)
(declare-var top.ni_1.speed.__speed_2_c Bool)
(declare-var top.ni_1.speed.__speed_3_c Bool)
(declare-var top.ni_1.speed.ni_2._arrow._first_c Bool)
(declare-var top.ni_1.speed.ni_3.counter.__counter_3_c Int)
(declare-var top.ni_1.speed.ni_3.counter.ni_4._arrow._first_c Bool)
(declare-var top.__top_2_m Bool)
(declare-var top.__top_4_m Bool)
(declare-var top.ni_0._arrow._first_m Bool)
(declare-var top.ni_1.speed.__speed_2_m Bool)
(declare-var top.ni_1.speed.__speed_3_m Bool)
(declare-var top.ni_1.speed.ni_2._arrow._first_m Bool)
(declare-var top.ni_1.speed.ni_3.counter.__counter_3_m Int)
(declare-var top.ni_1.speed.ni_3.counter.ni_4._arrow._first_m Bool)
(declare-var top.__top_2_x Bool)
(declare-var top.__top_4_x Bool)
(declare-var top.ni_0._arrow._first_x Bool)
(declare-var top.ni_1.speed.__speed_2_x Bool)
(declare-var top.ni_1.speed.__speed_3_x Bool)
(declare-var top.ni_1.speed.ni_2._arrow._first_x Bool)
(declare-var top.ni_1.speed.ni_3.counter.__counter_3_x Int)
(declare-var top.ni_1.speed.ni_3.counter.ni_4._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.__top_3 Bool)
(declare-var top.__top_5 Bool)
(declare-var top.early Bool)
(declare-var top.late Bool)
(declare-rel top_reset (Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Int Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Int Bool))

(rule (=> 
  (and 
       (= top.__top_2_m top.__top_2_c)
       (= top.__top_4_m top.__top_4_c)
       (speed_reset top.ni_1.speed.__speed_2_c top.ni_1.speed.__speed_3_c
                    top.ni_1.speed.ni_2._arrow._first_c
                    top.ni_1.speed.ni_3.counter.__counter_3_c
                    top.ni_1.speed.ni_3.counter.ni_4._arrow._first_c
                    top.ni_1.speed.__speed_2_m top.ni_1.speed.__speed_3_m
                    top.ni_1.speed.ni_2._arrow._first_m
                    top.ni_1.speed.ni_3.counter.__counter_3_m
                    top.ni_1.speed.ni_3.counter.ni_4._arrow._first_m)
       (= top.ni_0._arrow._first_m true)
  )
  (top_reset top.__top_2_c
             top.__top_4_c
             top.ni_0._arrow._first_c
             top.ni_1.speed.__speed_2_c
             top.ni_1.speed.__speed_3_c
             top.ni_1.speed.ni_2._arrow._first_c
             top.ni_1.speed.ni_3.counter.__counter_3_c
             top.ni_1.speed.ni_3.counter.ni_4._arrow._first_c
             top.__top_2_m
             top.__top_4_m
             top.ni_0._arrow._first_m
             top.ni_1.speed.__speed_2_m
             top.ni_1.speed.__speed_3_m
             top.ni_1.speed.ni_2._arrow._first_m
             top.ni_1.speed.ni_3.counter.__counter_3_m
             top.ni_1.speed.ni_3.counter.ni_4._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_1.speed.__speed_2_m top.ni_1.speed.__speed_2_c)
            (= top.ni_1.speed.__speed_3_m top.ni_1.speed.__speed_3_c)
            (= top.ni_1.speed.ni_2._arrow._first_m top.ni_1.speed.ni_2._arrow._first_c)
            (= top.ni_1.speed.ni_3.counter.__counter_3_m top.ni_1.speed.ni_3.counter.__counter_3_c)
            (= top.ni_1.speed.ni_3.counter.ni_4._arrow._first_m top.ni_1.speed.ni_3.counter.ni_4._arrow._first_c)
            )
       (speed_step top.beacon
                   top.second
                   top.late
                   top.early
                   top.ni_1.speed.__speed_2_m
                   top.ni_1.speed.__speed_3_m
                   top.ni_1.speed.ni_2._arrow._first_m
                   top.ni_1.speed.ni_3.counter.__counter_3_m
                   top.ni_1.speed.ni_3.counter.ni_4._arrow._first_m
                   top.ni_1.speed.__speed_2_x
                   top.ni_1.speed.__speed_3_x
                   top.ni_1.speed.ni_2._arrow._first_x
                   top.ni_1.speed.ni_3.counter.__counter_3_x
                   top.ni_1.speed.ni_3.counter.ni_4._arrow._first_x)
       (= top.ni_0._arrow._first_m top.ni_0._arrow._first_c)(and (= top.__top_1 (ite top.ni_0._arrow._first_m true false))
                                                                 (= top.ni_0._arrow._first_x false))
       (and (or (not (= top.__top_1 true))
               (= top.__top_5 true))
            (or (not (= top.__top_1 false))
               (= top.__top_5 (not (and top.late top.__top_4_c))))
       )
       (= top.__top_4_x top.early)
       (and (or (not (= top.__top_1 true))
               (= top.__top_3 true))
            (or (not (= top.__top_1 false))
               (= top.__top_3 (not (and top.__top_2_c top.early))))
       )
       (= top.__top_2_x top.late)
       (= top.OK (and (and (not (and top.late top.early)) top.__top_5) top.__top_3))
       )
  (top_step top.beacon
            top.second
            top.OK
            top.__top_2_c
            top.__top_4_c
            top.ni_0._arrow._first_c
            top.ni_1.speed.__speed_2_c
            top.ni_1.speed.__speed_3_c
            top.ni_1.speed.ni_2._arrow._first_c
            top.ni_1.speed.ni_3.counter.__counter_3_c
            top.ni_1.speed.ni_3.counter.ni_4._arrow._first_c
            top.__top_2_x
            top.__top_4_x
            top.ni_0._arrow._first_x
            top.ni_1.speed.__speed_2_x
            top.ni_1.speed.__speed_3_x
            top.ni_1.speed.ni_2._arrow._first_x
            top.ni_1.speed.ni_3.counter.__counter_3_x
            top.ni_1.speed.ni_3.counter.ni_4._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Bool Bool Bool Bool Bool Int Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.__top_2_c top.__top_4_c top.ni_0._arrow._first_c top.ni_1.speed.__speed_2_c top.ni_1.speed.__speed_3_c top.ni_1.speed.ni_2._arrow._first_c top.ni_1.speed.ni_3.counter.__counter_3_c top.ni_1.speed.ni_3.counter.ni_4._arrow._first_c top.__top_2_m top.__top_4_m top.ni_0._arrow._first_m top.ni_1.speed.__speed_2_m top.ni_1.speed.__speed_3_m top.ni_1.speed.ni_2._arrow._first_m top.ni_1.speed.ni_3.counter.__counter_3_m top.ni_1.speed.ni_3.counter.ni_4._arrow._first_m)
       (top_step top.beacon top.second top.OK top.__top_2_m top.__top_4_m top.ni_0._arrow._first_m top.ni_1.speed.__speed_2_m top.ni_1.speed.__speed_3_m top.ni_1.speed.ni_2._arrow._first_m top.ni_1.speed.ni_3.counter.__counter_3_m top.ni_1.speed.ni_3.counter.ni_4._arrow._first_m top.__top_2_x top.__top_4_x top.ni_0._arrow._first_x top.ni_1.speed.__speed_2_x top.ni_1.speed.__speed_3_x top.ni_1.speed.ni_2._arrow._first_x top.ni_1.speed.ni_3.counter.__counter_3_x top.ni_1.speed.ni_3.counter.ni_4._arrow._first_x)
  )
  (MAIN top.__top_2_x top.__top_4_x top.ni_0._arrow._first_x top.ni_1.speed.__speed_2_x top.ni_1.speed.__speed_3_x top.ni_1.speed.ni_2._arrow._first_x top.ni_1.speed.ni_3.counter.__counter_3_x top.ni_1.speed.ni_3.counter.ni_4._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.__top_2_c top.__top_4_c top.ni_0._arrow._first_c top.ni_1.speed.__speed_2_c top.ni_1.speed.__speed_3_c top.ni_1.speed.ni_2._arrow._first_c top.ni_1.speed.ni_3.counter.__counter_3_c top.ni_1.speed.ni_3.counter.ni_4._arrow._first_c dummytop.OK)
       (top_step top.beacon top.second top.OK top.__top_2_c top.__top_4_c top.ni_0._arrow._first_c top.ni_1.speed.__speed_2_c top.ni_1.speed.__speed_3_c top.ni_1.speed.ni_2._arrow._first_c top.ni_1.speed.ni_3.counter.__counter_3_c top.ni_1.speed.ni_3.counter.ni_4._arrow._first_c top.__top_2_x top.__top_4_x top.ni_0._arrow._first_x top.ni_1.speed.__speed_2_x top.ni_1.speed.__speed_3_x top.ni_1.speed.ni_2._arrow._first_x top.ni_1.speed.ni_3.counter.__counter_3_x top.ni_1.speed.ni_3.counter.ni_4._arrow._first_x)
  )
  (MAIN top.__top_2_x top.__top_4_x top.ni_0._arrow._first_x top.ni_1.speed.__speed_2_x top.ni_1.speed.__speed_3_x top.ni_1.speed.ni_2._arrow._first_x top.ni_1.speed.ni_3.counter.__counter_3_x top.ni_1.speed.ni_3.counter.ni_4._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.__top_2_x top.__top_4_x top.ni_0._arrow._first_x top.ni_1.speed.__speed_2_x top.ni_1.speed.__speed_3_x top.ni_1.speed.ni_2._arrow._first_x top.ni_1.speed.ni_3.counter.__counter_3_x top.ni_1.speed.ni_3.counter.ni_4._arrow._first_x top.OK))
  ERR))
(query ERR)
