; Statically linked libraries
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
               (= Sofar.Sofar (and Sofar.X Sofar.__Sofar_2_c)))
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

; excludes4
(declare-var excludes4.X1 Bool)
(declare-var excludes4.X2 Bool)
(declare-var excludes4.X3 Bool)
(declare-var excludes4.X4 Bool)
(declare-var excludes4.excludes Bool)
(declare-rel excludes4_fun (Bool Bool Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (= excludes4.excludes (not (or (or (or (or (or (and excludes4.X1 excludes4.X2) (and excludes4.X1 excludes4.X3)) (and excludes4.X1 excludes4.X4)) (and excludes4.X2 excludes4.X3)) (and excludes4.X2 excludes4.X4)) (and excludes4.X3 excludes4.X4))))
  (excludes4_fun excludes4.X1 excludes4.X2 excludes4.X3 excludes4.X4 excludes4.excludes)
))

; mesi
(declare-var mesi.etat_me1 Bool)
(declare-var mesi.etat_me2 Bool)
(declare-var mesi.etat_me3 Bool)
(declare-var mesi.etat_me4 Bool)
(declare-var mesi.modified_me Int)
(declare-var mesi.exclusive_me Int)
(declare-var mesi.shared_me Int)
(declare-var mesi.invalid_me Int)
(declare-var mesi.__mesi_2_c Int)
(declare-var mesi.__mesi_3_c Int)
(declare-var mesi.__mesi_4_c Int)
(declare-var mesi.__mesi_5_c Int)
(declare-var mesi.ni_3._arrow._first_c Bool)
(declare-var mesi.__mesi_2_m Int)
(declare-var mesi.__mesi_3_m Int)
(declare-var mesi.__mesi_4_m Int)
(declare-var mesi.__mesi_5_m Int)
(declare-var mesi.ni_3._arrow._first_m Bool)
(declare-var mesi.__mesi_2_x Int)
(declare-var mesi.__mesi_3_x Int)
(declare-var mesi.__mesi_4_x Int)
(declare-var mesi.__mesi_5_x Int)
(declare-var mesi.ni_3._arrow._first_x Bool)
(declare-var mesi.__mesi_1 Bool)
(declare-var mesi.garde_me1 Bool)
(declare-var mesi.garde_me2 Bool)
(declare-var mesi.garde_me3 Bool)
(declare-var mesi.garde_me4 Bool)
(declare-rel mesi_reset (Int Int Int Int Bool Int Int Int Int Bool))
(declare-rel mesi_step (Bool Bool Bool Bool Int Int Int Int Int Int Int Int Bool Int Int Int Int Bool))

(rule (=> 
  (and 
       (= mesi.__mesi_2_m mesi.__mesi_2_c)
       (= mesi.__mesi_3_m mesi.__mesi_3_c)
       (= mesi.__mesi_4_m mesi.__mesi_4_c)
       (= mesi.__mesi_5_m mesi.__mesi_5_c)
       (= mesi.ni_3._arrow._first_m true)
  )
  (mesi_reset mesi.__mesi_2_c
              mesi.__mesi_3_c
              mesi.__mesi_4_c
              mesi.__mesi_5_c
              mesi.ni_3._arrow._first_c
              mesi.__mesi_2_m
              mesi.__mesi_3_m
              mesi.__mesi_4_m
              mesi.__mesi_5_m
              mesi.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= mesi.garde_me4 (>= mesi.__mesi_2_c 1))
       (= mesi.garde_me3 (>= mesi.__mesi_3_c 1))
       (= mesi.garde_me2 (>= mesi.__mesi_4_c 1))
       (= mesi.garde_me1 (>= mesi.__mesi_2_c 1))
       (= mesi.ni_3._arrow._first_m mesi.ni_3._arrow._first_c)(and (= mesi.__mesi_1 (ite mesi.ni_3._arrow._first_m true false))
                                                                   (= mesi.ni_3._arrow._first_x false))
       (and (or (not (= mesi.__mesi_1 false))
               (and (or (not (= mesi.etat_me1 false))
                       (and (or (not (= mesi.etat_me2 false))
                               (and (or (not (= mesi.etat_me3 false))
                                       (and (or (not (= mesi.etat_me4 false))
                                               (and (= mesi.shared_me mesi.__mesi_3_c)
                                                    (= mesi.modified_me mesi.__mesi_5_c)
                                                    (= mesi.invalid_me mesi.__mesi_2_c)
                                                    (= mesi.exclusive_me mesi.__mesi_4_c)
                                                    ))
                                            (or (not (= mesi.etat_me4 true))
                                               (and (or (not (= mesi.garde_me4 false))
                                                       (and (= mesi.shared_me mesi.__mesi_3_c)
                                                            (= mesi.modified_me mesi.__mesi_5_c)
                                                            (= mesi.invalid_me mesi.__mesi_2_c)
                                                            (= mesi.exclusive_me mesi.__mesi_4_c)
                                                            ))
                                                    (or (not (= mesi.garde_me4 true))
                                                       (and (= mesi.shared_me 0)
                                                            (= mesi.modified_me 0)
                                                            (= mesi.invalid_me (- (+ (+ (+ mesi.__mesi_2_c mesi.__mesi_5_c) mesi.__mesi_4_c) mesi.__mesi_3_c) 1))
                                                            (= mesi.exclusive_me 1)
                                                            ))
                                               ))
                                       ))
                                    (or (not (= mesi.etat_me3 true))
                                       (and (or (not (= mesi.garde_me3 false))
                                               (and (= mesi.shared_me mesi.__mesi_3_c)
                                                    (= mesi.modified_me mesi.__mesi_5_c)
                                                    (= mesi.invalid_me mesi.__mesi_2_c)
                                                    (= mesi.exclusive_me mesi.__mesi_4_c)
                                                    ))
                                            (or (not (= mesi.garde_me3 true))
                                               (and (= mesi.shared_me 0)
                                                    (= mesi.modified_me 0)
                                                    (= mesi.invalid_me (- (+ (+ (+ mesi.__mesi_2_c mesi.__mesi_5_c) mesi.__mesi_4_c) mesi.__mesi_3_c) 1))
                                                    (= mesi.exclusive_me 1)
                                                    ))
                                       ))
                               ))
                            (or (not (= mesi.etat_me2 true))
                               (and (or (not (= mesi.garde_me2 false))
                                       (and (= mesi.shared_me mesi.__mesi_3_c)
                                            (= mesi.modified_me mesi.__mesi_5_c)
                                            (= mesi.invalid_me mesi.__mesi_2_c)
                                            (= mesi.exclusive_me mesi.__mesi_4_c)
                                            ))
                                    (or (not (= mesi.garde_me2 true))
                                       (and (= mesi.shared_me mesi.__mesi_3_c)
                                            (= mesi.modified_me (- mesi.__mesi_5_c 1))
                                            (= mesi.invalid_me mesi.__mesi_2_c)
                                            (= mesi.exclusive_me (- mesi.__mesi_4_c 1))
                                            ))
                               ))
                       ))
                    (or (not (= mesi.etat_me1 true))
                       (and (or (not (= mesi.garde_me1 false))
                               (and (= mesi.shared_me mesi.__mesi_3_c)
                                    (= mesi.modified_me mesi.__mesi_5_c)
                                    (= mesi.invalid_me mesi.__mesi_2_c)
                                    (= mesi.exclusive_me mesi.__mesi_4_c)
                                    ))
                            (or (not (= mesi.garde_me1 true))
                               (and (= mesi.shared_me (- (+ (- (+ mesi.__mesi_3_c 1) mesi.__mesi_4_c) mesi.__mesi_5_c) 1))
                                    (= mesi.modified_me 0)
                                    (= mesi.invalid_me (- mesi.__mesi_2_c 1))
                                    (= mesi.exclusive_me 0)
                                    ))
                       ))
               ))
            (or (not (= mesi.__mesi_1 true))
               (and (= mesi.shared_me 0)
                    (= mesi.modified_me 0)
                    (= mesi.invalid_me 3)
                    (= mesi.exclusive_me 0)
                    ))
       )
       (= mesi.__mesi_5_x mesi.modified_me)
       (= mesi.__mesi_4_x mesi.exclusive_me)
       (= mesi.__mesi_3_x mesi.shared_me)
       (= mesi.__mesi_2_x mesi.invalid_me)
       )
  (mesi_step mesi.etat_me1
             mesi.etat_me2
             mesi.etat_me3
             mesi.etat_me4
             mesi.modified_me
             mesi.exclusive_me
             mesi.shared_me
             mesi.invalid_me
             mesi.__mesi_2_c
             mesi.__mesi_3_c
             mesi.__mesi_4_c
             mesi.__mesi_5_c
             mesi.ni_3._arrow._first_c
             mesi.__mesi_2_x
             mesi.__mesi_3_x
             mesi.__mesi_4_x
             mesi.__mesi_5_x
             mesi.ni_3._arrow._first_x)
))

; top
(declare-var top.etat_me1 Bool)
(declare-var top.etat_me2 Bool)
(declare-var top.etat_me3 Bool)
(declare-var top.etat_me4 Bool)
(declare-var top.OK Bool)
(declare-var top.__top_2_c Int)
(declare-var top.ni_0._arrow._first_c Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_1.Sofar.ni_4._arrow._first_c Bool)
(declare-var top.ni_2.mesi.__mesi_2_c Int)
(declare-var top.ni_2.mesi.__mesi_3_c Int)
(declare-var top.ni_2.mesi.__mesi_4_c Int)
(declare-var top.ni_2.mesi.__mesi_5_c Int)
(declare-var top.ni_2.mesi.ni_3._arrow._first_c Bool)
(declare-var top.__top_2_m Int)
(declare-var top.ni_0._arrow._first_m Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_1.Sofar.ni_4._arrow._first_m Bool)
(declare-var top.ni_2.mesi.__mesi_2_m Int)
(declare-var top.ni_2.mesi.__mesi_3_m Int)
(declare-var top.ni_2.mesi.__mesi_4_m Int)
(declare-var top.ni_2.mesi.__mesi_5_m Int)
(declare-var top.ni_2.mesi.ni_3._arrow._first_m Bool)
(declare-var top.__top_2_x Int)
(declare-var top.ni_0._arrow._first_x Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_1.Sofar.ni_4._arrow._first_x Bool)
(declare-var top.ni_2.mesi.__mesi_2_x Int)
(declare-var top.ni_2.mesi.__mesi_3_x Int)
(declare-var top.ni_2.mesi.__mesi_4_x Int)
(declare-var top.ni_2.mesi.__mesi_5_x Int)
(declare-var top.ni_2.mesi.ni_3._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.__top_3 Bool)
(declare-var top.__top_4 Bool)
(declare-var top.env Bool)
(declare-var top.exclusive_me Int)
(declare-var top.invalid_me Int)
(declare-var top.modified_me Int)
(declare-var top.shared_me Int)
(declare-rel top_reset (Int Bool Bool Bool Int Int Int Int Bool Int Bool Bool Bool Int Int Int Int Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Int Bool Bool Bool Int Int Int Int Bool Int Bool Bool Bool Int Int Int Int Bool))

(rule (=> 
  (and 
       (= top.__top_2_m top.__top_2_c)
       (mesi_reset top.ni_2.mesi.__mesi_2_c top.ni_2.mesi.__mesi_3_c
                   top.ni_2.mesi.__mesi_4_c top.ni_2.mesi.__mesi_5_c
                   top.ni_2.mesi.ni_3._arrow._first_c
                   top.ni_2.mesi.__mesi_2_m top.ni_2.mesi.__mesi_3_m
                   top.ni_2.mesi.__mesi_4_m top.ni_2.mesi.__mesi_5_m
                   top.ni_2.mesi.ni_3._arrow._first_m)
       (Sofar_reset top.ni_1.Sofar.__Sofar_2_c
                    top.ni_1.Sofar.ni_4._arrow._first_c
                    top.ni_1.Sofar.__Sofar_2_m
                    top.ni_1.Sofar.ni_4._arrow._first_m)
       (= top.ni_0._arrow._first_m true)
  )
  (top_reset top.__top_2_c
             top.ni_0._arrow._first_c
             top.ni_1.Sofar.__Sofar_2_c
             top.ni_1.Sofar.ni_4._arrow._first_c
             top.ni_2.mesi.__mesi_2_c
             top.ni_2.mesi.__mesi_3_c
             top.ni_2.mesi.__mesi_4_c
             top.ni_2.mesi.__mesi_5_c
             top.ni_2.mesi.ni_3._arrow._first_c
             top.__top_2_m
             top.ni_0._arrow._first_m
             top.ni_1.Sofar.__Sofar_2_m
             top.ni_1.Sofar.ni_4._arrow._first_m
             top.ni_2.mesi.__mesi_2_m
             top.ni_2.mesi.__mesi_3_m
             top.ni_2.mesi.__mesi_4_m
             top.ni_2.mesi.__mesi_5_m
             top.ni_2.mesi.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_2.mesi.__mesi_2_m top.ni_2.mesi.__mesi_2_c)
            (= top.ni_2.mesi.__mesi_3_m top.ni_2.mesi.__mesi_3_c)
            (= top.ni_2.mesi.__mesi_4_m top.ni_2.mesi.__mesi_4_c)
            (= top.ni_2.mesi.__mesi_5_m top.ni_2.mesi.__mesi_5_c)
            (= top.ni_2.mesi.ni_3._arrow._first_m top.ni_2.mesi.ni_3._arrow._first_c)
            )
       (mesi_step top.etat_me1
                  top.etat_me2
                  top.etat_me3
                  top.etat_me4
                  top.modified_me
                  top.exclusive_me
                  top.shared_me
                  top.invalid_me
                  top.ni_2.mesi.__mesi_2_m
                  top.ni_2.mesi.__mesi_3_m
                  top.ni_2.mesi.__mesi_4_m
                  top.ni_2.mesi.__mesi_5_m
                  top.ni_2.mesi.ni_3._arrow._first_m
                  top.ni_2.mesi.__mesi_2_x
                  top.ni_2.mesi.__mesi_3_x
                  top.ni_2.mesi.__mesi_4_x
                  top.ni_2.mesi.__mesi_5_x
                  top.ni_2.mesi.ni_3._arrow._first_x)
       (excludes4_fun top.etat_me1
                      top.etat_me2
                      top.etat_me3
                      top.etat_me4
                      top.__top_4)
       (and (= top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.__Sofar_2_c)
            (= top.ni_1.Sofar.ni_4._arrow._first_m top.ni_1.Sofar.ni_4._arrow._first_c)
            )
       (Sofar_step top.__top_4
                   top.env
                   top.ni_1.Sofar.__Sofar_2_m
                   top.ni_1.Sofar.ni_4._arrow._first_m
                   top.ni_1.Sofar.__Sofar_2_x
                   top.ni_1.Sofar.ni_4._arrow._first_x)
       (= top.ni_0._arrow._first_m top.ni_0._arrow._first_c)(and (= top.__top_1 (ite top.ni_0._arrow._first_m true false))
                                                                 (= top.ni_0._arrow._first_x false))
       (and (or (not (= top.__top_1 true))
               (= top.__top_3 true))
            (or (not (= top.__top_1 false))
               (= top.__top_3 (= (+ (+ (+ top.modified_me top.exclusive_me) top.shared_me) top.invalid_me) top.__top_2_c)))
       )
       (= top.__top_2_x (+ (+ (+ top.modified_me top.exclusive_me) top.shared_me) top.invalid_me))
       (= top.OK (=> top.env top.__top_3))
       )
  (top_step top.etat_me1
            top.etat_me2
            top.etat_me3
            top.etat_me4
            top.OK
            top.__top_2_c
            top.ni_0._arrow._first_c
            top.ni_1.Sofar.__Sofar_2_c
            top.ni_1.Sofar.ni_4._arrow._first_c
            top.ni_2.mesi.__mesi_2_c
            top.ni_2.mesi.__mesi_3_c
            top.ni_2.mesi.__mesi_4_c
            top.ni_2.mesi.__mesi_5_c
            top.ni_2.mesi.ni_3._arrow._first_c
            top.__top_2_x
            top.ni_0._arrow._first_x
            top.ni_1.Sofar.__Sofar_2_x
            top.ni_1.Sofar.ni_4._arrow._first_x
            top.ni_2.mesi.__mesi_2_x
            top.ni_2.mesi.__mesi_3_x
            top.ni_2.mesi.__mesi_4_x
            top.ni_2.mesi.__mesi_5_x
            top.ni_2.mesi.ni_3._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Bool Bool Bool Int Int Int Int Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.__top_2_c top.ni_0._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_4._arrow._first_c top.ni_2.mesi.__mesi_2_c top.ni_2.mesi.__mesi_3_c top.ni_2.mesi.__mesi_4_c top.ni_2.mesi.__mesi_5_c top.ni_2.mesi.ni_3._arrow._first_c top.__top_2_m top.ni_0._arrow._first_m top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.ni_4._arrow._first_m top.ni_2.mesi.__mesi_2_m top.ni_2.mesi.__mesi_3_m top.ni_2.mesi.__mesi_4_m top.ni_2.mesi.__mesi_5_m top.ni_2.mesi.ni_3._arrow._first_m)
       (top_step top.etat_me1 top.etat_me2 top.etat_me3 top.etat_me4 top.OK top.__top_2_m top.ni_0._arrow._first_m top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.ni_4._arrow._first_m top.ni_2.mesi.__mesi_2_m top.ni_2.mesi.__mesi_3_m top.ni_2.mesi.__mesi_4_m top.ni_2.mesi.__mesi_5_m top.ni_2.mesi.ni_3._arrow._first_m top.__top_2_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.mesi.__mesi_2_x top.ni_2.mesi.__mesi_3_x top.ni_2.mesi.__mesi_4_x top.ni_2.mesi.__mesi_5_x top.ni_2.mesi.ni_3._arrow._first_x)
  )
  (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.mesi.__mesi_2_x top.ni_2.mesi.__mesi_3_x top.ni_2.mesi.__mesi_4_x top.ni_2.mesi.__mesi_5_x top.ni_2.mesi.ni_3._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.__top_2_c top.ni_0._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_4._arrow._first_c top.ni_2.mesi.__mesi_2_c top.ni_2.mesi.__mesi_3_c top.ni_2.mesi.__mesi_4_c top.ni_2.mesi.__mesi_5_c top.ni_2.mesi.ni_3._arrow._first_c dummytop.OK)
       (top_step top.etat_me1 top.etat_me2 top.etat_me3 top.etat_me4 top.OK top.__top_2_c top.ni_0._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_4._arrow._first_c top.ni_2.mesi.__mesi_2_c top.ni_2.mesi.__mesi_3_c top.ni_2.mesi.__mesi_4_c top.ni_2.mesi.__mesi_5_c top.ni_2.mesi.ni_3._arrow._first_c top.__top_2_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.mesi.__mesi_2_x top.ni_2.mesi.__mesi_3_x top.ni_2.mesi.__mesi_4_x top.ni_2.mesi.__mesi_5_x top.ni_2.mesi.ni_3._arrow._first_x)
  )
  (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.mesi.__mesi_2_x top.ni_2.mesi.__mesi_3_x top.ni_2.mesi.__mesi_4_x top.ni_2.mesi.__mesi_5_x top.ni_2.mesi.ni_3._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.mesi.__mesi_2_x top.ni_2.mesi.__mesi_3_x top.ni_2.mesi.__mesi_4_x top.ni_2.mesi.__mesi_5_x top.ni_2.mesi.ni_3._arrow._first_x top.OK))
  ERR))
(query ERR)
