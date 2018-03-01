; Statically linked libraries
; redge
(declare-var redge.signal Bool)
(declare-var redge.r Bool)
(declare-var redge.__redge_2_c Bool)
(declare-var redge.ni_10._arrow._first_c Bool)
(declare-var redge.__redge_2_m Bool)
(declare-var redge.ni_10._arrow._first_m Bool)
(declare-var redge.__redge_2_x Bool)
(declare-var redge.ni_10._arrow._first_x Bool)
(declare-var redge.__redge_1 Bool)
(declare-rel redge_reset (Bool Bool Bool Bool))
(declare-rel redge_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= redge.__redge_2_m redge.__redge_2_c)
       (= redge.ni_10._arrow._first_m true)
  )
  (redge_reset redge.__redge_2_c
               redge.ni_10._arrow._first_c
               redge.__redge_2_m
               redge.ni_10._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= redge.ni_10._arrow._first_m redge.ni_10._arrow._first_c)(and (= redge.__redge_1 (ite redge.ni_10._arrow._first_m true false))
                                                                    (= redge.ni_10._arrow._first_x false))
       (and (or (not (= redge.__redge_1 true))
               (= redge.r redge.signal))
            (or (not (= redge.__redge_1 false))
               (= redge.r (or redge.signal redge.__redge_2_c)))
       )
       (= redge.__redge_2_x (not redge.signal))
       )
  (redge_step redge.signal
              redge.r
              redge.__redge_2_c
              redge.ni_10._arrow._first_c
              redge.__redge_2_x
              redge.ni_10._arrow._first_x)
))

; fedge
(declare-var fedge.signal Bool)
(declare-var fedge.f Bool)
(declare-var fedge.ni_9.redge.__redge_2_c Bool)
(declare-var fedge.ni_9.redge.ni_10._arrow._first_c Bool)
(declare-var fedge.ni_9.redge.__redge_2_m Bool)
(declare-var fedge.ni_9.redge.ni_10._arrow._first_m Bool)
(declare-var fedge.ni_9.redge.__redge_2_x Bool)
(declare-var fedge.ni_9.redge.ni_10._arrow._first_x Bool)
(declare-rel fedge_reset (Bool Bool Bool Bool))
(declare-rel fedge_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       
       (redge_reset fedge.ni_9.redge.__redge_2_c
                    fedge.ni_9.redge.ni_10._arrow._first_c
                    fedge.ni_9.redge.__redge_2_m
                    fedge.ni_9.redge.ni_10._arrow._first_m)
  )
  (fedge_reset fedge.ni_9.redge.__redge_2_c
               fedge.ni_9.redge.ni_10._arrow._first_c
               fedge.ni_9.redge.__redge_2_m
               fedge.ni_9.redge.ni_10._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= fedge.ni_9.redge.__redge_2_m fedge.ni_9.redge.__redge_2_c)
       (= fedge.ni_9.redge.ni_10._arrow._first_m fedge.ni_9.redge.ni_10._arrow._first_c)
       )
  (redge_step (not fedge.signal)
              fedge.f
              fedge.ni_9.redge.__redge_2_m
              fedge.ni_9.redge.ni_10._arrow._first_m
              fedge.ni_9.redge.__redge_2_x
              fedge.ni_9.redge.ni_10._arrow._first_x)
  (fedge_step fedge.signal
              fedge.f
              fedge.ni_9.redge.__redge_2_c
              fedge.ni_9.redge.ni_10._arrow._first_c
              fedge.ni_9.redge.__redge_2_x
              fedge.ni_9.redge.ni_10._arrow._first_x)
))

; sustain
(declare-var sustain.on Bool)
(declare-var sustain.off Bool)
(declare-var sustain.s Bool)
(declare-var sustain.__sustain_2_c Bool)
(declare-var sustain.ni_8._arrow._first_c Bool)
(declare-var sustain.__sustain_2_m Bool)
(declare-var sustain.ni_8._arrow._first_m Bool)
(declare-var sustain.__sustain_2_x Bool)
(declare-var sustain.ni_8._arrow._first_x Bool)
(declare-var sustain.__sustain_1 Bool)
(declare-rel sustain_reset (Bool Bool Bool Bool))
(declare-rel sustain_step (Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= sustain.__sustain_2_m sustain.__sustain_2_c)
       (= sustain.ni_8._arrow._first_m true)
  )
  (sustain_reset sustain.__sustain_2_c
                 sustain.ni_8._arrow._first_c
                 sustain.__sustain_2_m
                 sustain.ni_8._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= sustain.ni_8._arrow._first_m sustain.ni_8._arrow._first_c)(and (= sustain.__sustain_1 (ite sustain.ni_8._arrow._first_m true false))
                                                                    (= sustain.ni_8._arrow._first_x false))
       (and (or (not (= sustain.__sustain_1 true))
               (= sustain.s sustain.on))
            (or (not (= sustain.__sustain_1 false))
               (and (or (not (= sustain.on true))
                       (= sustain.s true))
                    (or (not (= sustain.on false))
                       (and (or (not (= sustain.off true))
                               (= sustain.s false))
                            (or (not (= sustain.off false))
                               (= sustain.s sustain.__sustain_2_c))
                       ))
               ))
       )
       (= sustain.__sustain_2_x sustain.s)
       )
  (sustain_step sustain.on
                sustain.off
                sustain.s
                sustain.__sustain_2_c
                sustain.ni_8._arrow._first_c
                sustain.__sustain_2_x
                sustain.ni_8._arrow._first_x)
))

; top
(declare-var top.MaySafelyMove Bool)
(declare-var top.TryToMove1 Bool)
(declare-var top.TryToMove2 Bool)
(declare-var top.OK Bool)
(declare-var top.__top_10_c Bool)
(declare-var top.__top_8_c Bool)
(declare-var top.ni_0.redge.__redge_2_c Bool)
(declare-var top.ni_0.redge.ni_10._arrow._first_c Bool)
(declare-var top.ni_1.redge.__redge_2_c Bool)
(declare-var top.ni_1.redge.ni_10._arrow._first_c Bool)
(declare-var top.ni_2.sustain.__sustain_2_c Bool)
(declare-var top.ni_2.sustain.ni_8._arrow._first_c Bool)
(declare-var top.ni_3.redge.__redge_2_c Bool)
(declare-var top.ni_3.redge.ni_10._arrow._first_c Bool)
(declare-var top.ni_4.redge.__redge_2_c Bool)
(declare-var top.ni_4.redge.ni_10._arrow._first_c Bool)
(declare-var top.ni_5._arrow._first_c Bool)
(declare-var top.ni_6.fedge.ni_9.redge.__redge_2_c Bool)
(declare-var top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_c Bool)
(declare-var top.ni_7.fedge.ni_9.redge.__redge_2_c Bool)
(declare-var top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_c Bool)
(declare-var top.__top_10_m Bool)
(declare-var top.__top_8_m Bool)
(declare-var top.ni_0.redge.__redge_2_m Bool)
(declare-var top.ni_0.redge.ni_10._arrow._first_m Bool)
(declare-var top.ni_1.redge.__redge_2_m Bool)
(declare-var top.ni_1.redge.ni_10._arrow._first_m Bool)
(declare-var top.ni_2.sustain.__sustain_2_m Bool)
(declare-var top.ni_2.sustain.ni_8._arrow._first_m Bool)
(declare-var top.ni_3.redge.__redge_2_m Bool)
(declare-var top.ni_3.redge.ni_10._arrow._first_m Bool)
(declare-var top.ni_4.redge.__redge_2_m Bool)
(declare-var top.ni_4.redge.ni_10._arrow._first_m Bool)
(declare-var top.ni_5._arrow._first_m Bool)
(declare-var top.ni_6.fedge.ni_9.redge.__redge_2_m Bool)
(declare-var top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_m Bool)
(declare-var top.ni_7.fedge.ni_9.redge.__redge_2_m Bool)
(declare-var top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_m Bool)
(declare-var top.__top_10_x Bool)
(declare-var top.__top_8_x Bool)
(declare-var top.ni_0.redge.__redge_2_x Bool)
(declare-var top.ni_0.redge.ni_10._arrow._first_x Bool)
(declare-var top.ni_1.redge.__redge_2_x Bool)
(declare-var top.ni_1.redge.ni_10._arrow._first_x Bool)
(declare-var top.ni_2.sustain.__sustain_2_x Bool)
(declare-var top.ni_2.sustain.ni_8._arrow._first_x Bool)
(declare-var top.ni_3.redge.__redge_2_x Bool)
(declare-var top.ni_3.redge.ni_10._arrow._first_x Bool)
(declare-var top.ni_4.redge.__redge_2_x Bool)
(declare-var top.ni_4.redge.ni_10._arrow._first_x Bool)
(declare-var top.ni_5._arrow._first_x Bool)
(declare-var top.ni_6.fedge.ni_9.redge.__redge_2_x Bool)
(declare-var top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_x Bool)
(declare-var top.ni_7.fedge.ni_9.redge.__redge_2_x Bool)
(declare-var top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_x Bool)
(declare-var top.MayMove1 Bool)
(declare-var top.MayMove2 Bool)
(declare-var top.__top_1 Bool)
(declare-var top.__top_11 Bool)
(declare-var top.__top_2 Bool)
(declare-var top.__top_3 Bool)
(declare-var top.__top_5 Bool)
(declare-var top.__top_6 Bool)
(declare-var top.__top_7 Bool)
(declare-var top.__top_9 Bool)
(declare-var top.moving Bool)
(declare-var top.start1 Bool)
(declare-var top.start2 Bool)
(declare-var top.stop Bool)
(declare-rel top_reset (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= top.__top_10_m top.__top_10_c)
       (= top.__top_8_m top.__top_8_c)
       (fedge_reset top.ni_7.fedge.ni_9.redge.__redge_2_c
                    top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_c
                    top.ni_7.fedge.ni_9.redge.__redge_2_m
                    top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_m)
       (fedge_reset top.ni_6.fedge.ni_9.redge.__redge_2_c
                    top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_c
                    top.ni_6.fedge.ni_9.redge.__redge_2_m
                    top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_m)
       (= top.ni_5._arrow._first_m true)
       (redge_reset top.ni_4.redge.__redge_2_c
                    top.ni_4.redge.ni_10._arrow._first_c
                    top.ni_4.redge.__redge_2_m
                    top.ni_4.redge.ni_10._arrow._first_m)
       (redge_reset top.ni_3.redge.__redge_2_c
                    top.ni_3.redge.ni_10._arrow._first_c
                    top.ni_3.redge.__redge_2_m
                    top.ni_3.redge.ni_10._arrow._first_m)
       (sustain_reset top.ni_2.sustain.__sustain_2_c
                      top.ni_2.sustain.ni_8._arrow._first_c
                      top.ni_2.sustain.__sustain_2_m
                      top.ni_2.sustain.ni_8._arrow._first_m)
       (redge_reset top.ni_1.redge.__redge_2_c
                    top.ni_1.redge.ni_10._arrow._first_c
                    top.ni_1.redge.__redge_2_m
                    top.ni_1.redge.ni_10._arrow._first_m)
       (redge_reset top.ni_0.redge.__redge_2_c
                    top.ni_0.redge.ni_10._arrow._first_c
                    top.ni_0.redge.__redge_2_m
                    top.ni_0.redge.ni_10._arrow._first_m)
  )
  (top_reset top.__top_10_c
             top.__top_8_c
             top.ni_0.redge.__redge_2_c
             top.ni_0.redge.ni_10._arrow._first_c
             top.ni_1.redge.__redge_2_c
             top.ni_1.redge.ni_10._arrow._first_c
             top.ni_2.sustain.__sustain_2_c
             top.ni_2.sustain.ni_8._arrow._first_c
             top.ni_3.redge.__redge_2_c
             top.ni_3.redge.ni_10._arrow._first_c
             top.ni_4.redge.__redge_2_c
             top.ni_4.redge.ni_10._arrow._first_c
             top.ni_5._arrow._first_c
             top.ni_6.fedge.ni_9.redge.__redge_2_c
             top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_c
             top.ni_7.fedge.ni_9.redge.__redge_2_c
             top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_c
             top.__top_10_m
             top.__top_8_m
             top.ni_0.redge.__redge_2_m
             top.ni_0.redge.ni_10._arrow._first_m
             top.ni_1.redge.__redge_2_m
             top.ni_1.redge.ni_10._arrow._first_m
             top.ni_2.sustain.__sustain_2_m
             top.ni_2.sustain.ni_8._arrow._first_m
             top.ni_3.redge.__redge_2_m
             top.ni_3.redge.ni_10._arrow._first_m
             top.ni_4.redge.__redge_2_m
             top.ni_4.redge.ni_10._arrow._first_m
             top.ni_5._arrow._first_m
             top.ni_6.fedge.ni_9.redge.__redge_2_m
             top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_m
             top.ni_7.fedge.ni_9.redge.__redge_2_m
             top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= top.MayMove1 (and top.TryToMove1 top.MaySafelyMove))
       (and (= top.ni_7.fedge.ni_9.redge.__redge_2_m top.ni_7.fedge.ni_9.redge.__redge_2_c)
            (= top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_m top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_c)
            )
       (fedge_step top.MayMove1
                   top.__top_7
                   top.ni_7.fedge.ni_9.redge.__redge_2_m
                   top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_m
                   top.ni_7.fedge.ni_9.redge.__redge_2_x
                   top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_x)
       (= top.MayMove2 (and top.TryToMove2 top.MaySafelyMove))
       (and (= top.ni_6.fedge.ni_9.redge.__redge_2_m top.ni_6.fedge.ni_9.redge.__redge_2_c)
            (= top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_m top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_c)
            )
       (fedge_step top.MayMove2
                   top.__top_6
                   top.ni_6.fedge.ni_9.redge.__redge_2_m
                   top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_m
                   top.ni_6.fedge.ni_9.redge.__redge_2_x
                   top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_x)
       (= top.stop (or top.__top_7 top.__top_6))
       (= top.ni_5._arrow._first_m top.ni_5._arrow._first_c)(and (= top.__top_1 (ite top.ni_5._arrow._first_m true false))
                                                                 (= top.ni_5._arrow._first_x false))
       (and (or (not (= top.__top_1 true))
               (= top.__top_9 true))
            (or (not (= top.__top_1 false))
               (= top.__top_9 top.__top_8_c))
       )
       (and (= top.ni_4.redge.__redge_2_m top.ni_4.redge.__redge_2_c)
            (= top.ni_4.redge.ni_10._arrow._first_m top.ni_4.redge.ni_10._arrow._first_c)
            )
       (redge_step (and top.MayMove2 top.__top_9)
                   top.start2
                   top.ni_4.redge.__redge_2_m
                   top.ni_4.redge.ni_10._arrow._first_m
                   top.ni_4.redge.__redge_2_x
                   top.ni_4.redge.ni_10._arrow._first_x)
       (and (or (not (= top.__top_1 true))
               (= top.__top_11 true))
            (or (not (= top.__top_1 false))
               (= top.__top_11 top.__top_10_c))
       )
       (and (= top.ni_3.redge.__redge_2_m top.ni_3.redge.__redge_2_c)
            (= top.ni_3.redge.ni_10._arrow._first_m top.ni_3.redge.ni_10._arrow._first_c)
            )
       (redge_step (and top.MayMove1 top.__top_11)
                   top.start1
                   top.ni_3.redge.__redge_2_m
                   top.ni_3.redge.ni_10._arrow._first_m
                   top.ni_3.redge.__redge_2_x
                   top.ni_3.redge.ni_10._arrow._first_x)
       (and (= top.ni_2.sustain.__sustain_2_m top.ni_2.sustain.__sustain_2_c)
            (= top.ni_2.sustain.ni_8._arrow._first_m top.ni_2.sustain.ni_8._arrow._first_c)
            )
       (sustain_step (or top.start1 top.start2)
                     top.stop
                     top.moving
                     top.ni_2.sustain.__sustain_2_m
                     top.ni_2.sustain.ni_8._arrow._first_m
                     top.ni_2.sustain.__sustain_2_x
                     top.ni_2.sustain.ni_8._arrow._first_x)
       (= top.__top_8_x (not top.TryToMove1))
       (and (or (not (= top.moving true))
               (= top.__top_5 top.MaySafelyMove))
            (or (not (= top.moving false))
               (= top.__top_5 true))
       )
       (and (= top.ni_1.redge.__redge_2_m top.ni_1.redge.__redge_2_c)
            (= top.ni_1.redge.ni_10._arrow._first_m top.ni_1.redge.ni_10._arrow._first_c)
            )
       (redge_step top.TryToMove1
                   top.__top_3
                   top.ni_1.redge.__redge_2_m
                   top.ni_1.redge.ni_10._arrow._first_m
                   top.ni_1.redge.__redge_2_x
                   top.ni_1.redge.ni_10._arrow._first_x)
       (and (= top.ni_0.redge.__redge_2_m top.ni_0.redge.__redge_2_c)
            (= top.ni_0.redge.ni_10._arrow._first_m top.ni_0.redge.ni_10._arrow._first_c)
            )
       (redge_step top.TryToMove2
                   top.__top_2
                   top.ni_0.redge.__redge_2_m
                   top.ni_0.redge.ni_10._arrow._first_m
                   top.ni_0.redge.__redge_2_x
                   top.ni_0.redge.ni_10._arrow._first_x)
       (= top.__top_10_x (not top.TryToMove2))
       (and (or (not (= top.__top_1 true))
               (= top.OK true))
            (or (not (= top.__top_1 false))
               (and (or (not (= (or (not top.__top_3) (not top.__top_2)) true))
                       (= top.OK (and (and (or (or (and (not top.start1) (not top.start2)) (and (not top.start2) (not top.stop))) (and (not top.start1) (not top.stop))) (not (and (and top.start1 top.start2) top.stop))) top.__top_5)))
                    (or (not (= (or (not top.__top_3) (not top.__top_2)) false))
                       (= top.OK true))
               ))
       )
       )
  (top_step top.MaySafelyMove
            top.TryToMove1
            top.TryToMove2
            top.OK
            top.__top_10_c
            top.__top_8_c
            top.ni_0.redge.__redge_2_c
            top.ni_0.redge.ni_10._arrow._first_c
            top.ni_1.redge.__redge_2_c
            top.ni_1.redge.ni_10._arrow._first_c
            top.ni_2.sustain.__sustain_2_c
            top.ni_2.sustain.ni_8._arrow._first_c
            top.ni_3.redge.__redge_2_c
            top.ni_3.redge.ni_10._arrow._first_c
            top.ni_4.redge.__redge_2_c
            top.ni_4.redge.ni_10._arrow._first_c
            top.ni_5._arrow._first_c
            top.ni_6.fedge.ni_9.redge.__redge_2_c
            top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_c
            top.ni_7.fedge.ni_9.redge.__redge_2_c
            top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_c
            top.__top_10_x
            top.__top_8_x
            top.ni_0.redge.__redge_2_x
            top.ni_0.redge.ni_10._arrow._first_x
            top.ni_1.redge.__redge_2_x
            top.ni_1.redge.ni_10._arrow._first_x
            top.ni_2.sustain.__sustain_2_x
            top.ni_2.sustain.ni_8._arrow._first_x
            top.ni_3.redge.__redge_2_x
            top.ni_3.redge.ni_10._arrow._first_x
            top.ni_4.redge.__redge_2_x
            top.ni_4.redge.ni_10._arrow._first_x
            top.ni_5._arrow._first_x
            top.ni_6.fedge.ni_9.redge.__redge_2_x
            top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_x
            top.ni_7.fedge.ni_9.redge.__redge_2_x
            top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.__top_10_c top.__top_8_c top.ni_0.redge.__redge_2_c top.ni_0.redge.ni_10._arrow._first_c top.ni_1.redge.__redge_2_c top.ni_1.redge.ni_10._arrow._first_c top.ni_2.sustain.__sustain_2_c top.ni_2.sustain.ni_8._arrow._first_c top.ni_3.redge.__redge_2_c top.ni_3.redge.ni_10._arrow._first_c top.ni_4.redge.__redge_2_c top.ni_4.redge.ni_10._arrow._first_c top.ni_5._arrow._first_c top.ni_6.fedge.ni_9.redge.__redge_2_c top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_c top.ni_7.fedge.ni_9.redge.__redge_2_c top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_c top.__top_10_m top.__top_8_m top.ni_0.redge.__redge_2_m top.ni_0.redge.ni_10._arrow._first_m top.ni_1.redge.__redge_2_m top.ni_1.redge.ni_10._arrow._first_m top.ni_2.sustain.__sustain_2_m top.ni_2.sustain.ni_8._arrow._first_m top.ni_3.redge.__redge_2_m top.ni_3.redge.ni_10._arrow._first_m top.ni_4.redge.__redge_2_m top.ni_4.redge.ni_10._arrow._first_m top.ni_5._arrow._first_m top.ni_6.fedge.ni_9.redge.__redge_2_m top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_m top.ni_7.fedge.ni_9.redge.__redge_2_m top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_m)
       (top_step top.MaySafelyMove top.TryToMove1 top.TryToMove2 top.OK top.__top_10_m top.__top_8_m top.ni_0.redge.__redge_2_m top.ni_0.redge.ni_10._arrow._first_m top.ni_1.redge.__redge_2_m top.ni_1.redge.ni_10._arrow._first_m top.ni_2.sustain.__sustain_2_m top.ni_2.sustain.ni_8._arrow._first_m top.ni_3.redge.__redge_2_m top.ni_3.redge.ni_10._arrow._first_m top.ni_4.redge.__redge_2_m top.ni_4.redge.ni_10._arrow._first_m top.ni_5._arrow._first_m top.ni_6.fedge.ni_9.redge.__redge_2_m top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_m top.ni_7.fedge.ni_9.redge.__redge_2_m top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_m top.__top_10_x top.__top_8_x top.ni_0.redge.__redge_2_x top.ni_0.redge.ni_10._arrow._first_x top.ni_1.redge.__redge_2_x top.ni_1.redge.ni_10._arrow._first_x top.ni_2.sustain.__sustain_2_x top.ni_2.sustain.ni_8._arrow._first_x top.ni_3.redge.__redge_2_x top.ni_3.redge.ni_10._arrow._first_x top.ni_4.redge.__redge_2_x top.ni_4.redge.ni_10._arrow._first_x top.ni_5._arrow._first_x top.ni_6.fedge.ni_9.redge.__redge_2_x top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_x top.ni_7.fedge.ni_9.redge.__redge_2_x top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_x)
  )
  (MAIN top.__top_10_x top.__top_8_x top.ni_0.redge.__redge_2_x top.ni_0.redge.ni_10._arrow._first_x top.ni_1.redge.__redge_2_x top.ni_1.redge.ni_10._arrow._first_x top.ni_2.sustain.__sustain_2_x top.ni_2.sustain.ni_8._arrow._first_x top.ni_3.redge.__redge_2_x top.ni_3.redge.ni_10._arrow._first_x top.ni_4.redge.__redge_2_x top.ni_4.redge.ni_10._arrow._first_x top.ni_5._arrow._first_x top.ni_6.fedge.ni_9.redge.__redge_2_x top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_x top.ni_7.fedge.ni_9.redge.__redge_2_x top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.__top_10_c top.__top_8_c top.ni_0.redge.__redge_2_c top.ni_0.redge.ni_10._arrow._first_c top.ni_1.redge.__redge_2_c top.ni_1.redge.ni_10._arrow._first_c top.ni_2.sustain.__sustain_2_c top.ni_2.sustain.ni_8._arrow._first_c top.ni_3.redge.__redge_2_c top.ni_3.redge.ni_10._arrow._first_c top.ni_4.redge.__redge_2_c top.ni_4.redge.ni_10._arrow._first_c top.ni_5._arrow._first_c top.ni_6.fedge.ni_9.redge.__redge_2_c top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_c top.ni_7.fedge.ni_9.redge.__redge_2_c top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_c dummytop.OK)
       (top_step top.MaySafelyMove top.TryToMove1 top.TryToMove2 top.OK top.__top_10_c top.__top_8_c top.ni_0.redge.__redge_2_c top.ni_0.redge.ni_10._arrow._first_c top.ni_1.redge.__redge_2_c top.ni_1.redge.ni_10._arrow._first_c top.ni_2.sustain.__sustain_2_c top.ni_2.sustain.ni_8._arrow._first_c top.ni_3.redge.__redge_2_c top.ni_3.redge.ni_10._arrow._first_c top.ni_4.redge.__redge_2_c top.ni_4.redge.ni_10._arrow._first_c top.ni_5._arrow._first_c top.ni_6.fedge.ni_9.redge.__redge_2_c top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_c top.ni_7.fedge.ni_9.redge.__redge_2_c top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_c top.__top_10_x top.__top_8_x top.ni_0.redge.__redge_2_x top.ni_0.redge.ni_10._arrow._first_x top.ni_1.redge.__redge_2_x top.ni_1.redge.ni_10._arrow._first_x top.ni_2.sustain.__sustain_2_x top.ni_2.sustain.ni_8._arrow._first_x top.ni_3.redge.__redge_2_x top.ni_3.redge.ni_10._arrow._first_x top.ni_4.redge.__redge_2_x top.ni_4.redge.ni_10._arrow._first_x top.ni_5._arrow._first_x top.ni_6.fedge.ni_9.redge.__redge_2_x top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_x top.ni_7.fedge.ni_9.redge.__redge_2_x top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_x)
  )
  (MAIN top.__top_10_x top.__top_8_x top.ni_0.redge.__redge_2_x top.ni_0.redge.ni_10._arrow._first_x top.ni_1.redge.__redge_2_x top.ni_1.redge.ni_10._arrow._first_x top.ni_2.sustain.__sustain_2_x top.ni_2.sustain.ni_8._arrow._first_x top.ni_3.redge.__redge_2_x top.ni_3.redge.ni_10._arrow._first_x top.ni_4.redge.__redge_2_x top.ni_4.redge.ni_10._arrow._first_x top.ni_5._arrow._first_x top.ni_6.fedge.ni_9.redge.__redge_2_x top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_x top.ni_7.fedge.ni_9.redge.__redge_2_x top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.__top_10_x top.__top_8_x top.ni_0.redge.__redge_2_x top.ni_0.redge.ni_10._arrow._first_x top.ni_1.redge.__redge_2_x top.ni_1.redge.ni_10._arrow._first_x top.ni_2.sustain.__sustain_2_x top.ni_2.sustain.ni_8._arrow._first_x top.ni_3.redge.__redge_2_x top.ni_3.redge.ni_10._arrow._first_x top.ni_4.redge.__redge_2_x top.ni_4.redge.ni_10._arrow._first_x top.ni_5._arrow._first_x top.ni_6.fedge.ni_9.redge.__redge_2_x top.ni_6.fedge.ni_9.redge.ni_10._arrow._first_x top.ni_7.fedge.ni_9.redge.__redge_2_x top.ni_7.fedge.ni_9.redge.ni_10._arrow._first_x top.OK))
  ERR))
(query ERR)
