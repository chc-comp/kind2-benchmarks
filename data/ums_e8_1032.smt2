; Statically linked libraries
; after
(declare-var after.A Bool)
(declare-var after.afterA Bool)
(declare-var after.__after_2_c Bool)
(declare-var after.ni_17._arrow._first_c Bool)
(declare-var after.__after_2_m Bool)
(declare-var after.ni_17._arrow._first_m Bool)
(declare-var after.__after_2_x Bool)
(declare-var after.ni_17._arrow._first_x Bool)
(declare-var after.__after_1 Bool)
(declare-rel after_reset (Bool Bool Bool Bool))
(declare-rel after_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= after.__after_2_m after.__after_2_c)
       (= after.ni_17._arrow._first_m true)
  )
  (after_reset after.__after_2_c
               after.ni_17._arrow._first_c
               after.__after_2_m
               after.ni_17._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= after.ni_17._arrow._first_m after.ni_17._arrow._first_c)(and (= after.__after_1 (ite after.ni_17._arrow._first_m true false))
                                                                    (= after.ni_17._arrow._first_x false))
       (and (or (not (= after.__after_1 true))
               (= after.afterA false))
            (or (not (= after.__after_1 false))
               (= after.afterA after.__after_2_c))
       )
       (= after.__after_2_x (and after.A after.afterA))
       )
  (after_step after.A
              after.afterA
              after.__after_2_c
              after.ni_17._arrow._first_c
              after.__after_2_x
              after.ni_17._arrow._first_x)
))

; always_since
(declare-var always_since.B Bool)
(declare-var always_since.A Bool)
(declare-var always_since.alwaysBsinceA Bool)
(declare-var always_since.__always_since_2_c Bool)
(declare-var always_since.ni_16.after.__after_2_c Bool)
(declare-var always_since.ni_16.after.ni_17._arrow._first_c Bool)
(declare-var always_since.__always_since_2_m Bool)
(declare-var always_since.ni_16.after.__after_2_m Bool)
(declare-var always_since.ni_16.after.ni_17._arrow._first_m Bool)
(declare-var always_since.__always_since_2_x Bool)
(declare-var always_since.ni_16.after.__after_2_x Bool)
(declare-var always_since.ni_16.after.ni_17._arrow._first_x Bool)
(declare-var always_since.__always_since_1 Bool)
(declare-rel always_since_reset (Bool Bool Bool Bool Bool Bool))
(declare-rel always_since_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= always_since.__always_since_2_m always_since.__always_since_2_c)
       (after_reset always_since.ni_16.after.__after_2_c
                    always_since.ni_16.after.ni_17._arrow._first_c
                    always_since.ni_16.after.__after_2_m
                    always_since.ni_16.after.ni_17._arrow._first_m)
  )
  (always_since_reset always_since.__always_since_2_c
                      always_since.ni_16.after.__after_2_c
                      always_since.ni_16.after.ni_17._arrow._first_c
                      always_since.__always_since_2_m
                      always_since.ni_16.after.__after_2_m
                      always_since.ni_16.after.ni_17._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= always_since.ni_16.after.__after_2_m always_since.ni_16.after.__after_2_c)
            (= always_since.ni_16.after.ni_17._arrow._first_m always_since.ni_16.after.ni_17._arrow._first_c)
            )
       (after_step always_since.A
                   always_since.__always_since_1
                   always_since.ni_16.after.__after_2_m
                   always_since.ni_16.after.ni_17._arrow._first_m
                   always_since.ni_16.after.__after_2_x
                   always_since.ni_16.after.ni_17._arrow._first_x)
       (and (or (not (= always_since.A true))
               (= always_since.alwaysBsinceA always_since.B))
            (or (not (= always_since.A false))
               (and (or (not (= always_since.__always_since_1 true))
                       (= always_since.alwaysBsinceA (and always_since.B always_since.__always_since_2_c)))
                    (or (not (= always_since.__always_since_1 false))
                       (= always_since.alwaysBsinceA true))
               ))
       )
       (= always_since.__always_since_2_x always_since.alwaysBsinceA)
       )
  (always_since_step always_since.B
                     always_since.A
                     always_since.alwaysBsinceA
                     always_since.__always_since_2_c
                     always_since.ni_16.after.__after_2_c
                     always_since.ni_16.after.ni_17._arrow._first_c
                     always_since.__always_since_2_x
                     always_since.ni_16.after.__after_2_x
                     always_since.ni_16.after.ni_17._arrow._first_x)
))

; __implies
(declare-var __implies.A Bool)
(declare-var __implies.B Bool)
(declare-var __implies.AimpliesB Bool)
(declare-rel __implies_fun (Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (= __implies.AimpliesB (or (not __implies.A) __implies.B))
  (__implies_fun __implies.A __implies.B __implies.AimpliesB)
))

; once_since
(declare-var once_since.C Bool)
(declare-var once_since.A Bool)
(declare-var once_since.onceCsinceA Bool)
(declare-var once_since.__once_since_2_c Bool)
(declare-var once_since.ni_15.after.__after_2_c Bool)
(declare-var once_since.ni_15.after.ni_17._arrow._first_c Bool)
(declare-var once_since.__once_since_2_m Bool)
(declare-var once_since.ni_15.after.__after_2_m Bool)
(declare-var once_since.ni_15.after.ni_17._arrow._first_m Bool)
(declare-var once_since.__once_since_2_x Bool)
(declare-var once_since.ni_15.after.__after_2_x Bool)
(declare-var once_since.ni_15.after.ni_17._arrow._first_x Bool)
(declare-var once_since.__once_since_1 Bool)
(declare-rel once_since_reset (Bool Bool Bool Bool Bool Bool))
(declare-rel once_since_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= once_since.__once_since_2_m once_since.__once_since_2_c)
       (after_reset once_since.ni_15.after.__after_2_c
                    once_since.ni_15.after.ni_17._arrow._first_c
                    once_since.ni_15.after.__after_2_m
                    once_since.ni_15.after.ni_17._arrow._first_m)
  )
  (once_since_reset once_since.__once_since_2_c
                    once_since.ni_15.after.__after_2_c
                    once_since.ni_15.after.ni_17._arrow._first_c
                    once_since.__once_since_2_m
                    once_since.ni_15.after.__after_2_m
                    once_since.ni_15.after.ni_17._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= once_since.ni_15.after.__after_2_m once_since.ni_15.after.__after_2_c)
            (= once_since.ni_15.after.ni_17._arrow._first_m once_since.ni_15.after.ni_17._arrow._first_c)
            )
       (after_step once_since.A
                   once_since.__once_since_1
                   once_since.ni_15.after.__after_2_m
                   once_since.ni_15.after.ni_17._arrow._first_m
                   once_since.ni_15.after.__after_2_x
                   once_since.ni_15.after.ni_17._arrow._first_x)
       (and (or (not (= once_since.A true))
               (= once_since.onceCsinceA once_since.C))
            (or (not (= once_since.A false))
               (and (or (not (= once_since.__once_since_1 true))
                       (= once_since.onceCsinceA (or once_since.C once_since.__once_since_2_c)))
                    (or (not (= once_since.__once_since_1 false))
                       (= once_since.onceCsinceA true))
               ))
       )
       (= once_since.__once_since_2_x once_since.onceCsinceA)
       )
  (once_since_step once_since.C
                   once_since.A
                   once_since.onceCsinceA
                   once_since.__once_since_2_c
                   once_since.ni_15.after.__after_2_c
                   once_since.ni_15.after.ni_17._arrow._first_c
                   once_since.__once_since_2_x
                   once_since.ni_15.after.__after_2_x
                   once_since.ni_15.after.ni_17._arrow._first_x)
))

; Sofar
(declare-var Sofar.X Bool)
(declare-var Sofar.Sofar Bool)
(declare-var Sofar.__Sofar_2_c Bool)
(declare-var Sofar.ni_14._arrow._first_c Bool)
(declare-var Sofar.__Sofar_2_m Bool)
(declare-var Sofar.ni_14._arrow._first_m Bool)
(declare-var Sofar.__Sofar_2_x Bool)
(declare-var Sofar.ni_14._arrow._first_x Bool)
(declare-var Sofar.__Sofar_1 Bool)
(declare-rel Sofar_reset (Bool Bool Bool Bool))
(declare-rel Sofar_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= Sofar.__Sofar_2_m Sofar.__Sofar_2_c)
       (= Sofar.ni_14._arrow._first_m true)
  )
  (Sofar_reset Sofar.__Sofar_2_c
               Sofar.ni_14._arrow._first_c
               Sofar.__Sofar_2_m
               Sofar.ni_14._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Sofar.ni_14._arrow._first_m Sofar.ni_14._arrow._first_c)(and (= Sofar.__Sofar_1 (ite Sofar.ni_14._arrow._first_m true false))
                                                                    (= Sofar.ni_14._arrow._first_x false))
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
              Sofar.ni_14._arrow._first_c
              Sofar.__Sofar_2_x
              Sofar.ni_14._arrow._first_x)
))

; UMS
(declare-var UMS.on_A Bool)
(declare-var UMS.on_B Bool)
(declare-var UMS.on_C Bool)
(declare-var UMS.ack_AB Bool)
(declare-var UMS.ack_BC Bool)
(declare-var UMS.grant_access Bool)
(declare-var UMS.grant_exit Bool)
(declare-var UMS.do_AB Bool)
(declare-var UMS.do_BC Bool)
(declare-var UMS.empty_section Bool)
(declare-var UMS.only_on_B Bool)
(declare-rel UMS_fun (Bool Bool Bool Bool Bool Bool Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (and (= UMS.only_on_B (and UMS.on_B (not (or UMS.on_A UMS.on_C))))
       (= UMS.grant_exit (and UMS.only_on_B UMS.ack_BC))
       (= UMS.empty_section (not (or (or UMS.on_A UMS.on_B) UMS.on_C)))
       (= UMS.grant_access (and UMS.empty_section UMS.ack_AB))
       (= UMS.do_BC (and (not UMS.ack_BC) UMS.only_on_B))
       (= UMS.do_AB (and (not UMS.ack_AB) UMS.empty_section))
       )
  (UMS_fun UMS.on_A UMS.on_B UMS.on_C UMS.ack_AB UMS.ack_BC UMS.grant_access UMS.grant_exit UMS.do_AB UMS.do_BC)
))

; always_from_to
(declare-var always_from_to.B Bool)
(declare-var always_from_to.A Bool)
(declare-var always_from_to.C Bool)
(declare-var always_from_to.X Bool)
(declare-var always_from_to.ni_11.once_since.__once_since_2_c Bool)
(declare-var always_from_to.ni_11.once_since.ni_15.after.__after_2_c Bool)
(declare-var always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c Bool)
(declare-var always_from_to.ni_12.always_since.__always_since_2_c Bool)
(declare-var always_from_to.ni_12.always_since.ni_16.after.__after_2_c Bool)
(declare-var always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c Bool)
(declare-var always_from_to.ni_13.after.__after_2_c Bool)
(declare-var always_from_to.ni_13.after.ni_17._arrow._first_c Bool)
(declare-var always_from_to.ni_11.once_since.__once_since_2_m Bool)
(declare-var always_from_to.ni_11.once_since.ni_15.after.__after_2_m Bool)
(declare-var always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m Bool)
(declare-var always_from_to.ni_12.always_since.__always_since_2_m Bool)
(declare-var always_from_to.ni_12.always_since.ni_16.after.__after_2_m Bool)
(declare-var always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m Bool)
(declare-var always_from_to.ni_13.after.__after_2_m Bool)
(declare-var always_from_to.ni_13.after.ni_17._arrow._first_m Bool)
(declare-var always_from_to.ni_11.once_since.__once_since_2_x Bool)
(declare-var always_from_to.ni_11.once_since.ni_15.after.__after_2_x Bool)
(declare-var always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x Bool)
(declare-var always_from_to.ni_12.always_since.__always_since_2_x Bool)
(declare-var always_from_to.ni_12.always_since.ni_16.after.__after_2_x Bool)
(declare-var always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x Bool)
(declare-var always_from_to.ni_13.after.__after_2_x Bool)
(declare-var always_from_to.ni_13.after.ni_17._arrow._first_x Bool)
(declare-var always_from_to.__always_from_to_1 Bool)
(declare-var always_from_to.__always_from_to_2 Bool)
(declare-var always_from_to.__always_from_to_3 Bool)
(declare-rel always_from_to_reset (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel always_from_to_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       
       (after_reset always_from_to.ni_13.after.__after_2_c
                    always_from_to.ni_13.after.ni_17._arrow._first_c
                    always_from_to.ni_13.after.__after_2_m
                    always_from_to.ni_13.after.ni_17._arrow._first_m)
       (always_since_reset always_from_to.ni_12.always_since.__always_since_2_c
                           always_from_to.ni_12.always_since.ni_16.after.__after_2_c
                           always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
                           always_from_to.ni_12.always_since.__always_since_2_m
                           always_from_to.ni_12.always_since.ni_16.after.__after_2_m
                           always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m)
       (once_since_reset always_from_to.ni_11.once_since.__once_since_2_c
                         always_from_to.ni_11.once_since.ni_15.after.__after_2_c
                         always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
                         always_from_to.ni_11.once_since.__once_since_2_m
                         always_from_to.ni_11.once_since.ni_15.after.__after_2_m
                         always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m)
  )
  (always_from_to_reset always_from_to.ni_11.once_since.__once_since_2_c
                        always_from_to.ni_11.once_since.ni_15.after.__after_2_c
                        always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
                        always_from_to.ni_12.always_since.__always_since_2_c
                        always_from_to.ni_12.always_since.ni_16.after.__after_2_c
                        always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
                        always_from_to.ni_13.after.__after_2_c
                        always_from_to.ni_13.after.ni_17._arrow._first_c
                        always_from_to.ni_11.once_since.__once_since_2_m
                        always_from_to.ni_11.once_since.ni_15.after.__after_2_m
                        always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m
                        always_from_to.ni_12.always_since.__always_since_2_m
                        always_from_to.ni_12.always_since.ni_16.after.__after_2_m
                        always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m
                        always_from_to.ni_13.after.__after_2_m
                        always_from_to.ni_13.after.ni_17._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= always_from_to.ni_13.after.__after_2_m always_from_to.ni_13.after.__after_2_c)
            (= always_from_to.ni_13.after.ni_17._arrow._first_m always_from_to.ni_13.after.ni_17._arrow._first_c)
            )
       (after_step always_from_to.A
                   always_from_to.__always_from_to_3
                   always_from_to.ni_13.after.__after_2_m
                   always_from_to.ni_13.after.ni_17._arrow._first_m
                   always_from_to.ni_13.after.__after_2_x
                   always_from_to.ni_13.after.ni_17._arrow._first_x)
       (and (= always_from_to.ni_12.always_since.__always_since_2_m always_from_to.ni_12.always_since.__always_since_2_c)
            (= always_from_to.ni_12.always_since.ni_16.after.__after_2_m always_from_to.ni_12.always_since.ni_16.after.__after_2_c)
            (= always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c)
            )
       (always_since_step always_from_to.B
                          always_from_to.A
                          always_from_to.__always_from_to_2
                          always_from_to.ni_12.always_since.__always_since_2_m
                          always_from_to.ni_12.always_since.ni_16.after.__after_2_m
                          always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m
                          always_from_to.ni_12.always_since.__always_since_2_x
                          always_from_to.ni_12.always_since.ni_16.after.__after_2_x
                          always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x)
       (and (= always_from_to.ni_11.once_since.__once_since_2_m always_from_to.ni_11.once_since.__once_since_2_c)
            (= always_from_to.ni_11.once_since.ni_15.after.__after_2_m always_from_to.ni_11.once_since.ni_15.after.__after_2_c)
            (= always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c)
            )
       (once_since_step always_from_to.C
                        always_from_to.A
                        always_from_to.__always_from_to_1
                        always_from_to.ni_11.once_since.__once_since_2_m
                        always_from_to.ni_11.once_since.ni_15.after.__after_2_m
                        always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m
                        always_from_to.ni_11.once_since.__once_since_2_x
                        always_from_to.ni_11.once_since.ni_15.after.__after_2_x
                        always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x)
       (__implies_fun always_from_to.__always_from_to_3
                      (or always_from_to.__always_from_to_2 always_from_to.__always_from_to_1)
                      always_from_to.X)
       )
  (always_from_to_step always_from_to.B
                       always_from_to.A
                       always_from_to.C
                       always_from_to.X
                       always_from_to.ni_11.once_since.__once_since_2_c
                       always_from_to.ni_11.once_since.ni_15.after.__after_2_c
                       always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
                       always_from_to.ni_12.always_since.__always_since_2_c
                       always_from_to.ni_12.always_since.ni_16.after.__after_2_c
                       always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
                       always_from_to.ni_13.after.__after_2_c
                       always_from_to.ni_13.after.ni_17._arrow._first_c
                       always_from_to.ni_11.once_since.__once_since_2_x
                       always_from_to.ni_11.once_since.ni_15.after.__after_2_x
                       always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x
                       always_from_to.ni_12.always_since.__always_since_2_x
                       always_from_to.ni_12.always_since.ni_16.after.__after_2_x
                       always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x
                       always_from_to.ni_13.after.__after_2_x
                       always_from_to.ni_13.after.ni_17._arrow._first_x)
))

; edge
(declare-var edge.X Bool)
(declare-var edge.Y Bool)
(declare-var edge.__edge_2_c Bool)
(declare-var edge.ni_10._arrow._first_c Bool)
(declare-var edge.__edge_2_m Bool)
(declare-var edge.ni_10._arrow._first_m Bool)
(declare-var edge.__edge_2_x Bool)
(declare-var edge.ni_10._arrow._first_x Bool)
(declare-var edge.__edge_1 Bool)
(declare-rel edge_reset (Bool Bool Bool Bool))
(declare-rel edge_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= edge.__edge_2_m edge.__edge_2_c)
       (= edge.ni_10._arrow._first_m true)
  )
  (edge_reset edge.__edge_2_c
              edge.ni_10._arrow._first_c
              edge.__edge_2_m
              edge.ni_10._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= edge.ni_10._arrow._first_m edge.ni_10._arrow._first_c)(and (= edge.__edge_1 (ite edge.ni_10._arrow._first_m true false))
                                                                    (= edge.ni_10._arrow._first_x false))
       (and (or (not (= edge.__edge_1 true))
               (= edge.Y edge.X))
            (or (not (= edge.__edge_1 false))
               (= edge.Y (and edge.X (not edge.__edge_2_c))))
       )
       (= edge.__edge_2_x edge.X)
       )
  (edge_step edge.X
             edge.Y
             edge.__edge_2_c
             edge.ni_10._arrow._first_c
             edge.__edge_2_x
             edge.ni_10._arrow._first_x)
))

; top
(declare-var top.on_A Bool)
(declare-var top.on_B Bool)
(declare-var top.on_C Bool)
(declare-var top.ack_AB Bool)
(declare-var top.ack_BC Bool)
(declare-var top.OK Bool)
(declare-var top.__top_10_c Bool)
(declare-var top.__top_6_c Bool)
(declare-var top.ni_0.Sofar.__Sofar_2_c Bool)
(declare-var top.ni_0.Sofar.ni_14._arrow._first_c Bool)
(declare-var top.ni_1.edge.__edge_2_c Bool)
(declare-var top.ni_1.edge.ni_10._arrow._first_c Bool)
(declare-var top.ni_2.always_from_to.ni_11.once_since.__once_since_2_c Bool)
(declare-var top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_c Bool)
(declare-var top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c Bool)
(declare-var top.ni_2.always_from_to.ni_12.always_since.__always_since_2_c Bool)
(declare-var top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_c Bool)
(declare-var top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c Bool)
(declare-var top.ni_2.always_from_to.ni_13.after.__after_2_c Bool)
(declare-var top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_c Bool)
(declare-var top.ni_3.always_from_to.ni_11.once_since.__once_since_2_c Bool)
(declare-var top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_c Bool)
(declare-var top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c Bool)
(declare-var top.ni_3.always_from_to.ni_12.always_since.__always_since_2_c Bool)
(declare-var top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_c Bool)
(declare-var top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c Bool)
(declare-var top.ni_3.always_from_to.ni_13.after.__after_2_c Bool)
(declare-var top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_c Bool)
(declare-var top.ni_4.edge.__edge_2_c Bool)
(declare-var top.ni_4.edge.ni_10._arrow._first_c Bool)
(declare-var top.ni_5.edge.__edge_2_c Bool)
(declare-var top.ni_5.edge.ni_10._arrow._first_c Bool)
(declare-var top.ni_6._arrow._first_c Bool)
(declare-var top.ni_7.edge.__edge_2_c Bool)
(declare-var top.ni_7.edge.ni_10._arrow._first_c Bool)
(declare-var top.ni_8.always_from_to.ni_11.once_since.__once_since_2_c Bool)
(declare-var top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_c Bool)
(declare-var top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c Bool)
(declare-var top.ni_8.always_from_to.ni_12.always_since.__always_since_2_c Bool)
(declare-var top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_c Bool)
(declare-var top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c Bool)
(declare-var top.ni_8.always_from_to.ni_13.after.__after_2_c Bool)
(declare-var top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_c Bool)
(declare-var top.ni_9.always_from_to.ni_11.once_since.__once_since_2_c Bool)
(declare-var top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_c Bool)
(declare-var top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c Bool)
(declare-var top.ni_9.always_from_to.ni_12.always_since.__always_since_2_c Bool)
(declare-var top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_c Bool)
(declare-var top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c Bool)
(declare-var top.ni_9.always_from_to.ni_13.after.__after_2_c Bool)
(declare-var top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_c Bool)
(declare-var top.__top_10_m Bool)
(declare-var top.__top_6_m Bool)
(declare-var top.ni_0.Sofar.__Sofar_2_m Bool)
(declare-var top.ni_0.Sofar.ni_14._arrow._first_m Bool)
(declare-var top.ni_1.edge.__edge_2_m Bool)
(declare-var top.ni_1.edge.ni_10._arrow._first_m Bool)
(declare-var top.ni_2.always_from_to.ni_11.once_since.__once_since_2_m Bool)
(declare-var top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_m Bool)
(declare-var top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m Bool)
(declare-var top.ni_2.always_from_to.ni_12.always_since.__always_since_2_m Bool)
(declare-var top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_m Bool)
(declare-var top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m Bool)
(declare-var top.ni_2.always_from_to.ni_13.after.__after_2_m Bool)
(declare-var top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_m Bool)
(declare-var top.ni_3.always_from_to.ni_11.once_since.__once_since_2_m Bool)
(declare-var top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_m Bool)
(declare-var top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m Bool)
(declare-var top.ni_3.always_from_to.ni_12.always_since.__always_since_2_m Bool)
(declare-var top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_m Bool)
(declare-var top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m Bool)
(declare-var top.ni_3.always_from_to.ni_13.after.__after_2_m Bool)
(declare-var top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_m Bool)
(declare-var top.ni_4.edge.__edge_2_m Bool)
(declare-var top.ni_4.edge.ni_10._arrow._first_m Bool)
(declare-var top.ni_5.edge.__edge_2_m Bool)
(declare-var top.ni_5.edge.ni_10._arrow._first_m Bool)
(declare-var top.ni_6._arrow._first_m Bool)
(declare-var top.ni_7.edge.__edge_2_m Bool)
(declare-var top.ni_7.edge.ni_10._arrow._first_m Bool)
(declare-var top.ni_8.always_from_to.ni_11.once_since.__once_since_2_m Bool)
(declare-var top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_m Bool)
(declare-var top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m Bool)
(declare-var top.ni_8.always_from_to.ni_12.always_since.__always_since_2_m Bool)
(declare-var top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_m Bool)
(declare-var top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m Bool)
(declare-var top.ni_8.always_from_to.ni_13.after.__after_2_m Bool)
(declare-var top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_m Bool)
(declare-var top.ni_9.always_from_to.ni_11.once_since.__once_since_2_m Bool)
(declare-var top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_m Bool)
(declare-var top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m Bool)
(declare-var top.ni_9.always_from_to.ni_12.always_since.__always_since_2_m Bool)
(declare-var top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_m Bool)
(declare-var top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m Bool)
(declare-var top.ni_9.always_from_to.ni_13.after.__after_2_m Bool)
(declare-var top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_m Bool)
(declare-var top.__top_10_x Bool)
(declare-var top.__top_6_x Bool)
(declare-var top.ni_0.Sofar.__Sofar_2_x Bool)
(declare-var top.ni_0.Sofar.ni_14._arrow._first_x Bool)
(declare-var top.ni_1.edge.__edge_2_x Bool)
(declare-var top.ni_1.edge.ni_10._arrow._first_x Bool)
(declare-var top.ni_2.always_from_to.ni_11.once_since.__once_since_2_x Bool)
(declare-var top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_x Bool)
(declare-var top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x Bool)
(declare-var top.ni_2.always_from_to.ni_12.always_since.__always_since_2_x Bool)
(declare-var top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_x Bool)
(declare-var top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x Bool)
(declare-var top.ni_2.always_from_to.ni_13.after.__after_2_x Bool)
(declare-var top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_x Bool)
(declare-var top.ni_3.always_from_to.ni_11.once_since.__once_since_2_x Bool)
(declare-var top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_x Bool)
(declare-var top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x Bool)
(declare-var top.ni_3.always_from_to.ni_12.always_since.__always_since_2_x Bool)
(declare-var top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_x Bool)
(declare-var top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x Bool)
(declare-var top.ni_3.always_from_to.ni_13.after.__after_2_x Bool)
(declare-var top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_x Bool)
(declare-var top.ni_4.edge.__edge_2_x Bool)
(declare-var top.ni_4.edge.ni_10._arrow._first_x Bool)
(declare-var top.ni_5.edge.__edge_2_x Bool)
(declare-var top.ni_5.edge.ni_10._arrow._first_x Bool)
(declare-var top.ni_6._arrow._first_x Bool)
(declare-var top.ni_7.edge.__edge_2_x Bool)
(declare-var top.ni_7.edge.ni_10._arrow._first_x Bool)
(declare-var top.ni_8.always_from_to.ni_11.once_since.__once_since_2_x Bool)
(declare-var top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_x Bool)
(declare-var top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x Bool)
(declare-var top.ni_8.always_from_to.ni_12.always_since.__always_since_2_x Bool)
(declare-var top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_x Bool)
(declare-var top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x Bool)
(declare-var top.ni_8.always_from_to.ni_13.after.__after_2_x Bool)
(declare-var top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_x Bool)
(declare-var top.ni_9.always_from_to.ni_11.once_since.__once_since_2_x Bool)
(declare-var top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_x Bool)
(declare-var top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x Bool)
(declare-var top.ni_9.always_from_to.ni_12.always_since.__always_since_2_x Bool)
(declare-var top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_x Bool)
(declare-var top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x Bool)
(declare-var top.ni_9.always_from_to.ni_13.after.__after_2_x Bool)
(declare-var top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.__top_11 Bool)
(declare-var top.__top_12 Bool)
(declare-var top.__top_13 Bool)
(declare-var top.__top_14 Bool)
(declare-var top.__top_15 Bool)
(declare-var top.__top_16 Bool)
(declare-var top.__top_2 Bool)
(declare-var top.__top_3 Bool)
(declare-var top.__top_4 Bool)
(declare-var top.__top_5 Bool)
(declare-var top.__top_7 Bool)
(declare-var top.__top_8 Bool)
(declare-var top.__top_9 Bool)
(declare-var top.do_AB Bool)
(declare-var top.do_BC Bool)
(declare-var top.empty_section Bool)
(declare-var top.env Bool)
(declare-var top.grant_access Bool)
(declare-var top.grant_exit Bool)
(declare-var top.no_collision Bool)
(declare-var top.no_derail_AB Bool)
(declare-var top.no_derail_BC Bool)
(declare-rel top_reset (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= top.__top_10_m top.__top_10_c)
       (= top.__top_6_m top.__top_6_c)
       (always_from_to_reset top.ni_9.always_from_to.ni_11.once_since.__once_since_2_c
                             top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_c
                             top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
                             top.ni_9.always_from_to.ni_12.always_since.__always_since_2_c
                             top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_c
                             top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
                             top.ni_9.always_from_to.ni_13.after.__after_2_c
                             top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_c
                             top.ni_9.always_from_to.ni_11.once_since.__once_since_2_m
                             top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_m
                             top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m
                             top.ni_9.always_from_to.ni_12.always_since.__always_since_2_m
                             top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_m
                             top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m
                             top.ni_9.always_from_to.ni_13.after.__after_2_m
                             top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_m)
       (always_from_to_reset top.ni_8.always_from_to.ni_11.once_since.__once_since_2_c
                             top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_c
                             top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
                             top.ni_8.always_from_to.ni_12.always_since.__always_since_2_c
                             top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_c
                             top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
                             top.ni_8.always_from_to.ni_13.after.__after_2_c
                             top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_c
                             top.ni_8.always_from_to.ni_11.once_since.__once_since_2_m
                             top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_m
                             top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m
                             top.ni_8.always_from_to.ni_12.always_since.__always_since_2_m
                             top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_m
                             top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m
                             top.ni_8.always_from_to.ni_13.after.__after_2_m
                             top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_m)
       (edge_reset top.ni_7.edge.__edge_2_c
                   top.ni_7.edge.ni_10._arrow._first_c
                   top.ni_7.edge.__edge_2_m
                   top.ni_7.edge.ni_10._arrow._first_m)
       (= top.ni_6._arrow._first_m true)
       (edge_reset top.ni_5.edge.__edge_2_c
                   top.ni_5.edge.ni_10._arrow._first_c
                   top.ni_5.edge.__edge_2_m
                   top.ni_5.edge.ni_10._arrow._first_m)
       (edge_reset top.ni_4.edge.__edge_2_c
                   top.ni_4.edge.ni_10._arrow._first_c
                   top.ni_4.edge.__edge_2_m
                   top.ni_4.edge.ni_10._arrow._first_m)
       (always_from_to_reset top.ni_3.always_from_to.ni_11.once_since.__once_since_2_c
                             top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_c
                             top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
                             top.ni_3.always_from_to.ni_12.always_since.__always_since_2_c
                             top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_c
                             top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
                             top.ni_3.always_from_to.ni_13.after.__after_2_c
                             top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_c
                             top.ni_3.always_from_to.ni_11.once_since.__once_since_2_m
                             top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_m
                             top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m
                             top.ni_3.always_from_to.ni_12.always_since.__always_since_2_m
                             top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_m
                             top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m
                             top.ni_3.always_from_to.ni_13.after.__after_2_m
                             top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_m)
       (always_from_to_reset top.ni_2.always_from_to.ni_11.once_since.__once_since_2_c
                             top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_c
                             top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
                             top.ni_2.always_from_to.ni_12.always_since.__always_since_2_c
                             top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_c
                             top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
                             top.ni_2.always_from_to.ni_13.after.__after_2_c
                             top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_c
                             top.ni_2.always_from_to.ni_11.once_since.__once_since_2_m
                             top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_m
                             top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m
                             top.ni_2.always_from_to.ni_12.always_since.__always_since_2_m
                             top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_m
                             top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m
                             top.ni_2.always_from_to.ni_13.after.__after_2_m
                             top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_m)
       (edge_reset top.ni_1.edge.__edge_2_c
                   top.ni_1.edge.ni_10._arrow._first_c
                   top.ni_1.edge.__edge_2_m
                   top.ni_1.edge.ni_10._arrow._first_m)
       (Sofar_reset top.ni_0.Sofar.__Sofar_2_c
                    top.ni_0.Sofar.ni_14._arrow._first_c
                    top.ni_0.Sofar.__Sofar_2_m
                    top.ni_0.Sofar.ni_14._arrow._first_m)
  )
  (top_reset top.__top_10_c
             top.__top_6_c
             top.ni_0.Sofar.__Sofar_2_c
             top.ni_0.Sofar.ni_14._arrow._first_c
             top.ni_1.edge.__edge_2_c
             top.ni_1.edge.ni_10._arrow._first_c
             top.ni_2.always_from_to.ni_11.once_since.__once_since_2_c
             top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_c
             top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
             top.ni_2.always_from_to.ni_12.always_since.__always_since_2_c
             top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_c
             top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
             top.ni_2.always_from_to.ni_13.after.__after_2_c
             top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_c
             top.ni_3.always_from_to.ni_11.once_since.__once_since_2_c
             top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_c
             top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
             top.ni_3.always_from_to.ni_12.always_since.__always_since_2_c
             top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_c
             top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
             top.ni_3.always_from_to.ni_13.after.__after_2_c
             top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_c
             top.ni_4.edge.__edge_2_c
             top.ni_4.edge.ni_10._arrow._first_c
             top.ni_5.edge.__edge_2_c
             top.ni_5.edge.ni_10._arrow._first_c
             top.ni_6._arrow._first_c
             top.ni_7.edge.__edge_2_c
             top.ni_7.edge.ni_10._arrow._first_c
             top.ni_8.always_from_to.ni_11.once_since.__once_since_2_c
             top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_c
             top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
             top.ni_8.always_from_to.ni_12.always_since.__always_since_2_c
             top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_c
             top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
             top.ni_8.always_from_to.ni_13.after.__after_2_c
             top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_c
             top.ni_9.always_from_to.ni_11.once_since.__once_since_2_c
             top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_c
             top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
             top.ni_9.always_from_to.ni_12.always_since.__always_since_2_c
             top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_c
             top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
             top.ni_9.always_from_to.ni_13.after.__after_2_c
             top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_c
             top.__top_10_m
             top.__top_6_m
             top.ni_0.Sofar.__Sofar_2_m
             top.ni_0.Sofar.ni_14._arrow._first_m
             top.ni_1.edge.__edge_2_m
             top.ni_1.edge.ni_10._arrow._first_m
             top.ni_2.always_from_to.ni_11.once_since.__once_since_2_m
             top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_m
             top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m
             top.ni_2.always_from_to.ni_12.always_since.__always_since_2_m
             top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_m
             top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m
             top.ni_2.always_from_to.ni_13.after.__after_2_m
             top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_m
             top.ni_3.always_from_to.ni_11.once_since.__once_since_2_m
             top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_m
             top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m
             top.ni_3.always_from_to.ni_12.always_since.__always_since_2_m
             top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_m
             top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m
             top.ni_3.always_from_to.ni_13.after.__after_2_m
             top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_m
             top.ni_4.edge.__edge_2_m
             top.ni_4.edge.ni_10._arrow._first_m
             top.ni_5.edge.__edge_2_m
             top.ni_5.edge.ni_10._arrow._first_m
             top.ni_6._arrow._first_m
             top.ni_7.edge.__edge_2_m
             top.ni_7.edge.ni_10._arrow._first_m
             top.ni_8.always_from_to.ni_11.once_since.__once_since_2_m
             top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_m
             top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m
             top.ni_8.always_from_to.ni_12.always_since.__always_since_2_m
             top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_m
             top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m
             top.ni_8.always_from_to.ni_13.after.__after_2_m
             top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_m
             top.ni_9.always_from_to.ni_11.once_since.__once_since_2_m
             top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_m
             top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m
             top.ni_9.always_from_to.ni_12.always_since.__always_since_2_m
             top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_m
             top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m
             top.ni_9.always_from_to.ni_13.after.__after_2_m
             top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (UMS_fun top.on_A
                top.on_B
                top.on_C
                top.ack_AB
                top.ack_BC
                top.grant_access
                top.grant_exit
                top.do_AB
                top.do_BC)
       (= top.empty_section (not (or (or top.on_A top.on_B) top.on_C)))
       (and (= top.ni_9.always_from_to.ni_11.once_since.__once_since_2_m top.ni_9.always_from_to.ni_11.once_since.__once_since_2_c)
            (= top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_m top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_c)
            (= top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c)
            (= top.ni_9.always_from_to.ni_12.always_since.__always_since_2_m top.ni_9.always_from_to.ni_12.always_since.__always_since_2_c)
            (= top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_m top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_c)
            (= top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c)
            (= top.ni_9.always_from_to.ni_13.after.__after_2_m top.ni_9.always_from_to.ni_13.after.__after_2_c)
            (= top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_m top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_c)
            )
       (always_from_to_step top.ack_BC
                            top.grant_exit
                            top.empty_section
                            top.no_derail_BC
                            top.ni_9.always_from_to.ni_11.once_since.__once_since_2_m
                            top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_m
                            top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m
                            top.ni_9.always_from_to.ni_12.always_since.__always_since_2_m
                            top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_m
                            top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m
                            top.ni_9.always_from_to.ni_13.after.__after_2_m
                            top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_m
                            top.ni_9.always_from_to.ni_11.once_since.__once_since_2_x
                            top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_x
                            top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x
                            top.ni_9.always_from_to.ni_12.always_since.__always_since_2_x
                            top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_x
                            top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x
                            top.ni_9.always_from_to.ni_13.after.__after_2_x
                            top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_x)
       (and (= top.ni_8.always_from_to.ni_11.once_since.__once_since_2_m top.ni_8.always_from_to.ni_11.once_since.__once_since_2_c)
            (= top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_m top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_c)
            (= top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c)
            (= top.ni_8.always_from_to.ni_12.always_since.__always_since_2_m top.ni_8.always_from_to.ni_12.always_since.__always_since_2_c)
            (= top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_m top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_c)
            (= top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c)
            (= top.ni_8.always_from_to.ni_13.after.__after_2_m top.ni_8.always_from_to.ni_13.after.__after_2_c)
            (= top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_m top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_c)
            )
       (always_from_to_step top.ack_AB
                            top.grant_access
                            (and top.on_B (not (or top.on_A top.on_C)))
                            top.no_derail_AB
                            top.ni_8.always_from_to.ni_11.once_since.__once_since_2_m
                            top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_m
                            top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m
                            top.ni_8.always_from_to.ni_12.always_since.__always_since_2_m
                            top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_m
                            top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m
                            top.ni_8.always_from_to.ni_13.after.__after_2_m
                            top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_m
                            top.ni_8.always_from_to.ni_11.once_since.__once_since_2_x
                            top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_x
                            top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x
                            top.ni_8.always_from_to.ni_12.always_since.__always_since_2_x
                            top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_x
                            top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x
                            top.ni_8.always_from_to.ni_13.after.__after_2_x
                            top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_x)
       (__implies_fun top.grant_access
                      top.empty_section
                      top.no_collision)
       (and (= top.ni_7.edge.__edge_2_m top.ni_7.edge.__edge_2_c)
            (= top.ni_7.edge.ni_10._arrow._first_m top.ni_7.edge.ni_10._arrow._first_c)
            )
       (edge_step top.on_C
                  top.__top_7
                  top.ni_7.edge.__edge_2_m
                  top.ni_7.edge.ni_10._arrow._first_m
                  top.ni_7.edge.__edge_2_x
                  top.ni_7.edge.ni_10._arrow._first_x)
       (__implies_fun top.__top_7
                      top.__top_6_c
                      top.__top_8)
       (= top.ni_6._arrow._first_m top.ni_6._arrow._first_c)(and (= top.__top_5 (ite top.ni_6._arrow._first_m true false))
                                                                 (= top.ni_6._arrow._first_x false))
       (and (or (not (= top.__top_5 true))
               (= top.__top_9 true))
            (or (not (= top.__top_5 false))
               (= top.__top_9 top.__top_8))
       )
       (and (= top.ni_5.edge.__edge_2_m top.ni_5.edge.__edge_2_c)
            (= top.ni_5.edge.ni_10._arrow._first_m top.ni_5.edge.ni_10._arrow._first_c)
            )
       (edge_step (not top.on_A)
                  top.__top_3
                  top.ni_5.edge.__edge_2_m
                  top.ni_5.edge.ni_10._arrow._first_m
                  top.ni_5.edge.__edge_2_x
                  top.ni_5.edge.ni_10._arrow._first_x)
       (__implies_fun top.__top_3
                      top.on_B
                      top.__top_4)
       (and (= top.ni_4.edge.__edge_2_m top.ni_4.edge.__edge_2_c)
            (= top.ni_4.edge.ni_10._arrow._first_m top.ni_4.edge.ni_10._arrow._first_c)
            )
       (edge_step (not top.on_B)
                  top.__top_1
                  top.ni_4.edge.__edge_2_m
                  top.ni_4.edge.ni_10._arrow._first_m
                  top.ni_4.edge.__edge_2_x
                  top.ni_4.edge.ni_10._arrow._first_x)
       (__implies_fun top.__top_1
                      (or top.on_A top.on_C)
                      top.__top_2)
       (and (= top.ni_3.always_from_to.ni_11.once_since.__once_since_2_m top.ni_3.always_from_to.ni_11.once_since.__once_since_2_c)
            (= top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_m top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_c)
            (= top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c)
            (= top.ni_3.always_from_to.ni_12.always_since.__always_since_2_m top.ni_3.always_from_to.ni_12.always_since.__always_since_2_c)
            (= top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_m top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_c)
            (= top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c)
            (= top.ni_3.always_from_to.ni_13.after.__after_2_m top.ni_3.always_from_to.ni_13.after.__after_2_c)
            (= top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_m top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_c)
            )
       (always_from_to_step top.ack_AB
                            top.ack_AB
                            top.do_BC
                            top.__top_16
                            top.ni_3.always_from_to.ni_11.once_since.__once_since_2_m
                            top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_m
                            top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m
                            top.ni_3.always_from_to.ni_12.always_since.__always_since_2_m
                            top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_m
                            top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m
                            top.ni_3.always_from_to.ni_13.after.__after_2_m
                            top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_m
                            top.ni_3.always_from_to.ni_11.once_since.__once_since_2_x
                            top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_x
                            top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x
                            top.ni_3.always_from_to.ni_12.always_since.__always_since_2_x
                            top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_x
                            top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x
                            top.ni_3.always_from_to.ni_13.after.__after_2_x
                            top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_x)
       (and (= top.ni_2.always_from_to.ni_11.once_since.__once_since_2_m top.ni_2.always_from_to.ni_11.once_since.__once_since_2_c)
            (= top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_m top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_c)
            (= top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c)
            (= top.ni_2.always_from_to.ni_12.always_since.__always_since_2_m top.ni_2.always_from_to.ni_12.always_since.__always_since_2_c)
            (= top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_m top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_c)
            (= top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c)
            (= top.ni_2.always_from_to.ni_13.after.__after_2_m top.ni_2.always_from_to.ni_13.after.__after_2_c)
            (= top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_m top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_c)
            )
       (always_from_to_step top.ack_BC
                            top.ack_BC
                            top.do_AB
                            top.__top_15
                            top.ni_2.always_from_to.ni_11.once_since.__once_since_2_m
                            top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_m
                            top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m
                            top.ni_2.always_from_to.ni_12.always_since.__always_since_2_m
                            top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_m
                            top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m
                            top.ni_2.always_from_to.ni_13.after.__after_2_m
                            top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_m
                            top.ni_2.always_from_to.ni_11.once_since.__once_since_2_x
                            top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_x
                            top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x
                            top.ni_2.always_from_to.ni_12.always_since.__always_since_2_x
                            top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_x
                            top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x
                            top.ni_2.always_from_to.ni_13.after.__after_2_x
                            top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_x)
       (and (or (not (= top.__top_5 true))
               (= top.__top_14 top.empty_section))
            (or (not (= top.__top_5 false))
               (= top.__top_14 true))
       )
       (and (= top.ni_1.edge.__edge_2_m top.ni_1.edge.__edge_2_c)
            (= top.ni_1.edge.ni_10._arrow._first_m top.ni_1.edge.ni_10._arrow._first_c)
            )
       (edge_step (not top.empty_section)
                  top.__top_11
                  top.ni_1.edge.__edge_2_m
                  top.ni_1.edge.ni_10._arrow._first_m
                  top.ni_1.edge.__edge_2_x
                  top.ni_1.edge.ni_10._arrow._first_x)
       (__implies_fun top.__top_11
                      top.__top_10_c
                      top.__top_12)
       (and (or (not (= top.__top_5 true))
               (= top.__top_13 true))
            (or (not (= top.__top_5 false))
               (= top.__top_13 top.__top_12))
       )
       (and (= top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.__Sofar_2_c)
            (= top.ni_0.Sofar.ni_14._arrow._first_m top.ni_0.Sofar.ni_14._arrow._first_c)
            )
       (Sofar_step (and (and (and (and (and (and (and (not (and top.ack_AB top.ack_BC)) top.__top_16) top.__top_15) top.__top_14) top.__top_13) top.__top_9) top.__top_4) top.__top_2)
                   top.env
                   top.ni_0.Sofar.__Sofar_2_m
                   top.ni_0.Sofar.ni_14._arrow._first_m
                   top.ni_0.Sofar.__Sofar_2_x
                   top.ni_0.Sofar.ni_14._arrow._first_x)
       (= top.__top_6_x top.grant_exit)
       (= top.__top_10_x top.grant_access)
       (= top.OK (=> top.env (and (and (and top.no_collision (not (and top.do_AB top.do_BC))) top.no_derail_AB) top.no_derail_BC)))
       )
  (top_step top.on_A
            top.on_B
            top.on_C
            top.ack_AB
            top.ack_BC
            top.OK
            top.__top_10_c
            top.__top_6_c
            top.ni_0.Sofar.__Sofar_2_c
            top.ni_0.Sofar.ni_14._arrow._first_c
            top.ni_1.edge.__edge_2_c
            top.ni_1.edge.ni_10._arrow._first_c
            top.ni_2.always_from_to.ni_11.once_since.__once_since_2_c
            top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_c
            top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
            top.ni_2.always_from_to.ni_12.always_since.__always_since_2_c
            top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_c
            top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
            top.ni_2.always_from_to.ni_13.after.__after_2_c
            top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_c
            top.ni_3.always_from_to.ni_11.once_since.__once_since_2_c
            top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_c
            top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
            top.ni_3.always_from_to.ni_12.always_since.__always_since_2_c
            top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_c
            top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
            top.ni_3.always_from_to.ni_13.after.__after_2_c
            top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_c
            top.ni_4.edge.__edge_2_c
            top.ni_4.edge.ni_10._arrow._first_c
            top.ni_5.edge.__edge_2_c
            top.ni_5.edge.ni_10._arrow._first_c
            top.ni_6._arrow._first_c
            top.ni_7.edge.__edge_2_c
            top.ni_7.edge.ni_10._arrow._first_c
            top.ni_8.always_from_to.ni_11.once_since.__once_since_2_c
            top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_c
            top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
            top.ni_8.always_from_to.ni_12.always_since.__always_since_2_c
            top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_c
            top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
            top.ni_8.always_from_to.ni_13.after.__after_2_c
            top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_c
            top.ni_9.always_from_to.ni_11.once_since.__once_since_2_c
            top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_c
            top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c
            top.ni_9.always_from_to.ni_12.always_since.__always_since_2_c
            top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_c
            top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c
            top.ni_9.always_from_to.ni_13.after.__after_2_c
            top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_c
            top.__top_10_x
            top.__top_6_x
            top.ni_0.Sofar.__Sofar_2_x
            top.ni_0.Sofar.ni_14._arrow._first_x
            top.ni_1.edge.__edge_2_x
            top.ni_1.edge.ni_10._arrow._first_x
            top.ni_2.always_from_to.ni_11.once_since.__once_since_2_x
            top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_x
            top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x
            top.ni_2.always_from_to.ni_12.always_since.__always_since_2_x
            top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_x
            top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x
            top.ni_2.always_from_to.ni_13.after.__after_2_x
            top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_x
            top.ni_3.always_from_to.ni_11.once_since.__once_since_2_x
            top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_x
            top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x
            top.ni_3.always_from_to.ni_12.always_since.__always_since_2_x
            top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_x
            top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x
            top.ni_3.always_from_to.ni_13.after.__after_2_x
            top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_x
            top.ni_4.edge.__edge_2_x
            top.ni_4.edge.ni_10._arrow._first_x
            top.ni_5.edge.__edge_2_x
            top.ni_5.edge.ni_10._arrow._first_x
            top.ni_6._arrow._first_x
            top.ni_7.edge.__edge_2_x
            top.ni_7.edge.ni_10._arrow._first_x
            top.ni_8.always_from_to.ni_11.once_since.__once_since_2_x
            top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_x
            top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x
            top.ni_8.always_from_to.ni_12.always_since.__always_since_2_x
            top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_x
            top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x
            top.ni_8.always_from_to.ni_13.after.__after_2_x
            top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_x
            top.ni_9.always_from_to.ni_11.once_since.__once_since_2_x
            top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_x
            top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x
            top.ni_9.always_from_to.ni_12.always_since.__always_since_2_x
            top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_x
            top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x
            top.ni_9.always_from_to.ni_13.after.__after_2_x
            top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.__top_10_c top.__top_6_c top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_14._arrow._first_c top.ni_1.edge.__edge_2_c top.ni_1.edge.ni_10._arrow._first_c top.ni_2.always_from_to.ni_11.once_since.__once_since_2_c top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_c top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c top.ni_2.always_from_to.ni_12.always_since.__always_since_2_c top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_c top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c top.ni_2.always_from_to.ni_13.after.__after_2_c top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_c top.ni_3.always_from_to.ni_11.once_since.__once_since_2_c top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_c top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c top.ni_3.always_from_to.ni_12.always_since.__always_since_2_c top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_c top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c top.ni_3.always_from_to.ni_13.after.__after_2_c top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_c top.ni_4.edge.__edge_2_c top.ni_4.edge.ni_10._arrow._first_c top.ni_5.edge.__edge_2_c top.ni_5.edge.ni_10._arrow._first_c top.ni_6._arrow._first_c top.ni_7.edge.__edge_2_c top.ni_7.edge.ni_10._arrow._first_c top.ni_8.always_from_to.ni_11.once_since.__once_since_2_c top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_c top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c top.ni_8.always_from_to.ni_12.always_since.__always_since_2_c top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_c top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c top.ni_8.always_from_to.ni_13.after.__after_2_c top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_c top.ni_9.always_from_to.ni_11.once_since.__once_since_2_c top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_c top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c top.ni_9.always_from_to.ni_12.always_since.__always_since_2_c top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_c top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c top.ni_9.always_from_to.ni_13.after.__after_2_c top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_c top.__top_10_m top.__top_6_m top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.ni_14._arrow._first_m top.ni_1.edge.__edge_2_m top.ni_1.edge.ni_10._arrow._first_m top.ni_2.always_from_to.ni_11.once_since.__once_since_2_m top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_m top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m top.ni_2.always_from_to.ni_12.always_since.__always_since_2_m top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_m top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m top.ni_2.always_from_to.ni_13.after.__after_2_m top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_m top.ni_3.always_from_to.ni_11.once_since.__once_since_2_m top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_m top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m top.ni_3.always_from_to.ni_12.always_since.__always_since_2_m top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_m top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m top.ni_3.always_from_to.ni_13.after.__after_2_m top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_m top.ni_4.edge.__edge_2_m top.ni_4.edge.ni_10._arrow._first_m top.ni_5.edge.__edge_2_m top.ni_5.edge.ni_10._arrow._first_m top.ni_6._arrow._first_m top.ni_7.edge.__edge_2_m top.ni_7.edge.ni_10._arrow._first_m top.ni_8.always_from_to.ni_11.once_since.__once_since_2_m top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_m top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m top.ni_8.always_from_to.ni_12.always_since.__always_since_2_m top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_m top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m top.ni_8.always_from_to.ni_13.after.__after_2_m top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_m top.ni_9.always_from_to.ni_11.once_since.__once_since_2_m top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_m top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m top.ni_9.always_from_to.ni_12.always_since.__always_since_2_m top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_m top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m top.ni_9.always_from_to.ni_13.after.__after_2_m top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_m)
       (top_step top.on_A top.on_B top.on_C top.ack_AB top.ack_BC top.OK top.__top_10_m top.__top_6_m top.ni_0.Sofar.__Sofar_2_m top.ni_0.Sofar.ni_14._arrow._first_m top.ni_1.edge.__edge_2_m top.ni_1.edge.ni_10._arrow._first_m top.ni_2.always_from_to.ni_11.once_since.__once_since_2_m top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_m top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m top.ni_2.always_from_to.ni_12.always_since.__always_since_2_m top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_m top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m top.ni_2.always_from_to.ni_13.after.__after_2_m top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_m top.ni_3.always_from_to.ni_11.once_since.__once_since_2_m top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_m top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m top.ni_3.always_from_to.ni_12.always_since.__always_since_2_m top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_m top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m top.ni_3.always_from_to.ni_13.after.__after_2_m top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_m top.ni_4.edge.__edge_2_m top.ni_4.edge.ni_10._arrow._first_m top.ni_5.edge.__edge_2_m top.ni_5.edge.ni_10._arrow._first_m top.ni_6._arrow._first_m top.ni_7.edge.__edge_2_m top.ni_7.edge.ni_10._arrow._first_m top.ni_8.always_from_to.ni_11.once_since.__once_since_2_m top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_m top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m top.ni_8.always_from_to.ni_12.always_since.__always_since_2_m top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_m top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m top.ni_8.always_from_to.ni_13.after.__after_2_m top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_m top.ni_9.always_from_to.ni_11.once_since.__once_since_2_m top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_m top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_m top.ni_9.always_from_to.ni_12.always_since.__always_since_2_m top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_m top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_m top.ni_9.always_from_to.ni_13.after.__after_2_m top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_m top.__top_10_x top.__top_6_x top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_14._arrow._first_x top.ni_1.edge.__edge_2_x top.ni_1.edge.ni_10._arrow._first_x top.ni_2.always_from_to.ni_11.once_since.__once_since_2_x top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_2.always_from_to.ni_12.always_since.__always_since_2_x top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_2.always_from_to.ni_13.after.__after_2_x top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_11.once_since.__once_since_2_x top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_12.always_since.__always_since_2_x top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_13.after.__after_2_x top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_4.edge.__edge_2_x top.ni_4.edge.ni_10._arrow._first_x top.ni_5.edge.__edge_2_x top.ni_5.edge.ni_10._arrow._first_x top.ni_6._arrow._first_x top.ni_7.edge.__edge_2_x top.ni_7.edge.ni_10._arrow._first_x top.ni_8.always_from_to.ni_11.once_since.__once_since_2_x top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_8.always_from_to.ni_12.always_since.__always_since_2_x top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_8.always_from_to.ni_13.after.__after_2_x top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_11.once_since.__once_since_2_x top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_12.always_since.__always_since_2_x top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_13.after.__after_2_x top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_x)
  )
  (MAIN top.__top_10_x top.__top_6_x top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_14._arrow._first_x top.ni_1.edge.__edge_2_x top.ni_1.edge.ni_10._arrow._first_x top.ni_2.always_from_to.ni_11.once_since.__once_since_2_x top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_2.always_from_to.ni_12.always_since.__always_since_2_x top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_2.always_from_to.ni_13.after.__after_2_x top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_11.once_since.__once_since_2_x top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_12.always_since.__always_since_2_x top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_13.after.__after_2_x top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_4.edge.__edge_2_x top.ni_4.edge.ni_10._arrow._first_x top.ni_5.edge.__edge_2_x top.ni_5.edge.ni_10._arrow._first_x top.ni_6._arrow._first_x top.ni_7.edge.__edge_2_x top.ni_7.edge.ni_10._arrow._first_x top.ni_8.always_from_to.ni_11.once_since.__once_since_2_x top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_8.always_from_to.ni_12.always_since.__always_since_2_x top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_8.always_from_to.ni_13.after.__after_2_x top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_11.once_since.__once_since_2_x top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_12.always_since.__always_since_2_x top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_13.after.__after_2_x top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.__top_10_c top.__top_6_c top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_14._arrow._first_c top.ni_1.edge.__edge_2_c top.ni_1.edge.ni_10._arrow._first_c top.ni_2.always_from_to.ni_11.once_since.__once_since_2_c top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_c top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c top.ni_2.always_from_to.ni_12.always_since.__always_since_2_c top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_c top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c top.ni_2.always_from_to.ni_13.after.__after_2_c top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_c top.ni_3.always_from_to.ni_11.once_since.__once_since_2_c top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_c top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c top.ni_3.always_from_to.ni_12.always_since.__always_since_2_c top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_c top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c top.ni_3.always_from_to.ni_13.after.__after_2_c top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_c top.ni_4.edge.__edge_2_c top.ni_4.edge.ni_10._arrow._first_c top.ni_5.edge.__edge_2_c top.ni_5.edge.ni_10._arrow._first_c top.ni_6._arrow._first_c top.ni_7.edge.__edge_2_c top.ni_7.edge.ni_10._arrow._first_c top.ni_8.always_from_to.ni_11.once_since.__once_since_2_c top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_c top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c top.ni_8.always_from_to.ni_12.always_since.__always_since_2_c top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_c top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c top.ni_8.always_from_to.ni_13.after.__after_2_c top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_c top.ni_9.always_from_to.ni_11.once_since.__once_since_2_c top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_c top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c top.ni_9.always_from_to.ni_12.always_since.__always_since_2_c top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_c top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c top.ni_9.always_from_to.ni_13.after.__after_2_c top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_c dummytop.OK)
       (top_step top.on_A top.on_B top.on_C top.ack_AB top.ack_BC top.OK top.__top_10_c top.__top_6_c top.ni_0.Sofar.__Sofar_2_c top.ni_0.Sofar.ni_14._arrow._first_c top.ni_1.edge.__edge_2_c top.ni_1.edge.ni_10._arrow._first_c top.ni_2.always_from_to.ni_11.once_since.__once_since_2_c top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_c top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c top.ni_2.always_from_to.ni_12.always_since.__always_since_2_c top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_c top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c top.ni_2.always_from_to.ni_13.after.__after_2_c top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_c top.ni_3.always_from_to.ni_11.once_since.__once_since_2_c top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_c top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c top.ni_3.always_from_to.ni_12.always_since.__always_since_2_c top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_c top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c top.ni_3.always_from_to.ni_13.after.__after_2_c top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_c top.ni_4.edge.__edge_2_c top.ni_4.edge.ni_10._arrow._first_c top.ni_5.edge.__edge_2_c top.ni_5.edge.ni_10._arrow._first_c top.ni_6._arrow._first_c top.ni_7.edge.__edge_2_c top.ni_7.edge.ni_10._arrow._first_c top.ni_8.always_from_to.ni_11.once_since.__once_since_2_c top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_c top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c top.ni_8.always_from_to.ni_12.always_since.__always_since_2_c top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_c top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c top.ni_8.always_from_to.ni_13.after.__after_2_c top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_c top.ni_9.always_from_to.ni_11.once_since.__once_since_2_c top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_c top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_c top.ni_9.always_from_to.ni_12.always_since.__always_since_2_c top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_c top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_c top.ni_9.always_from_to.ni_13.after.__after_2_c top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_c top.__top_10_x top.__top_6_x top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_14._arrow._first_x top.ni_1.edge.__edge_2_x top.ni_1.edge.ni_10._arrow._first_x top.ni_2.always_from_to.ni_11.once_since.__once_since_2_x top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_2.always_from_to.ni_12.always_since.__always_since_2_x top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_2.always_from_to.ni_13.after.__after_2_x top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_11.once_since.__once_since_2_x top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_12.always_since.__always_since_2_x top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_13.after.__after_2_x top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_4.edge.__edge_2_x top.ni_4.edge.ni_10._arrow._first_x top.ni_5.edge.__edge_2_x top.ni_5.edge.ni_10._arrow._first_x top.ni_6._arrow._first_x top.ni_7.edge.__edge_2_x top.ni_7.edge.ni_10._arrow._first_x top.ni_8.always_from_to.ni_11.once_since.__once_since_2_x top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_8.always_from_to.ni_12.always_since.__always_since_2_x top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_8.always_from_to.ni_13.after.__after_2_x top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_11.once_since.__once_since_2_x top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_12.always_since.__always_since_2_x top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_13.after.__after_2_x top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_x)
  )
  (MAIN top.__top_10_x top.__top_6_x top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_14._arrow._first_x top.ni_1.edge.__edge_2_x top.ni_1.edge.ni_10._arrow._first_x top.ni_2.always_from_to.ni_11.once_since.__once_since_2_x top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_2.always_from_to.ni_12.always_since.__always_since_2_x top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_2.always_from_to.ni_13.after.__after_2_x top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_11.once_since.__once_since_2_x top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_12.always_since.__always_since_2_x top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_13.after.__after_2_x top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_4.edge.__edge_2_x top.ni_4.edge.ni_10._arrow._first_x top.ni_5.edge.__edge_2_x top.ni_5.edge.ni_10._arrow._first_x top.ni_6._arrow._first_x top.ni_7.edge.__edge_2_x top.ni_7.edge.ni_10._arrow._first_x top.ni_8.always_from_to.ni_11.once_since.__once_since_2_x top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_8.always_from_to.ni_12.always_since.__always_since_2_x top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_8.always_from_to.ni_13.after.__after_2_x top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_11.once_since.__once_since_2_x top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_12.always_since.__always_since_2_x top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_13.after.__after_2_x top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.__top_10_x top.__top_6_x top.ni_0.Sofar.__Sofar_2_x top.ni_0.Sofar.ni_14._arrow._first_x top.ni_1.edge.__edge_2_x top.ni_1.edge.ni_10._arrow._first_x top.ni_2.always_from_to.ni_11.once_since.__once_since_2_x top.ni_2.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_2.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_2.always_from_to.ni_12.always_since.__always_since_2_x top.ni_2.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_2.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_2.always_from_to.ni_13.after.__after_2_x top.ni_2.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_11.once_since.__once_since_2_x top.ni_3.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_3.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_12.always_since.__always_since_2_x top.ni_3.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_3.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_3.always_from_to.ni_13.after.__after_2_x top.ni_3.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_4.edge.__edge_2_x top.ni_4.edge.ni_10._arrow._first_x top.ni_5.edge.__edge_2_x top.ni_5.edge.ni_10._arrow._first_x top.ni_6._arrow._first_x top.ni_7.edge.__edge_2_x top.ni_7.edge.ni_10._arrow._first_x top.ni_8.always_from_to.ni_11.once_since.__once_since_2_x top.ni_8.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_8.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_8.always_from_to.ni_12.always_since.__always_since_2_x top.ni_8.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_8.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_8.always_from_to.ni_13.after.__after_2_x top.ni_8.always_from_to.ni_13.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_11.once_since.__once_since_2_x top.ni_9.always_from_to.ni_11.once_since.ni_15.after.__after_2_x top.ni_9.always_from_to.ni_11.once_since.ni_15.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_12.always_since.__always_since_2_x top.ni_9.always_from_to.ni_12.always_since.ni_16.after.__after_2_x top.ni_9.always_from_to.ni_12.always_since.ni_16.after.ni_17._arrow._first_x top.ni_9.always_from_to.ni_13.after.__after_2_x top.ni_9.always_from_to.ni_13.after.ni_17._arrow._first_x top.OK))
  ERR))
(query ERR)
