; Statically linked libraries
; Sofar
(declare-var Sofar.X Bool)
(declare-var Sofar.Y Bool)
(declare-var Sofar.__Sofar_2_c Bool)
(declare-var Sofar.ni_3._arrow._first_c Bool)
(declare-var Sofar.__Sofar_2_m Bool)
(declare-var Sofar.ni_3._arrow._first_m Bool)
(declare-var Sofar.__Sofar_2_x Bool)
(declare-var Sofar.ni_3._arrow._first_x Bool)
(declare-var Sofar.__Sofar_1 Bool)
(declare-var Sofar.__Sofar_3 Bool)
(declare-rel Sofar_reset (Bool Bool Bool Bool))
(declare-rel Sofar_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= Sofar.__Sofar_2_m Sofar.__Sofar_2_c)
       (= Sofar.ni_3._arrow._first_m true)
  )
  (Sofar_reset Sofar.__Sofar_2_c
               Sofar.ni_3._arrow._first_c
               Sofar.__Sofar_2_m
               Sofar.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Sofar.ni_3._arrow._first_m Sofar.ni_3._arrow._first_c)(and (= Sofar.__Sofar_1 (ite Sofar.ni_3._arrow._first_m true false))
                                                                    (= Sofar.ni_3._arrow._first_x false))
       (and (or (not (= Sofar.__Sofar_1 true))
               (= Sofar.__Sofar_3 true))
            (or (not (= Sofar.__Sofar_1 false))
               (= Sofar.__Sofar_3 Sofar.__Sofar_2_c))
       )
       (= Sofar.Y (and Sofar.__Sofar_3 Sofar.X))
       (= Sofar.__Sofar_2_x Sofar.Y)
       )
  (Sofar_step Sofar.X
              Sofar.Y
              Sofar.__Sofar_2_c
              Sofar.ni_3._arrow._first_c
              Sofar.__Sofar_2_x
              Sofar.ni_3._arrow._first_x)
))

; Store
(declare-var Store.Delta Int)
(declare-var Store.Total Int)
(declare-var Store.__Store_4_c Int)
(declare-var Store.ni_2._arrow._first_c Bool)
(declare-var Store.__Store_4_m Int)
(declare-var Store.ni_2._arrow._first_m Bool)
(declare-var Store.__Store_4_x Int)
(declare-var Store.ni_2._arrow._first_x Bool)
(declare-var Store.Prev Int)
(declare-var Store.__Store_3 Bool)
(declare-rel Store_reset (Int Bool Int Bool))
(declare-rel Store_step (Int Int Int Bool Int Bool))

(rule (=> 
  (and 
       (= Store.__Store_4_m Store.__Store_4_c)
       (= Store.ni_2._arrow._first_m true)
  )
  (Store_reset Store.__Store_4_c
               Store.ni_2._arrow._first_c
               Store.__Store_4_m
               Store.ni_2._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Store.ni_2._arrow._first_m Store.ni_2._arrow._first_c)(and (= Store.__Store_3 (ite Store.ni_2._arrow._first_m true false))
                                                                    (= Store.ni_2._arrow._first_x false))
       (and (or (not (= Store.__Store_3 true))
               (= Store.Prev 0))
            (or (not (= Store.__Store_3 false))
               (= Store.Prev Store.__Store_4_c))
       )
       (and (or (not (= (and (< Store.Delta 0) (> Store.Prev 0)) true))
               (= Store.Total (+ Store.Prev Store.Delta)))
            (or (not (= (and (< Store.Delta 0) (> Store.Prev 0)) false))
               (and (or (not (= (and (> Store.Delta 0) (< Store.Prev 10)) true))
                       (= Store.Total (+ Store.Prev Store.Delta)))
                    (or (not (= (and (> Store.Delta 0) (< Store.Prev 10)) false))
                       (= Store.Total Store.Prev))
               ))
       )
       (= Store.__Store_4_x Store.Total)
       )
  (Store_step Store.Delta
              Store.Total
              Store.__Store_4_c
              Store.ni_2._arrow._first_c
              Store.__Store_4_x
              Store.ni_2._arrow._first_x)
))

; top
(declare-var top.Delta Int)
(declare-var top.OK Bool)
(declare-var top.ni_0.Store.__Store_4_c Int)
(declare-var top.ni_0.Store.ni_2._arrow._first_c Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_1.Sofar.ni_3._arrow._first_c Bool)
(declare-var top.ni_0.Store.__Store_4_m Int)
(declare-var top.ni_0.Store.ni_2._arrow._first_m Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_1.Sofar.ni_3._arrow._first_m Bool)
(declare-var top.ni_0.Store.__Store_4_x Int)
(declare-var top.ni_0.Store.ni_2._arrow._first_x Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_1.Sofar.ni_3._arrow._first_x Bool)
(declare-var top.Total Int)
(declare-var top.__top_1 Bool)
(declare-rel top_reset (Int Bool Bool Bool Int Bool Bool Bool))
(declare-rel top_step (Int Bool Int Bool Bool Bool Int Bool Bool Bool))

(rule (=> 
  (and 
       
       (Sofar_reset top.ni_1.Sofar.__Sofar_2_c
                    top.ni_1.Sofar.ni_3._arrow._first_c
                    top.ni_1.Sofar.__Sofar_2_m
                    top.ni_1.Sofar.ni_3._arrow._first_m)
       (Store_reset top.ni_0.Store.__Store_4_c
                    top.ni_0.Store.ni_2._arrow._first_c
                    top.ni_0.Store.__Store_4_m
                    top.ni_0.Store.ni_2._arrow._first_m)
  )
  (top_reset top.ni_0.Store.__Store_4_c
             top.ni_0.Store.ni_2._arrow._first_c
             top.ni_1.Sofar.__Sofar_2_c
             top.ni_1.Sofar.ni_3._arrow._first_c
             top.ni_0.Store.__Store_4_m
             top.ni_0.Store.ni_2._arrow._first_m
             top.ni_1.Sofar.__Sofar_2_m
             top.ni_1.Sofar.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.__Sofar_2_c)
            (= top.ni_1.Sofar.ni_3._arrow._first_m top.ni_1.Sofar.ni_3._arrow._first_c)
            )
       (Sofar_step (and (<= (- 1) top.Delta) (<= top.Delta 1))
                   top.__top_1
                   top.ni_1.Sofar.__Sofar_2_m
                   top.ni_1.Sofar.ni_3._arrow._first_m
                   top.ni_1.Sofar.__Sofar_2_x
                   top.ni_1.Sofar.ni_3._arrow._first_x)
       (and (= top.ni_0.Store.__Store_4_m top.ni_0.Store.__Store_4_c)
            (= top.ni_0.Store.ni_2._arrow._first_m top.ni_0.Store.ni_2._arrow._first_c)
            )
       (Store_step top.Delta
                   top.Total
                   top.ni_0.Store.__Store_4_m
                   top.ni_0.Store.ni_2._arrow._first_m
                   top.ni_0.Store.__Store_4_x
                   top.ni_0.Store.ni_2._arrow._first_x)
       (= top.OK (=> top.__top_1 (and (<= 0 top.Total) (<= top.Total 20))))
       )
  (top_step top.Delta
            top.OK
            top.ni_0.Store.__Store_4_c
            top.ni_0.Store.ni_2._arrow._first_c
            top.ni_1.Sofar.__Sofar_2_c
            top.ni_1.Sofar.ni_3._arrow._first_c
            top.ni_0.Store.__Store_4_x
            top.ni_0.Store.ni_2._arrow._first_x
            top.ni_1.Sofar.__Sofar_2_x
            top.ni_1.Sofar.ni_3._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.Store.__Store_4_c top.ni_0.Store.ni_2._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_3._arrow._first_c top.ni_0.Store.__Store_4_m top.ni_0.Store.ni_2._arrow._first_m top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.ni_3._arrow._first_m)
       (top_step top.Delta top.OK top.ni_0.Store.__Store_4_m top.ni_0.Store.ni_2._arrow._first_m top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.ni_3._arrow._first_m top.ni_0.Store.__Store_4_x top.ni_0.Store.ni_2._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_3._arrow._first_x)
  )
  (MAIN top.ni_0.Store.__Store_4_x top.ni_0.Store.ni_2._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_3._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.Store.__Store_4_c top.ni_0.Store.ni_2._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_3._arrow._first_c dummytop.OK)
       (top_step top.Delta top.OK top.ni_0.Store.__Store_4_c top.ni_0.Store.ni_2._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_3._arrow._first_c top.ni_0.Store.__Store_4_x top.ni_0.Store.ni_2._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_3._arrow._first_x)
  )
  (MAIN top.ni_0.Store.__Store_4_x top.ni_0.Store.ni_2._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_3._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.Store.__Store_4_x top.ni_0.Store.ni_2._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_3._arrow._first_x top.OK))
  ERR))
(query ERR)
