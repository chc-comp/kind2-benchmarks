; Statically linked libraries
; voter
(declare-var voter.input1 Real)
(declare-var voter.input2 Real)
(declare-var voter.input3 Real)
(declare-var voter.output Real)
(declare-var voter.__voter_10_c Real)
(declare-var voter.__voter_13_c Real)
(declare-var voter.__voter_14_c Real)
(declare-var voter.__voter_17_c Real)
(declare-var voter.__voter_18_c Real)
(declare-var voter.__voter_8_c Real)
(declare-var voter.__voter_9_c Real)
(declare-var voter.ni_0._arrow._first_c Bool)
(declare-var voter.__voter_10_m Real)
(declare-var voter.__voter_13_m Real)
(declare-var voter.__voter_14_m Real)
(declare-var voter.__voter_17_m Real)
(declare-var voter.__voter_18_m Real)
(declare-var voter.__voter_8_m Real)
(declare-var voter.__voter_9_m Real)
(declare-var voter.ni_0._arrow._first_m Bool)
(declare-var voter.__voter_10_x Real)
(declare-var voter.__voter_13_x Real)
(declare-var voter.__voter_14_x Real)
(declare-var voter.__voter_17_x Real)
(declare-var voter.__voter_18_x Real)
(declare-var voter.__voter_8_x Real)
(declare-var voter.__voter_9_x Real)
(declare-var voter.ni_0._arrow._first_x Bool)
(declare-var voter.__voter_7 Bool)
(declare-var voter.c2 Bool)
(declare-var voter.centering Real)
(declare-var voter.d2 Bool)
(declare-var voter.df1 Real)
(declare-var voter.df2 Real)
(declare-var voter.df3 Real)
(declare-var voter.equalization1 Real)
(declare-var voter.equalization2 Real)
(declare-var voter.equalization3 Real)
(declare-var voter.equalized1 Real)
(declare-var voter.equalized2 Real)
(declare-var voter.equalized3 Real)
(declare-var voter.satCentering Real)
(declare-var voter.st1 Real)
(declare-var voter.st2 Real)
(declare-var voter.st3 Real)
(declare-var voter.three_output Real)
(declare-rel voter_reset (Real Real Real Real Real Real Real Bool Real Real Real Real Real Real Real Bool))
(declare-rel voter_step (Real Real Real Real Real Real Real Real Real Real Real Bool Real Real Real Real Real Real Real Bool))

(rule (=> 
  (and 
       (= voter.__voter_10_m voter.__voter_10_c)
       (= voter.__voter_13_m voter.__voter_13_c)
       (= voter.__voter_14_m voter.__voter_14_c)
       (= voter.__voter_17_m voter.__voter_17_c)
       (= voter.__voter_18_m voter.__voter_18_c)
       (= voter.__voter_8_m voter.__voter_8_c)
       (= voter.__voter_9_m voter.__voter_9_c)
       (= voter.ni_0._arrow._first_m true)
  )
  (voter_reset voter.__voter_10_c
               voter.__voter_13_c
               voter.__voter_14_c
               voter.__voter_17_c
               voter.__voter_18_c
               voter.__voter_8_c
               voter.__voter_9_c
               voter.ni_0._arrow._first_c
               voter.__voter_10_m
               voter.__voter_13_m
               voter.__voter_14_m
               voter.__voter_17_m
               voter.__voter_18_m
               voter.__voter_8_m
               voter.__voter_9_m
               voter.ni_0._arrow._first_m)
))

; Step rule with Assertions 
(rule (=> 
  (and 
  (and (= voter.ni_0._arrow._first_m voter.ni_0._arrow._first_c)(and (= voter.__voter_7 (ite voter.ni_0._arrow._first_m true false))
                                                                    (= voter.ni_0._arrow._first_x false))
       (and (or (not (= voter.__voter_7 true))
               (= voter.equalization3 0.0))
            (or (not (= voter.__voter_7 false))
               (= voter.equalization3 (+ voter.__voter_10_c (* (- voter.__voter_9_c voter.__voter_8_c) 0.05))))
       )
       (= voter.equalized3 (- voter.input3 voter.equalization3))
       (and (or (not (= voter.__voter_7 true))
               (= voter.equalization2 0.0))
            (or (not (= voter.__voter_7 false))
               (= voter.equalization2 (+ voter.__voter_14_c (* (- voter.__voter_13_c voter.__voter_8_c) 0.05))))
       )
       (= voter.equalized2 (- voter.input2 voter.equalization2))
       (and (or (not (= voter.__voter_7 true))
               (= voter.equalization1 0.0))
            (or (not (= voter.__voter_7 false))
               (= voter.equalization1 (+ voter.__voter_18_c (* (- voter.__voter_17_c voter.__voter_8_c) 0.05))))
       )
       (= voter.equalized1 (- voter.input1 voter.equalization1))
       (= voter.c2 (> voter.equalized2 voter.equalized3))
       (and (or (not (= (= (> voter.equalized1 voter.equalized2) voter.c2) true))
               (= voter.three_output voter.equalized2))
            (or (not (= (= (> voter.equalized1 voter.equalized2) voter.c2) false))
               (and (or (not (= (= voter.c2 (> voter.equalized3 voter.equalized1)) true))
                       (= voter.three_output voter.equalized3))
                    (or (not (= (= voter.c2 (> voter.equalized3 voter.equalized1)) false))
                       (= voter.three_output voter.equalized1))
               ))
       )
       (= voter.df3 (- voter.equalized3 voter.three_output))
       (and (or (not (= (> voter.df3 0.5) true))
               (= voter.st3 0.5))
            (or (not (= (> voter.df3 0.5) false))
               (and (or (not (= (< voter.df3 (- 0.5)) true))
                       (= voter.st3 (- 0.5)))
                    (or (not (= (< voter.df3 (- 0.5)) false))
                       (= voter.st3 voter.df3))
               ))
       )
       (= voter.df2 (- voter.equalized2 voter.three_output))
       (and (or (not (= (> voter.df2 0.5) true))
               (= voter.st2 0.5))
            (or (not (= (> voter.df2 0.5) false))
               (and (or (not (= (< voter.df2 (- 0.5)) true))
                       (= voter.st2 (- 0.5)))
                    (or (not (= (< voter.df2 (- 0.5)) false))
                       (= voter.st2 voter.df2))
               ))
       )
       (= voter.df1 (- voter.equalized1 voter.three_output))
       (and (or (not (= (> voter.df1 0.5) true))
               (= voter.st1 0.5))
            (or (not (= (> voter.df1 0.5) false))
               (and (or (not (= (< voter.df1 (- 0.5)) true))
                       (= voter.st1 (- 0.5)))
                    (or (not (= (< voter.df1 (- 0.5)) false))
                       (= voter.st1 voter.df1))
               ))
       )
       (= voter.d2 (> voter.equalization2 voter.equalization3))
       (and (or (not (= (= (> voter.equalization1 voter.equalization2) voter.d2) true))
               (= voter.centering voter.equalization2))
            (or (not (= (= (> voter.equalization1 voter.equalization2) voter.d2) false))
               (and (or (not (= (= voter.d2 (> voter.equalization3 voter.equalization1)) true))
                       (= voter.centering voter.equalization3))
                    (or (not (= (= voter.d2 (> voter.equalization3 voter.equalization1)) false))
                       (= voter.centering voter.equalization1))
               ))
       )
       (and (or (not (= (> voter.centering 0.25) true))
               (= voter.satCentering 0.25))
            (or (not (= (> voter.centering 0.25) false))
               (and (or (not (= (< voter.centering (- 0.25)) true))
                       (= voter.satCentering (- 0.25)))
                    (or (not (= (< voter.centering (- 0.25)) false))
                       (= voter.satCentering voter.centering))
               ))
       )
       (= voter.output (div voter.three_output 3.0))
       (= voter.__voter_9_x voter.st3)
       (= voter.__voter_8_x voter.satCentering)
       (= voter.__voter_18_x voter.equalization1)
       (= voter.__voter_17_x voter.st1)
       (= voter.__voter_14_x voter.equalization2)
       (= voter.__voter_13_x voter.st2)
       (= voter.__voter_10_x voter.equalization3)
       )
 (and (> voter.input3 (- 1.2))
      (< voter.input3 1.2)
      (> voter.input2 (- 1.2))
      (< voter.input2 1.2)
      (> voter.input1 (- 1.2))
      (< voter.input1 1.2) ))
(voter_step voter.input1 voter.input2 voter.input3 voter.output voter.__voter_10_c voter.__voter_13_c voter.__voter_14_c voter.__voter_17_c voter.__voter_18_c voter.__voter_8_c voter.__voter_9_c voter.ni_0._arrow._first_c voter.__voter_10_x voter.__voter_13_x voter.__voter_14_x voter.__voter_17_x voter.__voter_18_x voter.__voter_8_x voter.__voter_9_x voter.ni_0._arrow._first_x)
))

