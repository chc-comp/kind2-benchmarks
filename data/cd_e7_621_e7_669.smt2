; Statically linked libraries
; Controller
(declare-var Controller.diff Int)
(declare-var Controller.speed Int)
(declare-var Controller.plus Bool)
(declare-var Controller.minus Bool)
(declare-var Controller.__Controller_2_c Int)
(declare-var Controller.ni_7._arrow._first_c Bool)
(declare-var Controller.__Controller_2_m Int)
(declare-var Controller.ni_7._arrow._first_m Bool)
(declare-var Controller.__Controller_2_x Int)
(declare-var Controller.ni_7._arrow._first_x Bool)
(declare-var Controller.__Controller_1 Bool)
(declare-rel Controller_reset (Int Bool Int Bool))
(declare-rel Controller_step (Int Int Bool Bool Int Bool Int Bool))

(rule (=> 
  (and 
       (= Controller.__Controller_2_m Controller.__Controller_2_c)
       (= Controller.ni_7._arrow._first_m true)
  )
  (Controller_reset Controller.__Controller_2_c
                    Controller.ni_7._arrow._first_c
                    Controller.__Controller_2_m
                    Controller.ni_7._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Controller.ni_7._arrow._first_m Controller.ni_7._arrow._first_c)
       (and (= Controller.__Controller_1 (ite Controller.ni_7._arrow._first_m true false))
            (= Controller.ni_7._arrow._first_x false))
       (and (or (not (= Controller.__Controller_1 true))
               (= Controller.speed 0))
            (or (not (= Controller.__Controller_1 false))
               (= Controller.speed (+ Controller.__Controller_2_c Controller.diff)))
       )
       (= Controller.plus (<= Controller.speed 9))
       (= Controller.minus (>= Controller.speed 11))
       (= Controller.__Controller_2_x Controller.speed)
       )
  (Controller_step Controller.diff
                   Controller.speed
                   Controller.plus
                   Controller.minus
                   Controller.__Controller_2_c
                   Controller.ni_7._arrow._first_c
                   Controller.__Controller_2_x
                   Controller.ni_7._arrow._first_x)
))

; Environment
(declare-var Environment.diff Int)
(declare-var Environment.plus Bool)
(declare-var Environment.minus Bool)
(declare-var Environment.ok Bool)
(declare-var Environment.__Environment_2_c Bool)
(declare-var Environment.__Environment_5_c Bool)
(declare-var Environment.ni_6._arrow._first_c Bool)
(declare-var Environment.__Environment_2_m Bool)
(declare-var Environment.__Environment_5_m Bool)
(declare-var Environment.ni_6._arrow._first_m Bool)
(declare-var Environment.__Environment_2_x Bool)
(declare-var Environment.__Environment_5_x Bool)
(declare-var Environment.ni_6._arrow._first_x Bool)
(declare-var Environment.__Environment_1 Bool)
(declare-var Environment.__Environment_3 Bool)
(declare-var Environment.__Environment_4 Bool)
(declare-var Environment.__Environment_6 Bool)
(declare-var Environment.__Environment_7 Bool)
(declare-rel Environment_reset (Bool Bool Bool Bool Bool Bool))
(declare-rel Environment_step (Int Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= Environment.__Environment_2_m Environment.__Environment_2_c)
       (= Environment.__Environment_5_m Environment.__Environment_5_c)
       (= Environment.ni_6._arrow._first_m true)
  )
  (Environment_reset Environment.__Environment_2_c
                     Environment.__Environment_5_c
                     Environment.ni_6._arrow._first_c
                     Environment.__Environment_2_m
                     Environment.__Environment_5_m
                     Environment.ni_6._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Environment.ni_6._arrow._first_m Environment.ni_6._arrow._first_c)
       (and (= Environment.__Environment_1 (ite Environment.ni_6._arrow._first_m true false))
            (= Environment.ni_6._arrow._first_x false))
       (and (or (not (= Environment.__Environment_1 true))
               (= Environment.__Environment_6 true))
            (or (not (= Environment.__Environment_1 false))
               (= Environment.__Environment_6 Environment.__Environment_5_c))
       )
       (and (or (not (= Environment.__Environment_6 true))
               (= Environment.__Environment_7 (>= Environment.diff 1)))
            (or (not (= Environment.__Environment_6 false))
               (= Environment.__Environment_7 true))
       )
       (and (or (not (= Environment.__Environment_1 true))
               (= Environment.__Environment_3 false))
            (or (not (= Environment.__Environment_1 false))
               (= Environment.__Environment_3 Environment.__Environment_2_c))
       )
       (and (or (not (= Environment.__Environment_3 true))
               (= Environment.__Environment_4 (<= Environment.diff (- 1))))
            (or (not (= Environment.__Environment_3 false))
               (= Environment.__Environment_4 true))
       )
       (= Environment.ok (and (and (or (<= (- 4) Environment.diff) (<= Environment.diff 4)) Environment.__Environment_7) Environment.__Environment_4))
       (= Environment.__Environment_5_x Environment.plus)
       (= Environment.__Environment_2_x Environment.minus)
       )
  (Environment_step Environment.diff
                    Environment.plus
                    Environment.minus
                    Environment.ok
                    Environment.__Environment_2_c
                    Environment.__Environment_5_c
                    Environment.ni_6._arrow._first_c
                    Environment.__Environment_2_x
                    Environment.__Environment_5_x
                    Environment.ni_6._arrow._first_x)
))

; Property
(declare-var Property.speed Int)
(declare-var Property.ok Bool)
(declare-var Property.__Property_2_c Int)
(declare-var Property.ni_5._arrow._first_c Bool)
(declare-var Property.__Property_2_m Int)
(declare-var Property.ni_5._arrow._first_m Bool)
(declare-var Property.__Property_2_x Int)
(declare-var Property.ni_5._arrow._first_x Bool)
(declare-var Property.__Property_1 Bool)
(declare-var Property.cpt Int)
(declare-rel Property_reset (Int Bool Int Bool))
(declare-rel Property_step (Int Bool Int Bool Int Bool))

(rule (=> 
  (and 
       (= Property.__Property_2_m Property.__Property_2_c)
       (= Property.ni_5._arrow._first_m true)
  )
  (Property_reset Property.__Property_2_c
                  Property.ni_5._arrow._first_c
                  Property.__Property_2_m
                  Property.ni_5._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Property.ni_5._arrow._first_m Property.ni_5._arrow._first_c)
       (and (= Property.__Property_1 (ite Property.ni_5._arrow._first_m true false))
            (= Property.ni_5._arrow._first_x false))
       (and (or (not (= Property.__Property_1 true))
               (= Property.ok true))
            (or (not (= Property.__Property_1 false))
               (= Property.ok (<= Property.__Property_2_c 7)))
       )
       (and (or (not (= Property.__Property_1 true))
               (= Property.cpt 0))
            (or (not (= Property.__Property_1 false))
               (and (or (not (= (and (<= 8 Property.speed) (<= Property.speed 12)) true))
                       (= Property.cpt 0))
                    (or (not (= (and (<= 8 Property.speed) (<= Property.speed 12)) false))
                       (= Property.cpt (+ Property.__Property_2_c 1)))
               ))
       )
       (= Property.__Property_2_x Property.cpt)
       )
  (Property_step Property.speed
                 Property.ok
                 Property.__Property_2_c
                 Property.ni_5._arrow._first_c
                 Property.__Property_2_x
                 Property.ni_5._arrow._first_x)
))

; Sofar
(declare-var Sofar.X Bool)
(declare-var Sofar.Sofar Bool)
(declare-var Sofar.__Sofar_2_c Bool)
(declare-var Sofar.ni_4._arrow._first_c Bool)
(declare-var Sofar.__Sofar_2_m Bool)
(declare-var Sofar.ni_4._arrow._first_m Bool)
(declare-var Sofar.__Sofar_2_x Bool)
(declare-var Sofar.ni_4._arrow._first_x Bool)
(declare-var Sofar.__Sofar_1 Bool)
(declare-rel Sofar_reset (Bool Bool Bool Bool))
(declare-rel Sofar_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= Sofar.__Sofar_2_m Sofar.__Sofar_2_c)
       (= Sofar.ni_4._arrow._first_m true)
  )
  (Sofar_reset Sofar.__Sofar_2_c
               Sofar.ni_4._arrow._first_c
               Sofar.__Sofar_2_m
               Sofar.ni_4._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Sofar.ni_4._arrow._first_m Sofar.ni_4._arrow._first_c)(and (= Sofar.__Sofar_1 (ite Sofar.ni_4._arrow._first_m true false))
                                                                    (= Sofar.ni_4._arrow._first_x false))
       (and (or (not (= Sofar.__Sofar_1 true))
               (= Sofar.Sofar Sofar.X))
            (or (not (= Sofar.__Sofar_1 false))
               (= Sofar.Sofar (or Sofar.X Sofar.__Sofar_2_c)))
       )
       (= Sofar.__Sofar_2_x Sofar.Sofar)
       )
  (Sofar_step Sofar.X
              Sofar.Sofar
              Sofar.__Sofar_2_c
              Sofar.ni_4._arrow._first_c
              Sofar.__Sofar_2_x
              Sofar.ni_4._arrow._first_x)
))

; top
(declare-var top.diff Int)
(declare-var top.OK Bool)
(declare-var top.ni_0.Property.__Property_2_c Int)
(declare-var top.ni_0.Property.ni_5._arrow._first_c Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_1.Sofar.ni_4._arrow._first_c Bool)
(declare-var top.ni_2.Environment.__Environment_2_c Bool)
(declare-var top.ni_2.Environment.__Environment_5_c Bool)
(declare-var top.ni_2.Environment.ni_6._arrow._first_c Bool)
(declare-var top.ni_3.Controller.__Controller_2_c Int)
(declare-var top.ni_3.Controller.ni_7._arrow._first_c Bool)
(declare-var top.ni_0.Property.__Property_2_m Int)
(declare-var top.ni_0.Property.ni_5._arrow._first_m Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_1.Sofar.ni_4._arrow._first_m Bool)
(declare-var top.ni_2.Environment.__Environment_2_m Bool)
(declare-var top.ni_2.Environment.__Environment_5_m Bool)
(declare-var top.ni_2.Environment.ni_6._arrow._first_m Bool)
(declare-var top.ni_3.Controller.__Controller_2_m Int)
(declare-var top.ni_3.Controller.ni_7._arrow._first_m Bool)
(declare-var top.ni_0.Property.__Property_2_x Int)
(declare-var top.ni_0.Property.ni_5._arrow._first_x Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_1.Sofar.ni_4._arrow._first_x Bool)
(declare-var top.ni_2.Environment.__Environment_2_x Bool)
(declare-var top.ni_2.Environment.__Environment_5_x Bool)
(declare-var top.ni_2.Environment.ni_6._arrow._first_x Bool)
(declare-var top.ni_3.Controller.__Controller_2_x Int)
(declare-var top.ni_3.Controller.ni_7._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.__top_2 Bool)
(declare-var top.minus Bool)
(declare-var top.plus Bool)
(declare-var top.realistic Bool)
(declare-var top.speed Int)
(declare-rel top_reset (Int Bool Bool Bool Bool Bool Bool Int Bool Int Bool Bool Bool Bool Bool Bool Int Bool))
(declare-rel top_step (Int Bool Int Bool Bool Bool Bool Bool Bool Int Bool Int Bool Bool Bool Bool Bool Bool Int Bool))

(rule (=> 
  (and 
       
       (Controller_reset top.ni_3.Controller.__Controller_2_c
                         top.ni_3.Controller.ni_7._arrow._first_c
                         top.ni_3.Controller.__Controller_2_m
                         top.ni_3.Controller.ni_7._arrow._first_m)
       (Environment_reset top.ni_2.Environment.__Environment_2_c
                          top.ni_2.Environment.__Environment_5_c
                          top.ni_2.Environment.ni_6._arrow._first_c
                          top.ni_2.Environment.__Environment_2_m
                          top.ni_2.Environment.__Environment_5_m
                          top.ni_2.Environment.ni_6._arrow._first_m)
       (Sofar_reset top.ni_1.Sofar.__Sofar_2_c
                    top.ni_1.Sofar.ni_4._arrow._first_c
                    top.ni_1.Sofar.__Sofar_2_m
                    top.ni_1.Sofar.ni_4._arrow._first_m)
       (Property_reset top.ni_0.Property.__Property_2_c
                       top.ni_0.Property.ni_5._arrow._first_c
                       top.ni_0.Property.__Property_2_m
                       top.ni_0.Property.ni_5._arrow._first_m)
  )
  (top_reset top.ni_0.Property.__Property_2_c
             top.ni_0.Property.ni_5._arrow._first_c
             top.ni_1.Sofar.__Sofar_2_c
             top.ni_1.Sofar.ni_4._arrow._first_c
             top.ni_2.Environment.__Environment_2_c
             top.ni_2.Environment.__Environment_5_c
             top.ni_2.Environment.ni_6._arrow._first_c
             top.ni_3.Controller.__Controller_2_c
             top.ni_3.Controller.ni_7._arrow._first_c
             top.ni_0.Property.__Property_2_m
             top.ni_0.Property.ni_5._arrow._first_m
             top.ni_1.Sofar.__Sofar_2_m
             top.ni_1.Sofar.ni_4._arrow._first_m
             top.ni_2.Environment.__Environment_2_m
             top.ni_2.Environment.__Environment_5_m
             top.ni_2.Environment.ni_6._arrow._first_m
             top.ni_3.Controller.__Controller_2_m
             top.ni_3.Controller.ni_7._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_3.Controller.__Controller_2_m top.ni_3.Controller.__Controller_2_c)
            (= top.ni_3.Controller.ni_7._arrow._first_m top.ni_3.Controller.ni_7._arrow._first_c)
            )
       (Controller_step top.diff
                        top.speed
                        top.plus
                        top.minus
                        top.ni_3.Controller.__Controller_2_m
                        top.ni_3.Controller.ni_7._arrow._first_m
                        top.ni_3.Controller.__Controller_2_x
                        top.ni_3.Controller.ni_7._arrow._first_x)
       (and (= top.ni_2.Environment.__Environment_2_m top.ni_2.Environment.__Environment_2_c)
            (= top.ni_2.Environment.__Environment_5_m top.ni_2.Environment.__Environment_5_c)
            (= top.ni_2.Environment.ni_6._arrow._first_m top.ni_2.Environment.ni_6._arrow._first_c)
            )
       (Environment_step top.diff
                         top.plus
                         top.minus
                         top.realistic
                         top.ni_2.Environment.__Environment_2_m
                         top.ni_2.Environment.__Environment_5_m
                         top.ni_2.Environment.ni_6._arrow._first_m
                         top.ni_2.Environment.__Environment_2_x
                         top.ni_2.Environment.__Environment_5_x
                         top.ni_2.Environment.ni_6._arrow._first_x)
       (and (= top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.__Sofar_2_c)
            (= top.ni_1.Sofar.ni_4._arrow._first_m top.ni_1.Sofar.ni_4._arrow._first_c)
            )
       (Sofar_step (and (and top.realistic (<= 0 top.speed)) (< top.speed 16))
                   top.__top_2
                   top.ni_1.Sofar.__Sofar_2_m
                   top.ni_1.Sofar.ni_4._arrow._first_m
                   top.ni_1.Sofar.__Sofar_2_x
                   top.ni_1.Sofar.ni_4._arrow._first_x)
       (and (= top.ni_0.Property.__Property_2_m top.ni_0.Property.__Property_2_c)
            (= top.ni_0.Property.ni_5._arrow._first_m top.ni_0.Property.ni_5._arrow._first_c)
            )
       (Property_step top.speed
                      top.__top_1
                      top.ni_0.Property.__Property_2_m
                      top.ni_0.Property.ni_5._arrow._first_m
                      top.ni_0.Property.__Property_2_x
                      top.ni_0.Property.ni_5._arrow._first_x)
       (= top.OK (=> top.__top_2 top.__top_1))
       )
  (top_step top.diff
            top.OK
            top.ni_0.Property.__Property_2_c
            top.ni_0.Property.ni_5._arrow._first_c
            top.ni_1.Sofar.__Sofar_2_c
            top.ni_1.Sofar.ni_4._arrow._first_c
            top.ni_2.Environment.__Environment_2_c
            top.ni_2.Environment.__Environment_5_c
            top.ni_2.Environment.ni_6._arrow._first_c
            top.ni_3.Controller.__Controller_2_c
            top.ni_3.Controller.ni_7._arrow._first_c
            top.ni_0.Property.__Property_2_x
            top.ni_0.Property.ni_5._arrow._first_x
            top.ni_1.Sofar.__Sofar_2_x
            top.ni_1.Sofar.ni_4._arrow._first_x
            top.ni_2.Environment.__Environment_2_x
            top.ni_2.Environment.__Environment_5_x
            top.ni_2.Environment.ni_6._arrow._first_x
            top.ni_3.Controller.__Controller_2_x
            top.ni_3.Controller.ni_7._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Bool Bool Bool Bool Bool Bool Int Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.Property.__Property_2_c top.ni_0.Property.ni_5._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_4._arrow._first_c top.ni_2.Environment.__Environment_2_c top.ni_2.Environment.__Environment_5_c top.ni_2.Environment.ni_6._arrow._first_c top.ni_3.Controller.__Controller_2_c top.ni_3.Controller.ni_7._arrow._first_c top.ni_0.Property.__Property_2_m top.ni_0.Property.ni_5._arrow._first_m top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.ni_4._arrow._first_m top.ni_2.Environment.__Environment_2_m top.ni_2.Environment.__Environment_5_m top.ni_2.Environment.ni_6._arrow._first_m top.ni_3.Controller.__Controller_2_m top.ni_3.Controller.ni_7._arrow._first_m)
       (top_step top.diff top.OK top.ni_0.Property.__Property_2_m top.ni_0.Property.ni_5._arrow._first_m top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.ni_4._arrow._first_m top.ni_2.Environment.__Environment_2_m top.ni_2.Environment.__Environment_5_m top.ni_2.Environment.ni_6._arrow._first_m top.ni_3.Controller.__Controller_2_m top.ni_3.Controller.ni_7._arrow._first_m top.ni_0.Property.__Property_2_x top.ni_0.Property.ni_5._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.Environment.__Environment_2_x top.ni_2.Environment.__Environment_5_x top.ni_2.Environment.ni_6._arrow._first_x top.ni_3.Controller.__Controller_2_x top.ni_3.Controller.ni_7._arrow._first_x)
  )
  (MAIN top.ni_0.Property.__Property_2_x top.ni_0.Property.ni_5._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.Environment.__Environment_2_x top.ni_2.Environment.__Environment_5_x top.ni_2.Environment.ni_6._arrow._first_x top.ni_3.Controller.__Controller_2_x top.ni_3.Controller.ni_7._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.Property.__Property_2_c top.ni_0.Property.ni_5._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_4._arrow._first_c top.ni_2.Environment.__Environment_2_c top.ni_2.Environment.__Environment_5_c top.ni_2.Environment.ni_6._arrow._first_c top.ni_3.Controller.__Controller_2_c top.ni_3.Controller.ni_7._arrow._first_c dummytop.OK)
       (top_step top.diff top.OK top.ni_0.Property.__Property_2_c top.ni_0.Property.ni_5._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_4._arrow._first_c top.ni_2.Environment.__Environment_2_c top.ni_2.Environment.__Environment_5_c top.ni_2.Environment.ni_6._arrow._first_c top.ni_3.Controller.__Controller_2_c top.ni_3.Controller.ni_7._arrow._first_c top.ni_0.Property.__Property_2_x top.ni_0.Property.ni_5._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.Environment.__Environment_2_x top.ni_2.Environment.__Environment_5_x top.ni_2.Environment.ni_6._arrow._first_x top.ni_3.Controller.__Controller_2_x top.ni_3.Controller.ni_7._arrow._first_x)
  )
  (MAIN top.ni_0.Property.__Property_2_x top.ni_0.Property.ni_5._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.Environment.__Environment_2_x top.ni_2.Environment.__Environment_5_x top.ni_2.Environment.ni_6._arrow._first_x top.ni_3.Controller.__Controller_2_x top.ni_3.Controller.ni_7._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.Property.__Property_2_x top.ni_0.Property.ni_5._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.Environment.__Environment_2_x top.ni_2.Environment.__Environment_5_x top.ni_2.Environment.ni_6._arrow._first_x top.ni_3.Controller.__Controller_2_x top.ni_3.Controller.ni_7._arrow._first_x top.OK))
  ERR))
(query ERR)
