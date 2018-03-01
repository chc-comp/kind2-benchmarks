; Statically linked libraries
; Age
(declare-var Age.P1 Bool)
(declare-var Age.Count Int)
(declare-var Age.__Age_2_c Bool)
(declare-var Age.__Age_3_c Int)
(declare-var Age.ni_9._arrow._first_c Bool)
(declare-var Age.__Age_2_m Bool)
(declare-var Age.__Age_3_m Int)
(declare-var Age.ni_9._arrow._first_m Bool)
(declare-var Age.__Age_2_x Bool)
(declare-var Age.__Age_3_x Int)
(declare-var Age.ni_9._arrow._first_x Bool)
(declare-var Age.__Age_1 Bool)
(declare-rel Age_reset (Bool Int Bool Bool Int Bool))
(declare-rel Age_step (Bool Int Bool Int Bool Bool Int Bool))

(rule (=> 
  (and 
       (= Age.__Age_2_m Age.__Age_2_c)
       (= Age.__Age_3_m Age.__Age_3_c)
       (= Age.ni_9._arrow._first_m true)
  )
  (Age_reset Age.__Age_2_c
             Age.__Age_3_c
             Age.ni_9._arrow._first_c
             Age.__Age_2_m
             Age.__Age_3_m
             Age.ni_9._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Age.ni_9._arrow._first_m Age.ni_9._arrow._first_c)(and (= Age.__Age_1 (ite Age.ni_9._arrow._first_m true false))
                                                                 (= Age.ni_9._arrow._first_x false))
       (and (or (not (= Age.__Age_1 true))
               (= Age.Count 0))
            (or (not (= Age.__Age_1 false))
               (and (or (not (= Age.__Age_2_c true))
                       (= Age.Count (+ Age.__Age_3_c 1)))
                    (or (not (= Age.__Age_2_c false))
                       (= Age.Count 0))
               ))
       )
       (= Age.__Age_3_x Age.Count)
       (= Age.__Age_2_x Age.P1)
       )
  (Age_step Age.P1
            Age.Count
            Age.__Age_2_c
            Age.__Age_3_c
            Age.ni_9._arrow._first_c
            Age.__Age_2_x
            Age.__Age_3_x
            Age.ni_9._arrow._first_x)
))

; Dursince
(declare-var Dursince.P1 Bool)
(declare-var Dursince.Q Bool)
(declare-var Dursince.Count Int)
(declare-var Dursince.__Dursince_2_c Bool)
(declare-var Dursince.__Dursince_3_c Bool)
(declare-var Dursince.__Dursince_4_c Int)
(declare-var Dursince.ni_8._arrow._first_c Bool)
(declare-var Dursince.__Dursince_2_m Bool)
(declare-var Dursince.__Dursince_3_m Bool)
(declare-var Dursince.__Dursince_4_m Int)
(declare-var Dursince.ni_8._arrow._first_m Bool)
(declare-var Dursince.__Dursince_2_x Bool)
(declare-var Dursince.__Dursince_3_x Bool)
(declare-var Dursince.__Dursince_4_x Int)
(declare-var Dursince.ni_8._arrow._first_x Bool)
(declare-var Dursince.__Dursince_1 Bool)
(declare-rel Dursince_reset (Bool Bool Int Bool Bool Bool Int Bool))
(declare-rel Dursince_step (Bool Bool Int Bool Bool Int Bool Bool Bool Int Bool))

(rule (=> 
  (and 
       (= Dursince.__Dursince_2_m Dursince.__Dursince_2_c)
       (= Dursince.__Dursince_3_m Dursince.__Dursince_3_c)
       (= Dursince.__Dursince_4_m Dursince.__Dursince_4_c)
       (= Dursince.ni_8._arrow._first_m true)
  )
  (Dursince_reset Dursince.__Dursince_2_c
                  Dursince.__Dursince_3_c
                  Dursince.__Dursince_4_c
                  Dursince.ni_8._arrow._first_c
                  Dursince.__Dursince_2_m
                  Dursince.__Dursince_3_m
                  Dursince.__Dursince_4_m
                  Dursince.ni_8._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Dursince.ni_8._arrow._first_m Dursince.ni_8._arrow._first_c)
       (and (= Dursince.__Dursince_1 (ite Dursince.ni_8._arrow._first_m true false))
            (= Dursince.ni_8._arrow._first_x false))
       (and (or (not (= Dursince.__Dursince_1 true))
               (= Dursince.Count 0))
            (or (not (= Dursince.__Dursince_1 false))
               (and (or (not (= Dursince.__Dursince_2_c true))
                       (= Dursince.Count 0))
                    (or (not (= Dursince.__Dursince_2_c false))
                       (and (or (not (= Dursince.__Dursince_3_c true))
                               (= Dursince.Count (+ Dursince.__Dursince_4_c 1)))
                            (or (not (= Dursince.__Dursince_3_c false))
                               (= Dursince.Count Dursince.__Dursince_4_c))
                       ))
               ))
       )
       (= Dursince.__Dursince_4_x Dursince.Count)
       (= Dursince.__Dursince_3_x Dursince.Q)
       (= Dursince.__Dursince_2_x Dursince.P1)
       )
  (Dursince_step Dursince.P1
                 Dursince.Q
                 Dursince.Count
                 Dursince.__Dursince_2_c
                 Dursince.__Dursince_3_c
                 Dursince.__Dursince_4_c
                 Dursince.ni_8._arrow._first_c
                 Dursince.__Dursince_2_x
                 Dursince.__Dursince_3_x
                 Dursince.__Dursince_4_x
                 Dursince.ni_8._arrow._first_x)
))

; RaisingEdge
(declare-var RaisingEdge.P1 Bool)
(declare-var RaisingEdge.res Bool)
(declare-var RaisingEdge.__RaisingEdge_2_c Bool)
(declare-var RaisingEdge.ni_7._arrow._first_c Bool)
(declare-var RaisingEdge.__RaisingEdge_2_m Bool)
(declare-var RaisingEdge.ni_7._arrow._first_m Bool)
(declare-var RaisingEdge.__RaisingEdge_2_x Bool)
(declare-var RaisingEdge.ni_7._arrow._first_x Bool)
(declare-var RaisingEdge.__RaisingEdge_1 Bool)
(declare-rel RaisingEdge_reset (Bool Bool Bool Bool))
(declare-rel RaisingEdge_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= RaisingEdge.__RaisingEdge_2_m RaisingEdge.__RaisingEdge_2_c)
       (= RaisingEdge.ni_7._arrow._first_m true)
  )
  (RaisingEdge_reset RaisingEdge.__RaisingEdge_2_c
                     RaisingEdge.ni_7._arrow._first_c
                     RaisingEdge.__RaisingEdge_2_m
                     RaisingEdge.ni_7._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= RaisingEdge.ni_7._arrow._first_m RaisingEdge.ni_7._arrow._first_c)
       (and (= RaisingEdge.__RaisingEdge_1 (ite RaisingEdge.ni_7._arrow._first_m true false))
            (= RaisingEdge.ni_7._arrow._first_x false))
       (and (or (not (= RaisingEdge.__RaisingEdge_1 true))
               (= RaisingEdge.res false))
            (or (not (= RaisingEdge.__RaisingEdge_1 false))
               (= RaisingEdge.res (and (not RaisingEdge.__RaisingEdge_2_c) RaisingEdge.P1)))
       )
       (= RaisingEdge.__RaisingEdge_2_x RaisingEdge.P1)
       )
  (RaisingEdge_step RaisingEdge.P1
                    RaisingEdge.res
                    RaisingEdge.__RaisingEdge_2_c
                    RaisingEdge.ni_7._arrow._first_c
                    RaisingEdge.__RaisingEdge_2_x
                    RaisingEdge.ni_7._arrow._first_x)
))

; Sofar
(declare-var Sofar.X Bool)
(declare-var Sofar.Sofar Bool)
(declare-var Sofar.__Sofar_2_c Bool)
(declare-var Sofar.ni_6._arrow._first_c Bool)
(declare-var Sofar.__Sofar_2_m Bool)
(declare-var Sofar.ni_6._arrow._first_m Bool)
(declare-var Sofar.__Sofar_2_x Bool)
(declare-var Sofar.ni_6._arrow._first_x Bool)
(declare-var Sofar.__Sofar_1 Bool)
(declare-rel Sofar_reset (Bool Bool Bool Bool))
(declare-rel Sofar_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= Sofar.__Sofar_2_m Sofar.__Sofar_2_c)
       (= Sofar.ni_6._arrow._first_m true)
  )
  (Sofar_reset Sofar.__Sofar_2_c
               Sofar.ni_6._arrow._first_c
               Sofar.__Sofar_2_m
               Sofar.ni_6._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Sofar.ni_6._arrow._first_m Sofar.ni_6._arrow._first_c)(and (= Sofar.__Sofar_1 (ite Sofar.ni_6._arrow._first_m true false))
                                                                    (= Sofar.ni_6._arrow._first_x false))
       (and (or (not (= Sofar.__Sofar_1 true))
               (= Sofar.Sofar Sofar.X))
            (or (not (= Sofar.__Sofar_1 false))
               (= Sofar.Sofar (and Sofar.X Sofar.__Sofar_2_c)))
       )
       (= Sofar.__Sofar_2_x Sofar.Sofar)
       )
  (Sofar_step Sofar.X
              Sofar.Sofar
              Sofar.__Sofar_2_c
              Sofar.ni_6._arrow._first_c
              Sofar.__Sofar_2_x
              Sofar.ni_6._arrow._first_x)
))

; top
(declare-var top.leak Bool)
(declare-var top.P1 Bool)
(declare-var top.OK Bool)
(declare-var top.ni_0.Age.__Age_2_c Bool)
(declare-var top.ni_0.Age.__Age_3_c Int)
(declare-var top.ni_0.Age.ni_9._arrow._first_c Bool)
(declare-var top.ni_1.Dursince.__Dursince_2_c Bool)
(declare-var top.ni_1.Dursince.__Dursince_3_c Bool)
(declare-var top.ni_1.Dursince.__Dursince_4_c Int)
(declare-var top.ni_1.Dursince.ni_8._arrow._first_c Bool)
(declare-var top.ni_2.Age.__Age_2_c Bool)
(declare-var top.ni_2.Age.__Age_3_c Int)
(declare-var top.ni_2.Age.ni_9._arrow._first_c Bool)
(declare-var top.ni_3.RaisingEdge.__RaisingEdge_2_c Bool)
(declare-var top.ni_3.RaisingEdge.ni_7._arrow._first_c Bool)
(declare-var top.ni_4.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_4.Sofar.ni_6._arrow._first_c Bool)
(declare-var top.ni_5.Age.__Age_2_c Bool)
(declare-var top.ni_5.Age.__Age_3_c Int)
(declare-var top.ni_5.Age.ni_9._arrow._first_c Bool)
(declare-var top.ni_0.Age.__Age_2_m Bool)
(declare-var top.ni_0.Age.__Age_3_m Int)
(declare-var top.ni_0.Age.ni_9._arrow._first_m Bool)
(declare-var top.ni_1.Dursince.__Dursince_2_m Bool)
(declare-var top.ni_1.Dursince.__Dursince_3_m Bool)
(declare-var top.ni_1.Dursince.__Dursince_4_m Int)
(declare-var top.ni_1.Dursince.ni_8._arrow._first_m Bool)
(declare-var top.ni_2.Age.__Age_2_m Bool)
(declare-var top.ni_2.Age.__Age_3_m Int)
(declare-var top.ni_2.Age.ni_9._arrow._first_m Bool)
(declare-var top.ni_3.RaisingEdge.__RaisingEdge_2_m Bool)
(declare-var top.ni_3.RaisingEdge.ni_7._arrow._first_m Bool)
(declare-var top.ni_4.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_4.Sofar.ni_6._arrow._first_m Bool)
(declare-var top.ni_5.Age.__Age_2_m Bool)
(declare-var top.ni_5.Age.__Age_3_m Int)
(declare-var top.ni_5.Age.ni_9._arrow._first_m Bool)
(declare-var top.ni_0.Age.__Age_2_x Bool)
(declare-var top.ni_0.Age.__Age_3_x Int)
(declare-var top.ni_0.Age.ni_9._arrow._first_x Bool)
(declare-var top.ni_1.Dursince.__Dursince_2_x Bool)
(declare-var top.ni_1.Dursince.__Dursince_3_x Bool)
(declare-var top.ni_1.Dursince.__Dursince_4_x Int)
(declare-var top.ni_1.Dursince.ni_8._arrow._first_x Bool)
(declare-var top.ni_2.Age.__Age_2_x Bool)
(declare-var top.ni_2.Age.__Age_3_x Int)
(declare-var top.ni_2.Age.ni_9._arrow._first_x Bool)
(declare-var top.ni_3.RaisingEdge.__RaisingEdge_2_x Bool)
(declare-var top.ni_3.RaisingEdge.ni_7._arrow._first_x Bool)
(declare-var top.ni_4.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_4.Sofar.ni_6._arrow._first_x Bool)
(declare-var top.ni_5.Age.__Age_2_x Bool)
(declare-var top.ni_5.Age.__Age_3_x Int)
(declare-var top.ni_5.Age.ni_9._arrow._first_x Bool)
(declare-var top.__top_1 Int)
(declare-var top.__top_2 Int)
(declare-var top.__top_3 Int)
(declare-var top.__top_4 Bool)
(declare-var top.__top_5 Int)
(declare-var top.__top_6 Bool)
(declare-rel top_reset (Bool Int Bool Bool Bool Int Bool Bool Int Bool Bool Bool Bool Bool Bool Int Bool Bool Int Bool Bool Bool Int Bool Bool Int Bool Bool Bool Bool Bool Bool Int Bool))
(declare-rel top_step (Bool Bool Bool Bool Int Bool Bool Bool Int Bool Bool Int Bool Bool Bool Bool Bool Bool Int Bool Bool Int Bool Bool Bool Int Bool Bool Int Bool Bool Bool Bool Bool Bool Int Bool))

(rule (=> 
  (and 
       
       (Age_reset top.ni_5.Age.__Age_2_c top.ni_5.Age.__Age_3_c
                  top.ni_5.Age.ni_9._arrow._first_c top.ni_5.Age.__Age_2_m
                  top.ni_5.Age.__Age_3_m top.ni_5.Age.ni_9._arrow._first_m)
       (Sofar_reset top.ni_4.Sofar.__Sofar_2_c
                    top.ni_4.Sofar.ni_6._arrow._first_c
                    top.ni_4.Sofar.__Sofar_2_m
                    top.ni_4.Sofar.ni_6._arrow._first_m)
       (RaisingEdge_reset top.ni_3.RaisingEdge.__RaisingEdge_2_c
                          top.ni_3.RaisingEdge.ni_7._arrow._first_c
                          top.ni_3.RaisingEdge.__RaisingEdge_2_m
                          top.ni_3.RaisingEdge.ni_7._arrow._first_m)
       (Age_reset top.ni_2.Age.__Age_2_c top.ni_2.Age.__Age_3_c
                  top.ni_2.Age.ni_9._arrow._first_c top.ni_2.Age.__Age_2_m
                  top.ni_2.Age.__Age_3_m top.ni_2.Age.ni_9._arrow._first_m)
       (Dursince_reset top.ni_1.Dursince.__Dursince_2_c
                       top.ni_1.Dursince.__Dursince_3_c
                       top.ni_1.Dursince.__Dursince_4_c
                       top.ni_1.Dursince.ni_8._arrow._first_c
                       top.ni_1.Dursince.__Dursince_2_m
                       top.ni_1.Dursince.__Dursince_3_m
                       top.ni_1.Dursince.__Dursince_4_m
                       top.ni_1.Dursince.ni_8._arrow._first_m)
       (Age_reset top.ni_0.Age.__Age_2_c top.ni_0.Age.__Age_3_c
                  top.ni_0.Age.ni_9._arrow._first_c top.ni_0.Age.__Age_2_m
                  top.ni_0.Age.__Age_3_m top.ni_0.Age.ni_9._arrow._first_m)
  )
  (top_reset top.ni_0.Age.__Age_2_c
             top.ni_0.Age.__Age_3_c
             top.ni_0.Age.ni_9._arrow._first_c
             top.ni_1.Dursince.__Dursince_2_c
             top.ni_1.Dursince.__Dursince_3_c
             top.ni_1.Dursince.__Dursince_4_c
             top.ni_1.Dursince.ni_8._arrow._first_c
             top.ni_2.Age.__Age_2_c
             top.ni_2.Age.__Age_3_c
             top.ni_2.Age.ni_9._arrow._first_c
             top.ni_3.RaisingEdge.__RaisingEdge_2_c
             top.ni_3.RaisingEdge.ni_7._arrow._first_c
             top.ni_4.Sofar.__Sofar_2_c
             top.ni_4.Sofar.ni_6._arrow._first_c
             top.ni_5.Age.__Age_2_c
             top.ni_5.Age.__Age_3_c
             top.ni_5.Age.ni_9._arrow._first_c
             top.ni_0.Age.__Age_2_m
             top.ni_0.Age.__Age_3_m
             top.ni_0.Age.ni_9._arrow._first_m
             top.ni_1.Dursince.__Dursince_2_m
             top.ni_1.Dursince.__Dursince_3_m
             top.ni_1.Dursince.__Dursince_4_m
             top.ni_1.Dursince.ni_8._arrow._first_m
             top.ni_2.Age.__Age_2_m
             top.ni_2.Age.__Age_3_m
             top.ni_2.Age.ni_9._arrow._first_m
             top.ni_3.RaisingEdge.__RaisingEdge_2_m
             top.ni_3.RaisingEdge.ni_7._arrow._first_m
             top.ni_4.Sofar.__Sofar_2_m
             top.ni_4.Sofar.ni_6._arrow._first_m
             top.ni_5.Age.__Age_2_m
             top.ni_5.Age.__Age_3_m
             top.ni_5.Age.ni_9._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_5.Age.__Age_2_m top.ni_5.Age.__Age_2_c)
            (= top.ni_5.Age.__Age_3_m top.ni_5.Age.__Age_3_c)
            (= top.ni_5.Age.ni_9._arrow._first_m top.ni_5.Age.ni_9._arrow._first_c)
            )
       (Age_step top.leak
                 top.__top_5
                 top.ni_5.Age.__Age_2_m
                 top.ni_5.Age.__Age_3_m
                 top.ni_5.Age.ni_9._arrow._first_m
                 top.ni_5.Age.__Age_2_x
                 top.ni_5.Age.__Age_3_x
                 top.ni_5.Age.ni_9._arrow._first_x)
       (and (= top.ni_4.Sofar.__Sofar_2_m top.ni_4.Sofar.__Sofar_2_c)
            (= top.ni_4.Sofar.ni_6._arrow._first_m top.ni_4.Sofar.ni_6._arrow._first_c)
            )
       (Sofar_step (<= top.__top_5 10)
                   top.__top_6
                   top.ni_4.Sofar.__Sofar_2_m
                   top.ni_4.Sofar.ni_6._arrow._first_m
                   top.ni_4.Sofar.__Sofar_2_x
                   top.ni_4.Sofar.ni_6._arrow._first_x)
       (and (= top.ni_3.RaisingEdge.__RaisingEdge_2_m top.ni_3.RaisingEdge.__RaisingEdge_2_c)
            (= top.ni_3.RaisingEdge.ni_7._arrow._first_m top.ni_3.RaisingEdge.ni_7._arrow._first_c)
            )
       (RaisingEdge_step top.P1
                         top.__top_4
                         top.ni_3.RaisingEdge.__RaisingEdge_2_m
                         top.ni_3.RaisingEdge.ni_7._arrow._first_m
                         top.ni_3.RaisingEdge.__RaisingEdge_2_x
                         top.ni_3.RaisingEdge.ni_7._arrow._first_x)
       (and (= top.ni_2.Age.__Age_2_m top.ni_2.Age.__Age_2_c)
            (= top.ni_2.Age.__Age_3_m top.ni_2.Age.__Age_3_c)
            (= top.ni_2.Age.ni_9._arrow._first_m top.ni_2.Age.ni_9._arrow._first_c)
            )
       (Age_step (not top.leak)
                 top.__top_3
                 top.ni_2.Age.__Age_2_m
                 top.ni_2.Age.__Age_3_m
                 top.ni_2.Age.ni_9._arrow._first_m
                 top.ni_2.Age.__Age_2_x
                 top.ni_2.Age.__Age_3_x
                 top.ni_2.Age.ni_9._arrow._first_x)
       (and (= top.ni_1.Dursince.__Dursince_2_m top.ni_1.Dursince.__Dursince_2_c)
            (= top.ni_1.Dursince.__Dursince_3_m top.ni_1.Dursince.__Dursince_3_c)
            (= top.ni_1.Dursince.__Dursince_4_m top.ni_1.Dursince.__Dursince_4_c)
            (= top.ni_1.Dursince.ni_8._arrow._first_m top.ni_1.Dursince.ni_8._arrow._first_c)
            )
       (Dursince_step top.P1
                      top.leak
                      top.__top_2
                      top.ni_1.Dursince.__Dursince_2_m
                      top.ni_1.Dursince.__Dursince_3_m
                      top.ni_1.Dursince.__Dursince_4_m
                      top.ni_1.Dursince.ni_8._arrow._first_m
                      top.ni_1.Dursince.__Dursince_2_x
                      top.ni_1.Dursince.__Dursince_3_x
                      top.ni_1.Dursince.__Dursince_4_x
                      top.ni_1.Dursince.ni_8._arrow._first_x)
       (and (= top.ni_0.Age.__Age_2_m top.ni_0.Age.__Age_2_c)
            (= top.ni_0.Age.__Age_3_m top.ni_0.Age.__Age_3_c)
            (= top.ni_0.Age.ni_9._arrow._first_m top.ni_0.Age.ni_9._arrow._first_c)
            )
       (Age_step (not top.P1)
                 top.__top_1
                 top.ni_0.Age.__Age_2_m
                 top.ni_0.Age.__Age_3_m
                 top.ni_0.Age.ni_9._arrow._first_m
                 top.ni_0.Age.__Age_2_x
                 top.ni_0.Age.__Age_3_x
                 top.ni_0.Age.ni_9._arrow._first_x)
       (= top.OK (=> (and top.__top_6 (or (not top.__top_4) (<= 300 top.__top_3))) (or (<= top.__top_1 600) (<= (* 2 top.__top_2) top.__top_1))))
       )
  (top_step top.leak
            top.P1
            top.OK
            top.ni_0.Age.__Age_2_c
            top.ni_0.Age.__Age_3_c
            top.ni_0.Age.ni_9._arrow._first_c
            top.ni_1.Dursince.__Dursince_2_c
            top.ni_1.Dursince.__Dursince_3_c
            top.ni_1.Dursince.__Dursince_4_c
            top.ni_1.Dursince.ni_8._arrow._first_c
            top.ni_2.Age.__Age_2_c
            top.ni_2.Age.__Age_3_c
            top.ni_2.Age.ni_9._arrow._first_c
            top.ni_3.RaisingEdge.__RaisingEdge_2_c
            top.ni_3.RaisingEdge.ni_7._arrow._first_c
            top.ni_4.Sofar.__Sofar_2_c
            top.ni_4.Sofar.ni_6._arrow._first_c
            top.ni_5.Age.__Age_2_c
            top.ni_5.Age.__Age_3_c
            top.ni_5.Age.ni_9._arrow._first_c
            top.ni_0.Age.__Age_2_x
            top.ni_0.Age.__Age_3_x
            top.ni_0.Age.ni_9._arrow._first_x
            top.ni_1.Dursince.__Dursince_2_x
            top.ni_1.Dursince.__Dursince_3_x
            top.ni_1.Dursince.__Dursince_4_x
            top.ni_1.Dursince.ni_8._arrow._first_x
            top.ni_2.Age.__Age_2_x
            top.ni_2.Age.__Age_3_x
            top.ni_2.Age.ni_9._arrow._first_x
            top.ni_3.RaisingEdge.__RaisingEdge_2_x
            top.ni_3.RaisingEdge.ni_7._arrow._first_x
            top.ni_4.Sofar.__Sofar_2_x
            top.ni_4.Sofar.ni_6._arrow._first_x
            top.ni_5.Age.__Age_2_x
            top.ni_5.Age.__Age_3_x
            top.ni_5.Age.ni_9._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Int Bool Bool Bool Int Bool Bool Int Bool Bool Bool Bool Bool Bool Int Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.Age.__Age_2_c top.ni_0.Age.__Age_3_c top.ni_0.Age.ni_9._arrow._first_c top.ni_1.Dursince.__Dursince_2_c top.ni_1.Dursince.__Dursince_3_c top.ni_1.Dursince.__Dursince_4_c top.ni_1.Dursince.ni_8._arrow._first_c top.ni_2.Age.__Age_2_c top.ni_2.Age.__Age_3_c top.ni_2.Age.ni_9._arrow._first_c top.ni_3.RaisingEdge.__RaisingEdge_2_c top.ni_3.RaisingEdge.ni_7._arrow._first_c top.ni_4.Sofar.__Sofar_2_c top.ni_4.Sofar.ni_6._arrow._first_c top.ni_5.Age.__Age_2_c top.ni_5.Age.__Age_3_c top.ni_5.Age.ni_9._arrow._first_c top.ni_0.Age.__Age_2_m top.ni_0.Age.__Age_3_m top.ni_0.Age.ni_9._arrow._first_m top.ni_1.Dursince.__Dursince_2_m top.ni_1.Dursince.__Dursince_3_m top.ni_1.Dursince.__Dursince_4_m top.ni_1.Dursince.ni_8._arrow._first_m top.ni_2.Age.__Age_2_m top.ni_2.Age.__Age_3_m top.ni_2.Age.ni_9._arrow._first_m top.ni_3.RaisingEdge.__RaisingEdge_2_m top.ni_3.RaisingEdge.ni_7._arrow._first_m top.ni_4.Sofar.__Sofar_2_m top.ni_4.Sofar.ni_6._arrow._first_m top.ni_5.Age.__Age_2_m top.ni_5.Age.__Age_3_m top.ni_5.Age.ni_9._arrow._first_m)
       (top_step top.leak top.P1 top.OK top.ni_0.Age.__Age_2_m top.ni_0.Age.__Age_3_m top.ni_0.Age.ni_9._arrow._first_m top.ni_1.Dursince.__Dursince_2_m top.ni_1.Dursince.__Dursince_3_m top.ni_1.Dursince.__Dursince_4_m top.ni_1.Dursince.ni_8._arrow._first_m top.ni_2.Age.__Age_2_m top.ni_2.Age.__Age_3_m top.ni_2.Age.ni_9._arrow._first_m top.ni_3.RaisingEdge.__RaisingEdge_2_m top.ni_3.RaisingEdge.ni_7._arrow._first_m top.ni_4.Sofar.__Sofar_2_m top.ni_4.Sofar.ni_6._arrow._first_m top.ni_5.Age.__Age_2_m top.ni_5.Age.__Age_3_m top.ni_5.Age.ni_9._arrow._first_m top.ni_0.Age.__Age_2_x top.ni_0.Age.__Age_3_x top.ni_0.Age.ni_9._arrow._first_x top.ni_1.Dursince.__Dursince_2_x top.ni_1.Dursince.__Dursince_3_x top.ni_1.Dursince.__Dursince_4_x top.ni_1.Dursince.ni_8._arrow._first_x top.ni_2.Age.__Age_2_x top.ni_2.Age.__Age_3_x top.ni_2.Age.ni_9._arrow._first_x top.ni_3.RaisingEdge.__RaisingEdge_2_x top.ni_3.RaisingEdge.ni_7._arrow._first_x top.ni_4.Sofar.__Sofar_2_x top.ni_4.Sofar.ni_6._arrow._first_x top.ni_5.Age.__Age_2_x top.ni_5.Age.__Age_3_x top.ni_5.Age.ni_9._arrow._first_x)
  )
  (MAIN top.ni_0.Age.__Age_2_x top.ni_0.Age.__Age_3_x top.ni_0.Age.ni_9._arrow._first_x top.ni_1.Dursince.__Dursince_2_x top.ni_1.Dursince.__Dursince_3_x top.ni_1.Dursince.__Dursince_4_x top.ni_1.Dursince.ni_8._arrow._first_x top.ni_2.Age.__Age_2_x top.ni_2.Age.__Age_3_x top.ni_2.Age.ni_9._arrow._first_x top.ni_3.RaisingEdge.__RaisingEdge_2_x top.ni_3.RaisingEdge.ni_7._arrow._first_x top.ni_4.Sofar.__Sofar_2_x top.ni_4.Sofar.ni_6._arrow._first_x top.ni_5.Age.__Age_2_x top.ni_5.Age.__Age_3_x top.ni_5.Age.ni_9._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.Age.__Age_2_c top.ni_0.Age.__Age_3_c top.ni_0.Age.ni_9._arrow._first_c top.ni_1.Dursince.__Dursince_2_c top.ni_1.Dursince.__Dursince_3_c top.ni_1.Dursince.__Dursince_4_c top.ni_1.Dursince.ni_8._arrow._first_c top.ni_2.Age.__Age_2_c top.ni_2.Age.__Age_3_c top.ni_2.Age.ni_9._arrow._first_c top.ni_3.RaisingEdge.__RaisingEdge_2_c top.ni_3.RaisingEdge.ni_7._arrow._first_c top.ni_4.Sofar.__Sofar_2_c top.ni_4.Sofar.ni_6._arrow._first_c top.ni_5.Age.__Age_2_c top.ni_5.Age.__Age_3_c top.ni_5.Age.ni_9._arrow._first_c dummytop.OK)
       (top_step top.leak top.P1 top.OK top.ni_0.Age.__Age_2_c top.ni_0.Age.__Age_3_c top.ni_0.Age.ni_9._arrow._first_c top.ni_1.Dursince.__Dursince_2_c top.ni_1.Dursince.__Dursince_3_c top.ni_1.Dursince.__Dursince_4_c top.ni_1.Dursince.ni_8._arrow._first_c top.ni_2.Age.__Age_2_c top.ni_2.Age.__Age_3_c top.ni_2.Age.ni_9._arrow._first_c top.ni_3.RaisingEdge.__RaisingEdge_2_c top.ni_3.RaisingEdge.ni_7._arrow._first_c top.ni_4.Sofar.__Sofar_2_c top.ni_4.Sofar.ni_6._arrow._first_c top.ni_5.Age.__Age_2_c top.ni_5.Age.__Age_3_c top.ni_5.Age.ni_9._arrow._first_c top.ni_0.Age.__Age_2_x top.ni_0.Age.__Age_3_x top.ni_0.Age.ni_9._arrow._first_x top.ni_1.Dursince.__Dursince_2_x top.ni_1.Dursince.__Dursince_3_x top.ni_1.Dursince.__Dursince_4_x top.ni_1.Dursince.ni_8._arrow._first_x top.ni_2.Age.__Age_2_x top.ni_2.Age.__Age_3_x top.ni_2.Age.ni_9._arrow._first_x top.ni_3.RaisingEdge.__RaisingEdge_2_x top.ni_3.RaisingEdge.ni_7._arrow._first_x top.ni_4.Sofar.__Sofar_2_x top.ni_4.Sofar.ni_6._arrow._first_x top.ni_5.Age.__Age_2_x top.ni_5.Age.__Age_3_x top.ni_5.Age.ni_9._arrow._first_x)
  )
  (MAIN top.ni_0.Age.__Age_2_x top.ni_0.Age.__Age_3_x top.ni_0.Age.ni_9._arrow._first_x top.ni_1.Dursince.__Dursince_2_x top.ni_1.Dursince.__Dursince_3_x top.ni_1.Dursince.__Dursince_4_x top.ni_1.Dursince.ni_8._arrow._first_x top.ni_2.Age.__Age_2_x top.ni_2.Age.__Age_3_x top.ni_2.Age.ni_9._arrow._first_x top.ni_3.RaisingEdge.__RaisingEdge_2_x top.ni_3.RaisingEdge.ni_7._arrow._first_x top.ni_4.Sofar.__Sofar_2_x top.ni_4.Sofar.ni_6._arrow._first_x top.ni_5.Age.__Age_2_x top.ni_5.Age.__Age_3_x top.ni_5.Age.ni_9._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.Age.__Age_2_x top.ni_0.Age.__Age_3_x top.ni_0.Age.ni_9._arrow._first_x top.ni_1.Dursince.__Dursince_2_x top.ni_1.Dursince.__Dursince_3_x top.ni_1.Dursince.__Dursince_4_x top.ni_1.Dursince.ni_8._arrow._first_x top.ni_2.Age.__Age_2_x top.ni_2.Age.__Age_3_x top.ni_2.Age.ni_9._arrow._first_x top.ni_3.RaisingEdge.__RaisingEdge_2_x top.ni_3.RaisingEdge.ni_7._arrow._first_x top.ni_4.Sofar.__Sofar_2_x top.ni_4.Sofar.ni_6._arrow._first_x top.ni_5.Age.__Age_2_x top.ni_5.Age.__Age_3_x top.ni_5.Age.ni_9._arrow._first_x top.OK))
  ERR))
(query ERR)
