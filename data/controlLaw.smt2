; Statically linked libraries
; controlLaw
(declare-var controlLaw.in1 Real)
(declare-var controlLaw.in2 Real)
(declare-var controlLaw.integ Real)
(declare-var controlLaw.__controlLaw_2_c Real)
(declare-var controlLaw.__controlLaw_5_c Real)
(declare-var controlLaw.ni_0._arrow._first_c Bool)
(declare-var controlLaw.__controlLaw_2_m Real)
(declare-var controlLaw.__controlLaw_5_m Real)
(declare-var controlLaw.ni_0._arrow._first_m Bool)
(declare-var controlLaw.__controlLaw_2_x Real)
(declare-var controlLaw.__controlLaw_5_x Real)
(declare-var controlLaw.ni_0._arrow._first_x Bool)
(declare-var controlLaw.__controlLaw_1 Bool)
(declare-var controlLaw.__controlLaw_4 Real)
(declare-var controlLaw.dtf Real)
(declare-var controlLaw.inp Real)
(declare-var controlLaw.sum1 Real)
(declare-rel controlLaw_reset (Real Real Bool Real Real Bool))
(declare-rel controlLaw_step (Real Real Real Real Real Bool Real Real Bool))

(rule (=> 
  (and 
       (= controlLaw.__controlLaw_2_m controlLaw.__controlLaw_2_c)
       (= controlLaw.__controlLaw_5_m controlLaw.__controlLaw_5_c)
       (= controlLaw.ni_0._arrow._first_m true)
  )
  (controlLaw_reset controlLaw.__controlLaw_2_c
                    controlLaw.__controlLaw_5_c
                    controlLaw.ni_0._arrow._first_c
                    controlLaw.__controlLaw_2_m
                    controlLaw.__controlLaw_5_m
                    controlLaw.ni_0._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= controlLaw.ni_0._arrow._first_m controlLaw.ni_0._arrow._first_c)
       (and (= controlLaw.__controlLaw_1 (ite controlLaw.ni_0._arrow._first_m true false))
            (= controlLaw.ni_0._arrow._first_x false))
       (and (or (not (= controlLaw.__controlLaw_1 true))
               (= controlLaw.dtf 0.0))
            (or (not (= controlLaw.__controlLaw_1 false))
               (= controlLaw.dtf (+ controlLaw.in2 (* 0.9608 controlLaw.__controlLaw_2_c))))
       )
       (= controlLaw.inp (- controlLaw.in1 (* 0.0392 controlLaw.dtf)))
       (and (or (not (= controlLaw.__controlLaw_1 true))
               (= controlLaw.sum1 0.0))
            (or (not (= controlLaw.__controlLaw_1 false))
               (= controlLaw.sum1 (+ (* 0.04 controlLaw.__controlLaw_5_c) (* 0.15 controlLaw.inp))))
       )
       (and (or (not (= (or (or (and (<= controlLaw.sum1 1.0) (>= controlLaw.sum1 (- 1.0))) (and (>= controlLaw.sum1 1.0) (< controlLaw.inp 0.0))) (and (<= controlLaw.sum1 (- 1.0)) (> controlLaw.inp 0.0))) true))
               (= controlLaw.__controlLaw_4 controlLaw.inp))
            (or (not (= (or (or (and (<= controlLaw.sum1 1.0) (>= controlLaw.sum1 (- 1.0))) (and (>= controlLaw.sum1 1.0) (< controlLaw.inp 0.0))) (and (<= controlLaw.sum1 (- 1.0)) (> controlLaw.inp 0.0))) false))
               (= controlLaw.__controlLaw_4 0.0))
       )
       (and (or (not (= controlLaw.__controlLaw_1 true))
               (= controlLaw.integ 0.0))
            (or (not (= controlLaw.__controlLaw_1 false))
               (= controlLaw.integ (+ controlLaw.__controlLaw_5_c controlLaw.__controlLaw_4)))
       )
       (= controlLaw.__controlLaw_5_x controlLaw.integ)
       (= controlLaw.__controlLaw_2_x controlLaw.dtf)
       )
  (controlLaw_step controlLaw.in1
                   controlLaw.in2
                   controlLaw.integ
                   controlLaw.__controlLaw_2_c
                   controlLaw.__controlLaw_5_c
                   controlLaw.ni_0._arrow._first_c
                   controlLaw.__controlLaw_2_x
                   controlLaw.__controlLaw_5_x
                   controlLaw.ni_0._arrow._first_x)
))

