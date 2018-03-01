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

; excludes3
(declare-var excludes3.X1 Bool)
(declare-var excludes3.X2 Bool)
(declare-var excludes3.X3 Bool)
(declare-var excludes3.excludes Bool)
(declare-rel excludes3_fun (Bool Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (= excludes3.excludes (not (or (and (and (and excludes3.X1 excludes3.X2) excludes3.X1) excludes3.X3) (and excludes3.X2 excludes3.X3))))
  (excludes3_fun excludes3.X1 excludes3.X2 excludes3.X3 excludes3.excludes)
))

; synapse
(declare-var synapse.e_s1 Bool)
(declare-var synapse.e_s2 Bool)
(declare-var synapse.e_s3 Bool)
(declare-var synapse.init_invalid_s Int)
(declare-var synapse.invalid_s Int)
(declare-var synapse.valid_s Int)
(declare-var synapse.dirty_s Int)
(declare-var synapse.mem_init_s Int)
(declare-var synapse.__synapse_2_c Int)
(declare-var synapse.__synapse_3_c Int)
(declare-var synapse.__synapse_4_c Int)
(declare-var synapse.__synapse_5_c Int)
(declare-var synapse.ni_3._arrow._first_c Bool)
(declare-var synapse.__synapse_2_m Int)
(declare-var synapse.__synapse_3_m Int)
(declare-var synapse.__synapse_4_m Int)
(declare-var synapse.__synapse_5_m Int)
(declare-var synapse.ni_3._arrow._first_m Bool)
(declare-var synapse.__synapse_2_x Int)
(declare-var synapse.__synapse_3_x Int)
(declare-var synapse.__synapse_4_x Int)
(declare-var synapse.__synapse_5_x Int)
(declare-var synapse.ni_3._arrow._first_x Bool)
(declare-var synapse.__synapse_1 Bool)
(declare-var synapse.garde_s1 Bool)
(declare-var synapse.garde_s2 Bool)
(declare-var synapse.garde_s3 Bool)
(declare-rel synapse_reset (Int Int Int Int Bool Int Int Int Int Bool))
(declare-rel synapse_step (Bool Bool Bool Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Bool))

(rule (=> 
  (and 
       (= synapse.__synapse_2_m synapse.__synapse_2_c)
       (= synapse.__synapse_3_m synapse.__synapse_3_c)
       (= synapse.__synapse_4_m synapse.__synapse_4_c)
       (= synapse.__synapse_5_m synapse.__synapse_5_c)
       (= synapse.ni_3._arrow._first_m true)
  )
  (synapse_reset synapse.__synapse_2_c
                 synapse.__synapse_3_c
                 synapse.__synapse_4_c
                 synapse.__synapse_5_c
                 synapse.ni_3._arrow._first_c
                 synapse.__synapse_2_m
                 synapse.__synapse_3_m
                 synapse.__synapse_4_m
                 synapse.__synapse_5_m
                 synapse.ni_3._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= synapse.garde_s3 (>= synapse.__synapse_4_c 1))
       (= synapse.garde_s2 (>= synapse.__synapse_3_c 1))
       (= synapse.garde_s1 (>= synapse.__synapse_4_c 1))
       (= synapse.ni_3._arrow._first_m synapse.ni_3._arrow._first_c)(and (= synapse.__synapse_1 (ite synapse.ni_3._arrow._first_m true false))
                                                                    (= synapse.ni_3._arrow._first_x false))
       (and (or (not (= synapse.__synapse_1 false))
               (and (and (or (not (= synapse.e_s1 true))
                            (and (or (not (= synapse.garde_s1 true))
                                    (= synapse.valid_s (+ synapse.__synapse_3_c 1)))
                                 (or (not (= synapse.garde_s1 false))
                                    (= synapse.valid_s synapse.__synapse_3_c))
                            ))
                         (or (not (= synapse.e_s1 false))
                            (and (or (not (= synapse.e_s2 true))
                                    (and (or (not (= synapse.garde_s2 true))
                                            (= synapse.valid_s 0))
                                         (or (not (= synapse.garde_s2 false))
                                            (= synapse.valid_s synapse.__synapse_3_c))
                                    ))
                                 (or (not (= synapse.e_s2 false))
                                    (and (or (not (= synapse.e_s3 true))
                                            (and (or (not (= synapse.garde_s3 true))
                                                    (= synapse.valid_s 0))
                                                 (or (not (= synapse.garde_s3 false))
                                                    (= synapse.valid_s synapse.__synapse_3_c))
                                            ))
                                         (or (not (= synapse.e_s3 false))
                                            (= synapse.valid_s synapse.__synapse_3_c))
                                    ))
                            ))
                    )
                    (= synapse.mem_init_s synapse.__synapse_5_c)
                    (and (or (not (= synapse.e_s1 false))
                            (and (or (not (= synapse.e_s2 false))
                                    (and (or (not (= synapse.e_s3 false))
                                            (and (= synapse.invalid_s synapse.__synapse_4_c)
                                                 (= synapse.dirty_s synapse.__synapse_2_c)
                                                 ))
                                         (or (not (= synapse.e_s3 true))
                                            (and (or (not (= synapse.garde_s3 false))
                                                    (and (= synapse.invalid_s synapse.__synapse_4_c)
                                                         (= synapse.dirty_s synapse.__synapse_2_c)
                                                         ))
                                                 (or (not (= synapse.garde_s3 true))
                                                    (and (= synapse.invalid_s (- (+ (+ synapse.__synapse_4_c synapse.__synapse_2_c) synapse.__synapse_3_c) 1))
                                                         (= synapse.dirty_s 1)
                                                         ))
                                            ))
                                    ))
                                 (or (not (= synapse.e_s2 true))
                                    (and (or (not (= synapse.garde_s2 false))
                                            (and (= synapse.invalid_s synapse.__synapse_4_c)
                                                 (= synapse.dirty_s synapse.__synapse_2_c)
                                                 ))
                                         (or (not (= synapse.garde_s2 true))
                                            (and (= synapse.invalid_s (- (+ (+ synapse.__synapse_4_c synapse.__synapse_2_c) synapse.__synapse_3_c) 1))
                                                 (= synapse.dirty_s 1)
                                                 ))
                                    ))
                            ))
                         (or (not (= synapse.e_s1 true))
                            (and (or (not (= synapse.garde_s1 false))
                                    (and (= synapse.invalid_s synapse.__synapse_4_c)
                                         (= synapse.dirty_s synapse.__synapse_2_c)
                                         ))
                                 (or (not (= synapse.garde_s1 true))
                                    (and (= synapse.invalid_s (- (+ synapse.__synapse_4_c synapse.__synapse_2_c) 1))
                                         (= synapse.dirty_s 0)
                                         ))
                            ))
                    )
                    ))
            (or (not (= synapse.__synapse_1 true))
               (and (= synapse.valid_s 0)
                    (= synapse.mem_init_s synapse.init_invalid_s)
                    (= synapse.invalid_s synapse.mem_init_s)
                    (= synapse.dirty_s 0)
                    ))
       )
       (= synapse.__synapse_5_x synapse.mem_init_s)
       (= synapse.__synapse_4_x synapse.invalid_s)
       (= synapse.__synapse_3_x synapse.valid_s)
       (= synapse.__synapse_2_x synapse.dirty_s)
       )
  (synapse_step synapse.e_s1
                synapse.e_s2
                synapse.e_s3
                synapse.init_invalid_s
                synapse.invalid_s
                synapse.valid_s
                synapse.dirty_s
                synapse.mem_init_s
                synapse.__synapse_2_c
                synapse.__synapse_3_c
                synapse.__synapse_4_c
                synapse.__synapse_5_c
                synapse.ni_3._arrow._first_c
                synapse.__synapse_2_x
                synapse.__synapse_3_x
                synapse.__synapse_4_x
                synapse.__synapse_5_x
                synapse.ni_3._arrow._first_x)
))

; top
(declare-var top.e_s1 Bool)
(declare-var top.e_s2 Bool)
(declare-var top.e_s3 Bool)
(declare-var top.init_invalid_s Int)
(declare-var top.OK Bool)
(declare-var top.__top_2_c Int)
(declare-var top.ni_0._arrow._first_c Bool)
(declare-var top.ni_1.synapse.__synapse_2_c Int)
(declare-var top.ni_1.synapse.__synapse_3_c Int)
(declare-var top.ni_1.synapse.__synapse_4_c Int)
(declare-var top.ni_1.synapse.__synapse_5_c Int)
(declare-var top.ni_1.synapse.ni_3._arrow._first_c Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_2.Sofar.ni_4._arrow._first_c Bool)
(declare-var top.__top_2_m Int)
(declare-var top.ni_0._arrow._first_m Bool)
(declare-var top.ni_1.synapse.__synapse_2_m Int)
(declare-var top.ni_1.synapse.__synapse_3_m Int)
(declare-var top.ni_1.synapse.__synapse_4_m Int)
(declare-var top.ni_1.synapse.__synapse_5_m Int)
(declare-var top.ni_1.synapse.ni_3._arrow._first_m Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_2.Sofar.ni_4._arrow._first_m Bool)
(declare-var top.__top_2_x Int)
(declare-var top.ni_0._arrow._first_x Bool)
(declare-var top.ni_1.synapse.__synapse_2_x Int)
(declare-var top.ni_1.synapse.__synapse_3_x Int)
(declare-var top.ni_1.synapse.__synapse_4_x Int)
(declare-var top.ni_1.synapse.__synapse_5_x Int)
(declare-var top.ni_1.synapse.ni_3._arrow._first_x Bool)
(declare-var top.ni_2.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_2.Sofar.ni_4._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.__top_3 Bool)
(declare-var top.__top_4 Bool)
(declare-var top.dirty_s Int)
(declare-var top.env Bool)
(declare-var top.invalid_s Int)
(declare-var top.mem_init_s Int)
(declare-var top.valid_s Int)
(declare-rel top_reset (Int Bool Int Int Int Int Bool Bool Bool Int Bool Int Int Int Int Bool Bool Bool))
(declare-rel top_step (Bool Bool Bool Int Bool Int Bool Int Int Int Int Bool Bool Bool Int Bool Int Int Int Int Bool Bool Bool))

(rule (=> 
  (and 
       (= top.__top_2_m top.__top_2_c)
       (Sofar_reset top.ni_2.Sofar.__Sofar_2_c
                    top.ni_2.Sofar.ni_4._arrow._first_c
                    top.ni_2.Sofar.__Sofar_2_m
                    top.ni_2.Sofar.ni_4._arrow._first_m)
       (synapse_reset top.ni_1.synapse.__synapse_2_c
                      top.ni_1.synapse.__synapse_3_c
                      top.ni_1.synapse.__synapse_4_c
                      top.ni_1.synapse.__synapse_5_c
                      top.ni_1.synapse.ni_3._arrow._first_c
                      top.ni_1.synapse.__synapse_2_m
                      top.ni_1.synapse.__synapse_3_m
                      top.ni_1.synapse.__synapse_4_m
                      top.ni_1.synapse.__synapse_5_m
                      top.ni_1.synapse.ni_3._arrow._first_m)
       (= top.ni_0._arrow._first_m true)
  )
  (top_reset top.__top_2_c
             top.ni_0._arrow._first_c
             top.ni_1.synapse.__synapse_2_c
             top.ni_1.synapse.__synapse_3_c
             top.ni_1.synapse.__synapse_4_c
             top.ni_1.synapse.__synapse_5_c
             top.ni_1.synapse.ni_3._arrow._first_c
             top.ni_2.Sofar.__Sofar_2_c
             top.ni_2.Sofar.ni_4._arrow._first_c
             top.__top_2_m
             top.ni_0._arrow._first_m
             top.ni_1.synapse.__synapse_2_m
             top.ni_1.synapse.__synapse_3_m
             top.ni_1.synapse.__synapse_4_m
             top.ni_1.synapse.__synapse_5_m
             top.ni_1.synapse.ni_3._arrow._first_m
             top.ni_2.Sofar.__Sofar_2_m
             top.ni_2.Sofar.ni_4._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (excludes3_fun top.e_s1
                      top.e_s2
                      top.e_s3
                      top.__top_4)
       (and (= top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.__Sofar_2_c)
            (= top.ni_2.Sofar.ni_4._arrow._first_m top.ni_2.Sofar.ni_4._arrow._first_c)
            )
       (Sofar_step (and top.__top_4 (>= top.init_invalid_s 0))
                   top.env
                   top.ni_2.Sofar.__Sofar_2_m
                   top.ni_2.Sofar.ni_4._arrow._first_m
                   top.ni_2.Sofar.__Sofar_2_x
                   top.ni_2.Sofar.ni_4._arrow._first_x)
       (and (= top.ni_1.synapse.__synapse_2_m top.ni_1.synapse.__synapse_2_c)
            (= top.ni_1.synapse.__synapse_3_m top.ni_1.synapse.__synapse_3_c)
            (= top.ni_1.synapse.__synapse_4_m top.ni_1.synapse.__synapse_4_c)
            (= top.ni_1.synapse.__synapse_5_m top.ni_1.synapse.__synapse_5_c)
            (= top.ni_1.synapse.ni_3._arrow._first_m top.ni_1.synapse.ni_3._arrow._first_c)
            )
       (synapse_step top.e_s1
                     top.e_s2
                     top.e_s3
                     top.init_invalid_s
                     top.invalid_s
                     top.valid_s
                     top.dirty_s
                     top.mem_init_s
                     top.ni_1.synapse.__synapse_2_m
                     top.ni_1.synapse.__synapse_3_m
                     top.ni_1.synapse.__synapse_4_m
                     top.ni_1.synapse.__synapse_5_m
                     top.ni_1.synapse.ni_3._arrow._first_m
                     top.ni_1.synapse.__synapse_2_x
                     top.ni_1.synapse.__synapse_3_x
                     top.ni_1.synapse.__synapse_4_x
                     top.ni_1.synapse.__synapse_5_x
                     top.ni_1.synapse.ni_3._arrow._first_x)
       (= top.ni_0._arrow._first_m top.ni_0._arrow._first_c)(and (= top.__top_1 (ite top.ni_0._arrow._first_m true false))
                                                                 (= top.ni_0._arrow._first_x false))
       (and (or (not (= top.__top_1 true))
               (= top.__top_3 true))
            (or (not (= top.__top_1 false))
               (= top.__top_3 (= (+ (+ top.invalid_s top.valid_s) top.dirty_s) top.__top_2_c)))
       )
       (= top.__top_2_x (+ (+ top.invalid_s top.valid_s) top.dirty_s))
       (= top.OK (=> top.env top.__top_3))
       )
  (top_step top.e_s1
            top.e_s2
            top.e_s3
            top.init_invalid_s
            top.OK
            top.__top_2_c
            top.ni_0._arrow._first_c
            top.ni_1.synapse.__synapse_2_c
            top.ni_1.synapse.__synapse_3_c
            top.ni_1.synapse.__synapse_4_c
            top.ni_1.synapse.__synapse_5_c
            top.ni_1.synapse.ni_3._arrow._first_c
            top.ni_2.Sofar.__Sofar_2_c
            top.ni_2.Sofar.ni_4._arrow._first_c
            top.__top_2_x
            top.ni_0._arrow._first_x
            top.ni_1.synapse.__synapse_2_x
            top.ni_1.synapse.__synapse_3_x
            top.ni_1.synapse.__synapse_4_x
            top.ni_1.synapse.__synapse_5_x
            top.ni_1.synapse.ni_3._arrow._first_x
            top.ni_2.Sofar.__Sofar_2_x
            top.ni_2.Sofar.ni_4._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Bool Int Int Int Int Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.__top_2_c top.ni_0._arrow._first_c top.ni_1.synapse.__synapse_2_c top.ni_1.synapse.__synapse_3_c top.ni_1.synapse.__synapse_4_c top.ni_1.synapse.__synapse_5_c top.ni_1.synapse.ni_3._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_4._arrow._first_c top.__top_2_m top.ni_0._arrow._first_m top.ni_1.synapse.__synapse_2_m top.ni_1.synapse.__synapse_3_m top.ni_1.synapse.__synapse_4_m top.ni_1.synapse.__synapse_5_m top.ni_1.synapse.ni_3._arrow._first_m top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.ni_4._arrow._first_m)
       (top_step top.e_s1 top.e_s2 top.e_s3 top.init_invalid_s top.OK top.__top_2_m top.ni_0._arrow._first_m top.ni_1.synapse.__synapse_2_m top.ni_1.synapse.__synapse_3_m top.ni_1.synapse.__synapse_4_m top.ni_1.synapse.__synapse_5_m top.ni_1.synapse.ni_3._arrow._first_m top.ni_2.Sofar.__Sofar_2_m top.ni_2.Sofar.ni_4._arrow._first_m top.__top_2_x top.ni_0._arrow._first_x top.ni_1.synapse.__synapse_2_x top.ni_1.synapse.__synapse_3_x top.ni_1.synapse.__synapse_4_x top.ni_1.synapse.__synapse_5_x top.ni_1.synapse.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x)
  )
  (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.synapse.__synapse_2_x top.ni_1.synapse.__synapse_3_x top.ni_1.synapse.__synapse_4_x top.ni_1.synapse.__synapse_5_x top.ni_1.synapse.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.__top_2_c top.ni_0._arrow._first_c top.ni_1.synapse.__synapse_2_c top.ni_1.synapse.__synapse_3_c top.ni_1.synapse.__synapse_4_c top.ni_1.synapse.__synapse_5_c top.ni_1.synapse.ni_3._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_4._arrow._first_c dummytop.OK)
       (top_step top.e_s1 top.e_s2 top.e_s3 top.init_invalid_s top.OK top.__top_2_c top.ni_0._arrow._first_c top.ni_1.synapse.__synapse_2_c top.ni_1.synapse.__synapse_3_c top.ni_1.synapse.__synapse_4_c top.ni_1.synapse.__synapse_5_c top.ni_1.synapse.ni_3._arrow._first_c top.ni_2.Sofar.__Sofar_2_c top.ni_2.Sofar.ni_4._arrow._first_c top.__top_2_x top.ni_0._arrow._first_x top.ni_1.synapse.__synapse_2_x top.ni_1.synapse.__synapse_3_x top.ni_1.synapse.__synapse_4_x top.ni_1.synapse.__synapse_5_x top.ni_1.synapse.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x)
  )
  (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.synapse.__synapse_2_x top.ni_1.synapse.__synapse_3_x top.ni_1.synapse.__synapse_4_x top.ni_1.synapse.__synapse_5_x top.ni_1.synapse.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.__top_2_x top.ni_0._arrow._first_x top.ni_1.synapse.__synapse_2_x top.ni_1.synapse.__synapse_3_x top.ni_1.synapse.__synapse_4_x top.ni_1.synapse.__synapse_5_x top.ni_1.synapse.ni_3._arrow._first_x top.ni_2.Sofar.__Sofar_2_x top.ni_2.Sofar.ni_4._arrow._first_x top.OK))
  ERR))
(query ERR)
