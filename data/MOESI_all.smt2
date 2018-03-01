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

; moesi
(declare-var moesi.init_invalid_mo Int)
(declare-var moesi.etat_mo1 Bool)
(declare-var moesi.etat_mo2 Bool)
(declare-var moesi.etat_mo3 Bool)
(declare-var moesi.etat_mo4 Bool)
(declare-var moesi.modified_mo Int)
(declare-var moesi.exclusive_mo Int)
(declare-var moesi.shared_mo Int)
(declare-var moesi.invalid_mo Int)
(declare-var moesi.owned_mo Int)
(declare-var moesi.erreur_mo Bool)
(declare-var moesi.__moesi_2_c Int)
(declare-var moesi.__moesi_3_c Int)
(declare-var moesi.__moesi_4_c Int)
(declare-var moesi.__moesi_5_c Int)
(declare-var moesi.__moesi_6_c Int)
(declare-var moesi.ni_3._arrow._first_c Bool)
(declare-var moesi.__moesi_2_m Int)
(declare-var moesi.__moesi_3_m Int)
(declare-var moesi.__moesi_4_m Int)
(declare-var moesi.__moesi_5_m Int)
(declare-var moesi.__moesi_6_m Int)
(declare-var moesi.ni_3._arrow._first_m Bool)
(declare-var moesi.__moesi_2_x Int)
(declare-var moesi.__moesi_3_x Int)
(declare-var moesi.__moesi_4_x Int)
(declare-var moesi.__moesi_5_x Int)
(declare-var moesi.__moesi_6_x Int)
(declare-var moesi.ni_3._arrow._first_x Bool)
(declare-var moesi.__moesi_1 Bool)
(declare-var moesi.garde_mo1 Bool)
(declare-var moesi.garde_mo2 Bool)
(declare-var moesi.garde_mo3 Bool)
(declare-var moesi.garde_mo4 Bool)
(declare-rel moesi_reset (Int Int Int Int Int Bool Int Int Int Int Int Bool))
(declare-rel moesi_step (Int Bool Bool Bool Bool Int Int Int Int Int Bool Int Int Int Int Int Bool Int Int Int Int Int Bool))

(rule (=> 
  (and 
       (= moesi.__moesi_2_m moesi.__moesi_2_c)
       (= moesi.__moesi_3_m moesi.__moesi_3_c)
       (= moesi.__moesi_4_m moesi.__moesi_4_c)
       (= moesi.__moesi_5_m moesi.__moesi_5_c)
       (= moesi.__moesi_6_m moesi.__moesi_6_c)
       (= moesi.ni_3._arrow._first_m true)
  )
  (moesi_reset moesi.__moesi_2_c
               moesi.__moesi_3_c
               moesi.__moesi_4_c
               moesi.__moesi_5_c
               moesi.__moesi_6_c
               moesi.ni_3._arrow._first_c
               moesi.__moesi_2_m
               moesi.__moesi_3_m
               moesi.__moesi_4_m
               moesi.__moesi_5_m
               moesi.__moesi_6_m
               moesi.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= moesi.garde_mo4 (>= moesi.__moesi_4_c 1))
       (= moesi.garde_mo3 (>= (+ moesi.__moesi_5_c moesi.__moesi_3_c) 1))
       (= moesi.garde_mo1 (>= moesi.__moesi_4_c 1))
       (= moesi.ni_3._arrow._first_m moesi.ni_3._arrow._first_c)(and (= moesi.__moesi_1 (ite moesi.ni_3._arrow._first_m true false))
                                                                    (= moesi.ni_3._arrow._first_x false))
       (and (or (not (= moesi.__moesi_1 false))
               (and (or (not (= moesi.etat_mo1 false))
                       (and (or (not (= moesi.etat_mo3 false))
                               (and (or (not (= moesi.etat_mo4 false))
                                       (and (= moesi.shared_mo moesi.__moesi_5_c)
                                            (= moesi.owned_mo moesi.__moesi_3_c)
                                            ))
                                    (or (not (= moesi.etat_mo4 true))
                                       (and (or (not (= moesi.garde_mo4 false))
                                               (and (= moesi.shared_mo moesi.__moesi_5_c)
                                                    (= moesi.owned_mo moesi.__moesi_3_c)
                                                    ))
                                            (or (not (= moesi.garde_mo4 true))
                                               (and (= moesi.shared_mo 0)
                                                    (= moesi.owned_mo 0)
                                                    ))
                                       ))
                               ))
                            (or (not (= moesi.etat_mo3 true))
                               (and (or (not (= moesi.garde_mo3 false))
                                       (and (= moesi.shared_mo moesi.__moesi_5_c)
                                            (= moesi.owned_mo moesi.__moesi_3_c)
                                            ))
                                    (or (not (= moesi.garde_mo3 true))
                                       (and (= moesi.shared_mo 0)
                                            (= moesi.owned_mo 0)
                                            ))
                               ))
                       ))
                    (or (not (= moesi.etat_mo1 true))
                       (and (or (not (= moesi.garde_mo1 false))
                               (and (= moesi.shared_mo moesi.__moesi_5_c)
                                    (= moesi.owned_mo moesi.__moesi_3_c)
                                    ))
                            (or (not (= moesi.garde_mo1 true))
                               (and (= moesi.shared_mo (+ (+ moesi.__moesi_5_c moesi.__moesi_6_c) 1))
                                    (= moesi.owned_mo (+ moesi.__moesi_3_c moesi.__moesi_2_c))
                                    ))
                       ))
               ))
            (or (not (= moesi.__moesi_1 true))
               (and (= moesi.shared_mo 0)
                    (= moesi.owned_mo 0)
                    ))
       )
       (= moesi.garde_mo2 (>= moesi.__moesi_6_c 1))
       (and (or (not (= moesi.__moesi_1 false))
               (and (and (or (not (= moesi.etat_mo1 false))
                            (and (and (or (not (= moesi.etat_mo2 true))
                                         (and (or (not (= moesi.garde_mo2 true))
                                                 (= moesi.modified_mo (+ moesi.__moesi_2_c 1)))
                                              (or (not (= moesi.garde_mo2 false))
                                                 (= moesi.modified_mo moesi.__moesi_2_c))
                                         ))
                                      (or (not (= moesi.etat_mo2 false))
                                         (and (or (not (= moesi.etat_mo3 true))
                                                 (and (or (not (= moesi.garde_mo3 true))
                                                         (= moesi.modified_mo 0))
                                                      (or (not (= moesi.garde_mo3 false))
                                                         (= moesi.modified_mo moesi.__moesi_2_c))
                                                 ))
                                              (or (not (= moesi.etat_mo3 false))
                                                 (and (or (not (= moesi.etat_mo4 true))
                                                         (and (or (not (= moesi.garde_mo4 true))
                                                                 (= moesi.modified_mo 0))
                                                              (or (not (= moesi.garde_mo4 false))
                                                                 (= moesi.modified_mo moesi.__moesi_2_c))
                                                         ))
                                                      (or (not (= moesi.etat_mo4 false))
                                                         (= moesi.modified_mo moesi.__moesi_2_c))
                                                 ))
                                         ))
                                 )
                                 (and (or (not (= moesi.etat_mo3 true))
                                         (and (or (not (= moesi.garde_mo3 true))
                                                 (= moesi.invalid_mo (- (+ (+ (+ (+ moesi.__moesi_4_c moesi.__moesi_2_c) moesi.__moesi_6_c) moesi.__moesi_5_c) moesi.__moesi_3_c) 1)))
                                              (or (not (= moesi.garde_mo3 false))
                                                 (= moesi.invalid_mo moesi.__moesi_4_c))
                                         ))
                                      (or (not (= moesi.etat_mo3 false))
                                         (and (or (not (= moesi.etat_mo4 true))
                                                 (and (or (not (= moesi.garde_mo4 true))
                                                         (= moesi.invalid_mo (- (+ (+ (+ (+ moesi.__moesi_4_c moesi.__moesi_2_c) moesi.__moesi_6_c) moesi.__moesi_5_c) moesi.__moesi_3_c) 1)))
                                                      (or (not (= moesi.garde_mo4 false))
                                                         (= moesi.invalid_mo moesi.__moesi_4_c))
                                                 ))
                                              (or (not (= moesi.etat_mo4 false))
                                                 (= moesi.invalid_mo moesi.__moesi_4_c))
                                         ))
                                 )
                                 (and (or (not (= moesi.etat_mo2 true))
                                         (and (or (not (= moesi.garde_mo2 true))
                                                 (= moesi.exclusive_mo (- moesi.__moesi_6_c 1)))
                                              (or (not (= moesi.garde_mo2 false))
                                                 (= moesi.exclusive_mo moesi.__moesi_6_c))
                                         ))
                                      (or (not (= moesi.etat_mo2 false))
                                         (and (or (not (= moesi.etat_mo3 true))
                                                 (and (or (not (= moesi.garde_mo3 true))
                                                         (= moesi.exclusive_mo 1))
                                                      (or (not (= moesi.garde_mo3 false))
                                                         (= moesi.exclusive_mo moesi.__moesi_6_c))
                                                 ))
                                              (or (not (= moesi.etat_mo3 false))
                                                 (and (or (not (= moesi.etat_mo4 true))
                                                         (and (or (not (= moesi.garde_mo4 true))
                                                                 (= moesi.exclusive_mo 1))
                                                              (or (not (= moesi.garde_mo4 false))
                                                                 (= moesi.exclusive_mo moesi.__moesi_6_c))
                                                         ))
                                                      (or (not (= moesi.etat_mo4 false))
                                                         (= moesi.exclusive_mo moesi.__moesi_6_c))
                                                 ))
                                         ))
                                 )
                                 ))
                         (or (not (= moesi.etat_mo1 true))
                            (and (or (not (= moesi.garde_mo1 false))
                                    (and (= moesi.modified_mo moesi.__moesi_2_c)
                                         (= moesi.invalid_mo moesi.__moesi_4_c)
                                         (= moesi.exclusive_mo moesi.__moesi_6_c)
                                         ))
                                 (or (not (= moesi.garde_mo1 true))
                                    (and (= moesi.modified_mo 0)
                                         (= moesi.invalid_mo (- moesi.__moesi_4_c 1))
                                         (= moesi.exclusive_mo 0)
                                         ))
                            ))
                    )
                    (= moesi.erreur_mo (>= moesi.exclusive_mo 2))
                    ))
            (or (not (= moesi.__moesi_1 true))
               (and (= moesi.modified_mo 0)
                    (= moesi.invalid_mo moesi.init_invalid_mo)
                    (= moesi.exclusive_mo 0)
                    (= moesi.erreur_mo false)
                    ))
       )
       (= moesi.__moesi_6_x moesi.exclusive_mo)
       (= moesi.__moesi_5_x moesi.shared_mo)
       (= moesi.__moesi_4_x moesi.invalid_mo)
       (= moesi.__moesi_3_x moesi.owned_mo)
       (= moesi.__moesi_2_x moesi.modified_mo)
       )
  (moesi_step moesi.init_invalid_mo
              moesi.etat_mo1
              moesi.etat_mo2
              moesi.etat_mo3
              moesi.etat_mo4
              moesi.modified_mo
              moesi.exclusive_mo
              moesi.shared_mo
              moesi.invalid_mo
              moesi.owned_mo
              moesi.erreur_mo
              moesi.__moesi_2_c
              moesi.__moesi_3_c
              moesi.__moesi_4_c
              moesi.__moesi_5_c
              moesi.__moesi_6_c
              moesi.ni_3._arrow._first_c
              moesi.__moesi_2_x
              moesi.__moesi_3_x
              moesi.__moesi_4_x
              moesi.__moesi_5_x
              moesi.__moesi_6_x
              moesi.ni_3._arrow._first_x)
))

; top
(declare-var top.init_invalid_mo Int)
(declare-var top.etat_mo1 Bool)
(declare-var top.etat_mo2 Bool)
(declare-var top.etat_mo3 Bool)
(declare-var top.etat_mo4 Bool)
(declare-var top.OK Bool)
(declare-var top.__top_2_c Int)
(declare-var top.ni_0._arrow._first_c Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_1.Sofar.ni_4._arrow._first_c Bool)
(declare-var top.ni_2.moesi.__moesi_2_c Int)
(declare-var top.ni_2.moesi.__moesi_3_c Int)
(declare-var top.ni_2.moesi.__moesi_4_c Int)
(declare-var top.ni_2.moesi.__moesi_5_c Int)
(declare-var top.ni_2.moesi.__moesi_6_c Int)
(declare-var top.ni_2.moesi.ni_3._arrow._first_c Bool)
(declare-var top.__top_2_m Int)
(declare-var top.ni_0._arrow._first_m Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_1.Sofar.ni_4._arrow._first_m Bool)
(declare-var top.ni_2.moesi.__moesi_2_m Int)
(declare-var top.ni_2.moesi.__moesi_3_m Int)
(declare-var top.ni_2.moesi.__moesi_4_m Int)
(declare-var top.ni_2.moesi.__moesi_5_m Int)
(declare-var top.ni_2.moesi.__moesi_6_m Int)
(declare-var top.ni_2.moesi.ni_3._arrow._first_m Bool)
(declare-var top.__top_2_x Int)
(declare-var top.ni_0._arrow._first_x Bool)
(declare-var top.ni_1.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_1.Sofar.ni_4._arrow._first_x Bool)
(declare-var top.ni_2.moesi.__moesi_2_x Int)
(declare-var top.ni_2.moesi.__moesi_3_x Int)
(declare-var top.ni_2.moesi.__moesi_4_x Int)
(declare-var top.ni_2.moesi.__moesi_5_x Int)
(declare-var top.ni_2.moesi.__moesi_6_x Int)
(declare-var top.ni_2.moesi.ni_3._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.__top_3 Bool)
(declare-var top.__top_4 Bool)
(declare-var top.env Bool)
(declare-var top.erreur_mo Bool)
(declare-var top.exclusive_mo Int)
(declare-var top.invalid_mo Int)
(declare-var top.modified_mo Int)
(declare-var top.owned_mo Int)
(declare-var top.shared_mo Int)
(declare-rel top_reset (Int Bool Bool Bool Int Int Int Int Int Bool Int Bool Bool Bool Int Int Int Int Int Bool))
(declare-rel top_step (Int Bool Bool Bool Bool Bool Int Bool Bool Bool Int Int Int Int Int Bool Int Bool Bool Bool Int Int Int Int Int Bool))

(rule (=> 
  (and 
       (= top.__top_2_m top.__top_2_c)
       (moesi_reset top.ni_2.moesi.__moesi_2_c top.ni_2.moesi.__moesi_3_c
                    top.ni_2.moesi.__moesi_4_c top.ni_2.moesi.__moesi_5_c
                    top.ni_2.moesi.__moesi_6_c
                    top.ni_2.moesi.ni_3._arrow._first_c
                    top.ni_2.moesi.__moesi_2_m top.ni_2.moesi.__moesi_3_m
                    top.ni_2.moesi.__moesi_4_m top.ni_2.moesi.__moesi_5_m
                    top.ni_2.moesi.__moesi_6_m
                    top.ni_2.moesi.ni_3._arrow._first_m)
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
             top.ni_2.moesi.__moesi_2_c
             top.ni_2.moesi.__moesi_3_c
             top.ni_2.moesi.__moesi_4_c
             top.ni_2.moesi.__moesi_5_c
             top.ni_2.moesi.__moesi_6_c
             top.ni_2.moesi.ni_3._arrow._first_c
             top.__top_2_m
             top.ni_0._arrow._first_m
             top.ni_1.Sofar.__Sofar_2_m
             top.ni_1.Sofar.ni_4._arrow._first_m
             top.ni_2.moesi.__moesi_2_m
             top.ni_2.moesi.__moesi_3_m
             top.ni_2.moesi.__moesi_4_m
             top.ni_2.moesi.__moesi_5_m
             top.ni_2.moesi.__moesi_6_m
             top.ni_2.moesi.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_2.moesi.__moesi_2_m top.ni_2.moesi.__moesi_2_c)
            (= top.ni_2.moesi.__moesi_3_m top.ni_2.moesi.__moesi_3_c)
            (= top.ni_2.moesi.__moesi_4_m top.ni_2.moesi.__moesi_4_c)
            (= top.ni_2.moesi.__moesi_5_m top.ni_2.moesi.__moesi_5_c)
            (= top.ni_2.moesi.__moesi_6_m top.ni_2.moesi.__moesi_6_c)
            (= top.ni_2.moesi.ni_3._arrow._first_m top.ni_2.moesi.ni_3._arrow._first_c)
            )
       (moesi_step top.init_invalid_mo
                   top.etat_mo1
                   top.etat_mo2
                   top.etat_mo3
                   top.etat_mo4
                   top.modified_mo
                   top.exclusive_mo
                   top.shared_mo
                   top.invalid_mo
                   top.owned_mo
                   top.erreur_mo
                   top.ni_2.moesi.__moesi_2_m
                   top.ni_2.moesi.__moesi_3_m
                   top.ni_2.moesi.__moesi_4_m
                   top.ni_2.moesi.__moesi_5_m
                   top.ni_2.moesi.__moesi_6_m
                   top.ni_2.moesi.ni_3._arrow._first_m
                   top.ni_2.moesi.__moesi_2_x
                   top.ni_2.moesi.__moesi_3_x
                   top.ni_2.moesi.__moesi_4_x
                   top.ni_2.moesi.__moesi_5_x
                   top.ni_2.moesi.__moesi_6_x
                   top.ni_2.moesi.ni_3._arrow._first_x)
       (excludes4_fun top.etat_mo1
                      top.etat_mo2
                      top.etat_mo3
                      top.etat_mo4
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
               (= top.__top_3 (= (+ (+ (+ (+ top.modified_mo top.exclusive_mo) top.shared_mo) top.invalid_mo) top.owned_mo) top.__top_2_c)))
       )
       (= top.__top_2_x (+ (+ (+ (+ top.modified_mo top.exclusive_mo) top.shared_mo) top.invalid_mo) top.owned_mo))
       (= top.OK (=> top.env (and (not top.erreur_mo) top.__top_3)))
       )
  (top_step top.init_invalid_mo
            top.etat_mo1
            top.etat_mo2
            top.etat_mo3
            top.etat_mo4
            top.OK
            top.__top_2_c
            top.ni_0._arrow._first_c
            top.ni_1.Sofar.__Sofar_2_c
            top.ni_1.Sofar.ni_4._arrow._first_c
            top.ni_2.moesi.__moesi_2_c
            top.ni_2.moesi.__moesi_3_c
            top.ni_2.moesi.__moesi_4_c
            top.ni_2.moesi.__moesi_5_c
            top.ni_2.moesi.__moesi_6_c
            top.ni_2.moesi.ni_3._arrow._first_c
            top.__top_2_x
            top.ni_0._arrow._first_x
            top.ni_1.Sofar.__Sofar_2_x
            top.ni_1.Sofar.ni_4._arrow._first_x
            top.ni_2.moesi.__moesi_2_x
            top.ni_2.moesi.__moesi_3_x
            top.ni_2.moesi.__moesi_4_x
            top.ni_2.moesi.__moesi_5_x
            top.ni_2.moesi.__moesi_6_x
            top.ni_2.moesi.ni_3._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Bool Bool Bool Int Int Int Int Int Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.__top_2_c top.ni_0._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_4._arrow._first_c top.ni_2.moesi.__moesi_2_c top.ni_2.moesi.__moesi_3_c top.ni_2.moesi.__moesi_4_c top.ni_2.moesi.__moesi_5_c top.ni_2.moesi.__moesi_6_c top.ni_2.moesi.ni_3._arrow._first_c top.__top_2_m top.ni_0._arrow._first_m top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.ni_4._arrow._first_m top.ni_2.moesi.__moesi_2_m top.ni_2.moesi.__moesi_3_m top.ni_2.moesi.__moesi_4_m top.ni_2.moesi.__moesi_5_m top.ni_2.moesi.__moesi_6_m top.ni_2.moesi.ni_3._arrow._first_m)
       (top_step top.init_invalid_mo top.etat_mo1 top.etat_mo2 top.etat_mo3 top.etat_mo4 top.OK top.__top_2_m top.ni_0._arrow._first_m top.ni_1.Sofar.__Sofar_2_m top.ni_1.Sofar.ni_4._arrow._first_m top.ni_2.moesi.__moesi_2_m top.ni_2.moesi.__moesi_3_m top.ni_2.moesi.__moesi_4_m top.ni_2.moesi.__moesi_5_m top.ni_2.moesi.__moesi_6_m top.ni_2.moesi.ni_3._arrow._first_m top.__top_2_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.moesi.__moesi_2_x top.ni_2.moesi.__moesi_3_x top.ni_2.moesi.__moesi_4_x top.ni_2.moesi.__moesi_5_x top.ni_2.moesi.__moesi_6_x top.ni_2.moesi.ni_3._arrow._first_x)
  )
  (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.moesi.__moesi_2_x top.ni_2.moesi.__moesi_3_x top.ni_2.moesi.__moesi_4_x top.ni_2.moesi.__moesi_5_x top.ni_2.moesi.__moesi_6_x top.ni_2.moesi.ni_3._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.__top_2_c top.ni_0._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_4._arrow._first_c top.ni_2.moesi.__moesi_2_c top.ni_2.moesi.__moesi_3_c top.ni_2.moesi.__moesi_4_c top.ni_2.moesi.__moesi_5_c top.ni_2.moesi.__moesi_6_c top.ni_2.moesi.ni_3._arrow._first_c dummytop.OK)
       (top_step top.init_invalid_mo top.etat_mo1 top.etat_mo2 top.etat_mo3 top.etat_mo4 top.OK top.__top_2_c top.ni_0._arrow._first_c top.ni_1.Sofar.__Sofar_2_c top.ni_1.Sofar.ni_4._arrow._first_c top.ni_2.moesi.__moesi_2_c top.ni_2.moesi.__moesi_3_c top.ni_2.moesi.__moesi_4_c top.ni_2.moesi.__moesi_5_c top.ni_2.moesi.__moesi_6_c top.ni_2.moesi.ni_3._arrow._first_c top.__top_2_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.moesi.__moesi_2_x top.ni_2.moesi.__moesi_3_x top.ni_2.moesi.__moesi_4_x top.ni_2.moesi.__moesi_5_x top.ni_2.moesi.__moesi_6_x top.ni_2.moesi.ni_3._arrow._first_x)
  )
  (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.moesi.__moesi_2_x top.ni_2.moesi.__moesi_3_x top.ni_2.moesi.__moesi_4_x top.ni_2.moesi.__moesi_5_x top.ni_2.moesi.__moesi_6_x top.ni_2.moesi.ni_3._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.Sofar.__Sofar_2_x top.ni_1.Sofar.ni_4._arrow._first_x top.ni_2.moesi.__moesi_2_x top.ni_2.moesi.__moesi_3_x top.ni_2.moesi.__moesi_4_x top.ni_2.moesi.__moesi_5_x top.ni_2.moesi.__moesi_6_x top.ni_2.moesi.ni_3._arrow._first_x top.OK))
  ERR))
(query ERR)
