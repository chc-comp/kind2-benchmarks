; Statically linked libraries
; jafter
(declare-var jafter.X Bool)
(declare-var jafter.after Bool)
(declare-var jafter.__jafter_2_c Bool)
(declare-var jafter.ni_19._arrow._first_c Bool)
(declare-var jafter.__jafter_2_m Bool)
(declare-var jafter.ni_19._arrow._first_m Bool)
(declare-var jafter.__jafter_2_x Bool)
(declare-var jafter.ni_19._arrow._first_x Bool)
(declare-var jafter.__jafter_1 Bool)
(declare-rel jafter_reset (Bool Bool Bool Bool))
(declare-rel jafter_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= jafter.__jafter_2_m jafter.__jafter_2_c)
       (= jafter.ni_19._arrow._first_m true)
  )
  (jafter_reset jafter.__jafter_2_c
                jafter.ni_19._arrow._first_c
                jafter.__jafter_2_m
                jafter.ni_19._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= jafter.ni_19._arrow._first_m jafter.ni_19._arrow._first_c)(and (= jafter.__jafter_1 (ite jafter.ni_19._arrow._first_m true false))
                                                                    (= jafter.ni_19._arrow._first_x false))
       (and (or (not (= jafter.__jafter_1 true))
               (= jafter.after false))
            (or (not (= jafter.__jafter_1 false))
               (= jafter.after jafter.__jafter_2_c))
       )
       (= jafter.__jafter_2_x jafter.X)
       )
  (jafter_step jafter.X
               jafter.after
               jafter.__jafter_2_c
               jafter.ni_19._arrow._first_c
               jafter.__jafter_2_x
               jafter.ni_19._arrow._first_x)
))

; switch
(declare-var switch.init Bool)
(declare-var switch.on Bool)
(declare-var switch.off Bool)
(declare-var switch.value Bool)
(declare-var switch.__switch_2_c Bool)
(declare-var switch.ni_18._arrow._first_c Bool)
(declare-var switch.__switch_2_m Bool)
(declare-var switch.ni_18._arrow._first_m Bool)
(declare-var switch.__switch_2_x Bool)
(declare-var switch.ni_18._arrow._first_x Bool)
(declare-var switch.__switch_1 Bool)
(declare-var switch.__switch_3 Bool)
(declare-rel switch_reset (Bool Bool Bool Bool))
(declare-rel switch_step (Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= switch.__switch_2_m switch.__switch_2_c)
       (= switch.ni_18._arrow._first_m true)
  )
  (switch_reset switch.__switch_2_c
                switch.ni_18._arrow._first_c
                switch.__switch_2_m
                switch.ni_18._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= switch.ni_18._arrow._first_m switch.ni_18._arrow._first_c)(and (= switch.__switch_1 (ite switch.ni_18._arrow._first_m true false))
                                                                    (= switch.ni_18._arrow._first_x false))
       (and (or (not (= switch.__switch_1 true))
               (= switch.__switch_3 switch.init))
            (or (not (= switch.__switch_1 false))
               (= switch.__switch_3 switch.__switch_2_c))
       )
       (and (or (not (= switch.on true))
               (= switch.value true))
            (or (not (= switch.on false))
               (and (or (not (= switch.off true))
                       (= switch.value false))
                    (or (not (= switch.off false))
                       (= switch.value switch.__switch_3))
               ))
       )
       (= switch.__switch_2_x switch.value)
       )
  (switch_step switch.init
               switch.on
               switch.off
               switch.value
               switch.__switch_2_c
               switch.ni_18._arrow._first_c
               switch.__switch_2_x
               switch.ni_18._arrow._first_x)
))

; edge
(declare-var edge.X Bool)
(declare-var edge.edge Bool)
(declare-var edge.__edge_2_c Bool)
(declare-var edge.ni_17._arrow._first_c Bool)
(declare-var edge.__edge_2_m Bool)
(declare-var edge.ni_17._arrow._first_m Bool)
(declare-var edge.__edge_2_x Bool)
(declare-var edge.ni_17._arrow._first_x Bool)
(declare-var edge.__edge_1 Bool)
(declare-rel edge_reset (Bool Bool Bool Bool))
(declare-rel edge_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= edge.__edge_2_m edge.__edge_2_c)
       (= edge.ni_17._arrow._first_m true)
  )
  (edge_reset edge.__edge_2_c
              edge.ni_17._arrow._first_c
              edge.__edge_2_m
              edge.ni_17._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= edge.ni_17._arrow._first_m edge.ni_17._arrow._first_c)(and (= edge.__edge_1 (ite edge.ni_17._arrow._first_m true false))
                                                                    (= edge.ni_17._arrow._first_x false))
       (and (or (not (= edge.__edge_1 true))
               (= edge.edge false))
            (or (not (= edge.__edge_1 false))
               (= edge.edge (or edge.X (not edge.__edge_2_c))))
       )
       (= edge.__edge_2_x edge.X)
       )
  (edge_step edge.X
             edge.edge
             edge.__edge_2_c
             edge.ni_17._arrow._first_c
             edge.__edge_2_x
             edge.ni_17._arrow._first_x)
))

; once_from_to
(declare-var once_from_to.A Bool)
(declare-var once_from_to.B Bool)
(declare-var once_from_to.X Bool)
(declare-var once_from_to.OK Bool)
(declare-var once_from_to.ni_15.switch.__switch_2_c Bool)
(declare-var once_from_to.ni_15.switch.ni_18._arrow._first_c Bool)
(declare-var once_from_to.ni_16.jafter.__jafter_2_c Bool)
(declare-var once_from_to.ni_16.jafter.ni_19._arrow._first_c Bool)
(declare-var once_from_to.ni_15.switch.__switch_2_m Bool)
(declare-var once_from_to.ni_15.switch.ni_18._arrow._first_m Bool)
(declare-var once_from_to.ni_16.jafter.__jafter_2_m Bool)
(declare-var once_from_to.ni_16.jafter.ni_19._arrow._first_m Bool)
(declare-var once_from_to.ni_15.switch.__switch_2_x Bool)
(declare-var once_from_to.ni_15.switch.ni_18._arrow._first_x Bool)
(declare-var once_from_to.ni_16.jafter.__jafter_2_x Bool)
(declare-var once_from_to.ni_16.jafter.ni_19._arrow._first_x Bool)
(declare-var once_from_to.__once_from_to_1 Bool)
(declare-var once_from_to.between_A_and_X Bool)
(declare-rel once_from_to_reset (Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel once_from_to_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       
       (jafter_reset once_from_to.ni_16.jafter.__jafter_2_c
                     once_from_to.ni_16.jafter.ni_19._arrow._first_c
                     once_from_to.ni_16.jafter.__jafter_2_m
                     once_from_to.ni_16.jafter.ni_19._arrow._first_m)
       (switch_reset once_from_to.ni_15.switch.__switch_2_c
                     once_from_to.ni_15.switch.ni_18._arrow._first_c
                     once_from_to.ni_15.switch.__switch_2_m
                     once_from_to.ni_15.switch.ni_18._arrow._first_m)
  )
  (once_from_to_reset once_from_to.ni_15.switch.__switch_2_c
                      once_from_to.ni_15.switch.ni_18._arrow._first_c
                      once_from_to.ni_16.jafter.__jafter_2_c
                      once_from_to.ni_16.jafter.ni_19._arrow._first_c
                      once_from_to.ni_15.switch.__switch_2_m
                      once_from_to.ni_15.switch.ni_18._arrow._first_m
                      once_from_to.ni_16.jafter.__jafter_2_m
                      once_from_to.ni_16.jafter.ni_19._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= once_from_to.ni_16.jafter.__jafter_2_m once_from_to.ni_16.jafter.__jafter_2_c)
            (= once_from_to.ni_16.jafter.ni_19._arrow._first_m once_from_to.ni_16.jafter.ni_19._arrow._first_c)
            )
       (jafter_step once_from_to.X
                    once_from_to.__once_from_to_1
                    once_from_to.ni_16.jafter.__jafter_2_m
                    once_from_to.ni_16.jafter.ni_19._arrow._first_m
                    once_from_to.ni_16.jafter.__jafter_2_x
                    once_from_to.ni_16.jafter.ni_19._arrow._first_x)
       (and (= once_from_to.ni_15.switch.__switch_2_m once_from_to.ni_15.switch.__switch_2_c)
            (= once_from_to.ni_15.switch.ni_18._arrow._first_m once_from_to.ni_15.switch.ni_18._arrow._first_c)
            )
       (switch_step false
                    once_from_to.A
                    once_from_to.__once_from_to_1
                    once_from_to.between_A_and_X
                    once_from_to.ni_15.switch.__switch_2_m
                    once_from_to.ni_15.switch.ni_18._arrow._first_m
                    once_from_to.ni_15.switch.__switch_2_x
                    once_from_to.ni_15.switch.ni_18._arrow._first_x)
       (= once_from_to.OK (not (and once_from_to.between_A_and_X once_from_to.B)))
       )
  (once_from_to_step once_from_to.A
                     once_from_to.B
                     once_from_to.X
                     once_from_to.OK
                     once_from_to.ni_15.switch.__switch_2_c
                     once_from_to.ni_15.switch.ni_18._arrow._first_c
                     once_from_to.ni_16.jafter.__jafter_2_c
                     once_from_to.ni_16.jafter.ni_19._arrow._first_c
                     once_from_to.ni_15.switch.__switch_2_x
                     once_from_to.ni_15.switch.ni_18._arrow._first_x
                     once_from_to.ni_16.jafter.__jafter_2_x
                     once_from_to.ni_16.jafter.ni_19._arrow._first_x)
))

; controller
(declare-var controller.request_door Bool)
(declare-var controller.warning_start Bool)
(declare-var controller.in_station Bool)
(declare-var controller.door_is_open Bool)
(declare-var controller.open_door Bool)
(declare-var controller.close_door Bool)
(declare-var controller.door_ok Bool)
(declare-var controller.ni_14.switch.__switch_2_c Bool)
(declare-var controller.ni_14.switch.ni_18._arrow._first_c Bool)
(declare-var controller.ni_14.switch.__switch_2_m Bool)
(declare-var controller.ni_14.switch.ni_18._arrow._first_m Bool)
(declare-var controller.ni_14.switch.__switch_2_x Bool)
(declare-var controller.ni_14.switch.ni_18._arrow._first_x Bool)
(declare-var controller.req_pending Bool)
(declare-rel controller_reset (Bool Bool Bool Bool))
(declare-rel controller_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       
       (switch_reset controller.ni_14.switch.__switch_2_c
                     controller.ni_14.switch.ni_18._arrow._first_c
                     controller.ni_14.switch.__switch_2_m
                     controller.ni_14.switch.ni_18._arrow._first_m)
  )
  (controller_reset controller.ni_14.switch.__switch_2_c
                    controller.ni_14.switch.ni_18._arrow._first_c
                    controller.ni_14.switch.__switch_2_m
                    controller.ni_14.switch.ni_18._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= controller.ni_14.switch.__switch_2_m controller.ni_14.switch.__switch_2_c)
            (= controller.ni_14.switch.ni_18._arrow._first_m controller.ni_14.switch.ni_18._arrow._first_c)
            )
       (switch_step false
                    (and controller.request_door (not controller.warning_start))
                    controller.door_is_open
                    controller.req_pending
                    controller.ni_14.switch.__switch_2_m
                    controller.ni_14.switch.ni_18._arrow._first_m
                    controller.ni_14.switch.__switch_2_x
                    controller.ni_14.switch.ni_18._arrow._first_x)
       (= controller.open_door (and controller.req_pending controller.in_station))
       (= controller.door_ok (and (not controller.door_is_open) controller.warning_start))
       (= controller.close_door (and controller.warning_start controller.door_is_open))
       )
  (controller_step controller.request_door
                   controller.warning_start
                   controller.in_station
                   controller.door_is_open
                   controller.open_door
                   controller.close_door
                   controller.door_ok
                   controller.ni_14.switch.__switch_2_c
                   controller.ni_14.switch.ni_18._arrow._first_c
                   controller.ni_14.switch.__switch_2_x
                   controller.ni_14.switch.ni_18._arrow._first_x)
))

; environment
(declare-var environment.door_is_open Bool)
(declare-var environment.open_door Bool)
(declare-var environment.close_door Bool)
(declare-var environment.in_station Bool)
(declare-var environment.door_ok Bool)
(declare-var environment.warning_start Bool)
(declare-var environment.env_always_ok Bool)
(declare-var environment.__environment_8_c Bool)
(declare-var environment.ni_10.jafter.__jafter_2_c Bool)
(declare-var environment.ni_10.jafter.ni_19._arrow._first_c Bool)
(declare-var environment.ni_11.edge.__edge_2_c Bool)
(declare-var environment.ni_11.edge.ni_17._arrow._first_c Bool)
(declare-var environment.ni_12.edge.__edge_2_c Bool)
(declare-var environment.ni_12.edge.ni_17._arrow._first_c Bool)
(declare-var environment.ni_13.edge.__edge_2_c Bool)
(declare-var environment.ni_13.edge.ni_17._arrow._first_c Bool)
(declare-var environment.ni_7.edge.__edge_2_c Bool)
(declare-var environment.ni_7.edge.ni_17._arrow._first_c Bool)
(declare-var environment.ni_8.edge.__edge_2_c Bool)
(declare-var environment.ni_8.edge.ni_17._arrow._first_c Bool)
(declare-var environment.ni_9._arrow._first_c Bool)
(declare-var environment.__environment_8_m Bool)
(declare-var environment.ni_10.jafter.__jafter_2_m Bool)
(declare-var environment.ni_10.jafter.ni_19._arrow._first_m Bool)
(declare-var environment.ni_11.edge.__edge_2_m Bool)
(declare-var environment.ni_11.edge.ni_17._arrow._first_m Bool)
(declare-var environment.ni_12.edge.__edge_2_m Bool)
(declare-var environment.ni_12.edge.ni_17._arrow._first_m Bool)
(declare-var environment.ni_13.edge.__edge_2_m Bool)
(declare-var environment.ni_13.edge.ni_17._arrow._first_m Bool)
(declare-var environment.ni_7.edge.__edge_2_m Bool)
(declare-var environment.ni_7.edge.ni_17._arrow._first_m Bool)
(declare-var environment.ni_8.edge.__edge_2_m Bool)
(declare-var environment.ni_8.edge.ni_17._arrow._first_m Bool)
(declare-var environment.ni_9._arrow._first_m Bool)
(declare-var environment.__environment_8_x Bool)
(declare-var environment.ni_10.jafter.__jafter_2_x Bool)
(declare-var environment.ni_10.jafter.ni_19._arrow._first_x Bool)
(declare-var environment.ni_11.edge.__edge_2_x Bool)
(declare-var environment.ni_11.edge.ni_17._arrow._first_x Bool)
(declare-var environment.ni_12.edge.__edge_2_x Bool)
(declare-var environment.ni_12.edge.ni_17._arrow._first_x Bool)
(declare-var environment.ni_13.edge.__edge_2_x Bool)
(declare-var environment.ni_13.edge.ni_17._arrow._first_x Bool)
(declare-var environment.ni_7.edge.__edge_2_x Bool)
(declare-var environment.ni_7.edge.ni_17._arrow._first_x Bool)
(declare-var environment.ni_8.edge.__edge_2_x Bool)
(declare-var environment.ni_8.edge.ni_17._arrow._first_x Bool)
(declare-var environment.ni_9._arrow._first_x Bool)
(declare-var environment.__environment_1 Bool)
(declare-var environment.__environment_2 Bool)
(declare-var environment.__environment_3 Bool)
(declare-var environment.__environment_4 Bool)
(declare-var environment.__environment_5 Bool)
(declare-var environment.__environment_6 Bool)
(declare-var environment.__environment_7 Bool)
(declare-var environment.door_initially_closed Bool)
(declare-var environment.initially_not_in_station Bool)
(declare-rel environment_reset (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel environment_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= environment.__environment_8_m environment.__environment_8_c)
       (= environment.ni_9._arrow._first_m true)
       (edge_reset environment.ni_8.edge.__edge_2_c
                   environment.ni_8.edge.ni_17._arrow._first_c
                   environment.ni_8.edge.__edge_2_m
                   environment.ni_8.edge.ni_17._arrow._first_m)
       (edge_reset environment.ni_7.edge.__edge_2_c
                   environment.ni_7.edge.ni_17._arrow._first_c
                   environment.ni_7.edge.__edge_2_m
                   environment.ni_7.edge.ni_17._arrow._first_m)
       (edge_reset environment.ni_13.edge.__edge_2_c
                   environment.ni_13.edge.ni_17._arrow._first_c
                   environment.ni_13.edge.__edge_2_m
                   environment.ni_13.edge.ni_17._arrow._first_m)
       (edge_reset environment.ni_12.edge.__edge_2_c
                   environment.ni_12.edge.ni_17._arrow._first_c
                   environment.ni_12.edge.__edge_2_m
                   environment.ni_12.edge.ni_17._arrow._first_m)
       (edge_reset environment.ni_11.edge.__edge_2_c
                   environment.ni_11.edge.ni_17._arrow._first_c
                   environment.ni_11.edge.__edge_2_m
                   environment.ni_11.edge.ni_17._arrow._first_m)
       (jafter_reset environment.ni_10.jafter.__jafter_2_c
                     environment.ni_10.jafter.ni_19._arrow._first_c
                     environment.ni_10.jafter.__jafter_2_m
                     environment.ni_10.jafter.ni_19._arrow._first_m)
  )
  (environment_reset environment.__environment_8_c
                     environment.ni_10.jafter.__jafter_2_c
                     environment.ni_10.jafter.ni_19._arrow._first_c
                     environment.ni_11.edge.__edge_2_c
                     environment.ni_11.edge.ni_17._arrow._first_c
                     environment.ni_12.edge.__edge_2_c
                     environment.ni_12.edge.ni_17._arrow._first_c
                     environment.ni_13.edge.__edge_2_c
                     environment.ni_13.edge.ni_17._arrow._first_c
                     environment.ni_7.edge.__edge_2_c
                     environment.ni_7.edge.ni_17._arrow._first_c
                     environment.ni_8.edge.__edge_2_c
                     environment.ni_8.edge.ni_17._arrow._first_c
                     environment.ni_9._arrow._first_c
                     environment.__environment_8_m
                     environment.ni_10.jafter.__jafter_2_m
                     environment.ni_10.jafter.ni_19._arrow._first_m
                     environment.ni_11.edge.__edge_2_m
                     environment.ni_11.edge.ni_17._arrow._first_m
                     environment.ni_12.edge.__edge_2_m
                     environment.ni_12.edge.ni_17._arrow._first_m
                     environment.ni_13.edge.__edge_2_m
                     environment.ni_13.edge.ni_17._arrow._first_m
                     environment.ni_7.edge.__edge_2_m
                     environment.ni_7.edge.ni_17._arrow._first_m
                     environment.ni_8.edge.__edge_2_m
                     environment.ni_8.edge.ni_17._arrow._first_m
                     environment.ni_9._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= environment.ni_13.edge.__edge_2_m environment.ni_13.edge.__edge_2_c)
            (= environment.ni_13.edge.ni_17._arrow._first_m environment.ni_13.edge.ni_17._arrow._first_c)
            )
       (edge_step environment.warning_start
                  environment.__environment_1
                  environment.ni_13.edge.__edge_2_m
                  environment.ni_13.edge.ni_17._arrow._first_m
                  environment.ni_13.edge.__edge_2_x
                  environment.ni_13.edge.ni_17._arrow._first_x)
       (and (= environment.ni_12.edge.__edge_2_m environment.ni_12.edge.__edge_2_c)
            (= environment.ni_12.edge.ni_17._arrow._first_m environment.ni_12.edge.ni_17._arrow._first_c)
            )
       (edge_step (not environment.in_station)
                  environment.__environment_3
                  environment.ni_12.edge.__edge_2_m
                  environment.ni_12.edge.ni_17._arrow._first_m
                  environment.ni_12.edge.__edge_2_x
                  environment.ni_12.edge.ni_17._arrow._first_x)
       (and (= environment.ni_11.edge.__edge_2_m environment.ni_11.edge.__edge_2_c)
            (= environment.ni_11.edge.ni_17._arrow._first_m environment.ni_11.edge.ni_17._arrow._first_c)
            )
       (edge_step (not environment.warning_start)
                  environment.__environment_2
                  environment.ni_11.edge.__edge_2_m
                  environment.ni_11.edge.ni_17._arrow._first_m
                  environment.ni_11.edge.__edge_2_x
                  environment.ni_11.edge.ni_17._arrow._first_x)
       (and (= environment.ni_10.jafter.__jafter_2_m environment.ni_10.jafter.__jafter_2_c)
            (= environment.ni_10.jafter.ni_19._arrow._first_m environment.ni_10.jafter.ni_19._arrow._first_c)
            )
       (jafter_step environment.door_ok
                    environment.__environment_5
                    environment.ni_10.jafter.__jafter_2_m
                    environment.ni_10.jafter.ni_19._arrow._first_m
                    environment.ni_10.jafter.__jafter_2_x
                    environment.ni_10.jafter.ni_19._arrow._first_x)
       (= environment.ni_9._arrow._first_m environment.ni_9._arrow._first_c)
       (and (= environment.__environment_4 (ite environment.ni_9._arrow._first_m true false))
            (= environment.ni_9._arrow._first_x false))
       (and (or (not (= environment.__environment_4 false))
               (and (= environment.initially_not_in_station true)
                    (= environment.door_initially_closed true)
                    ))
            (or (not (= environment.__environment_4 true))
               (and (= environment.initially_not_in_station (not environment.in_station))
                    (= environment.door_initially_closed (not environment.door_is_open))
                    ))
       )
       (and (= environment.ni_8.edge.__edge_2_m environment.ni_8.edge.__edge_2_c)
            (= environment.ni_8.edge.ni_17._arrow._first_m environment.ni_8.edge.ni_17._arrow._first_c)
            )
       (edge_step (not environment.door_is_open)
                  environment.__environment_6
                  environment.ni_8.edge.__edge_2_m
                  environment.ni_8.edge.ni_17._arrow._first_m
                  environment.ni_8.edge.__edge_2_x
                  environment.ni_8.edge.ni_17._arrow._first_x)
       (and (= environment.ni_7.edge.__edge_2_m environment.ni_7.edge.__edge_2_c)
            (= environment.ni_7.edge.ni_17._arrow._first_m environment.ni_7.edge.ni_17._arrow._first_c)
            )
       (edge_step environment.door_is_open
                  environment.__environment_7
                  environment.ni_7.edge.__edge_2_m
                  environment.ni_7.edge.ni_17._arrow._first_m
                  environment.ni_7.edge.__edge_2_x
                  environment.ni_7.edge.ni_17._arrow._first_x)
       (and (or (not (= environment.__environment_4 true))
               (= environment.env_always_ok (and (and (and (and (and (and (and (=> environment.__environment_6 environment.close_door) (=> environment.__environment_7 environment.open_door)) (=> environment.__environment_3 environment.__environment_5)) environment.door_initially_closed) environment.initially_not_in_station) (= environment.__environment_3 environment.__environment_2)) (=> environment.warning_start environment.in_station)) (=> environment.__environment_1 (not environment.open_door)))))
            (or (not (= environment.__environment_4 false))
               (= environment.env_always_ok (and (and (and (and (and (and (and (and (=> environment.__environment_6 environment.close_door) (=> environment.__environment_7 environment.open_door)) (=> environment.__environment_3 environment.__environment_5)) environment.door_initially_closed) environment.initially_not_in_station) (= environment.__environment_3 environment.__environment_2)) (=> environment.warning_start environment.in_station)) (=> environment.__environment_1 (not environment.open_door))) environment.__environment_8_c)))
       )
       (= environment.__environment_8_x environment.env_always_ok)
       )
  (environment_step environment.door_is_open
                    environment.open_door
                    environment.close_door
                    environment.in_station
                    environment.door_ok
                    environment.warning_start
                    environment.env_always_ok
                    environment.__environment_8_c
                    environment.ni_10.jafter.__jafter_2_c
                    environment.ni_10.jafter.ni_19._arrow._first_c
                    environment.ni_11.edge.__edge_2_c
                    environment.ni_11.edge.ni_17._arrow._first_c
                    environment.ni_12.edge.__edge_2_c
                    environment.ni_12.edge.ni_17._arrow._first_c
                    environment.ni_13.edge.__edge_2_c
                    environment.ni_13.edge.ni_17._arrow._first_c
                    environment.ni_7.edge.__edge_2_c
                    environment.ni_7.edge.ni_17._arrow._first_c
                    environment.ni_8.edge.__edge_2_c
                    environment.ni_8.edge.ni_17._arrow._first_c
                    environment.ni_9._arrow._first_c
                    environment.__environment_8_x
                    environment.ni_10.jafter.__jafter_2_x
                    environment.ni_10.jafter.ni_19._arrow._first_x
                    environment.ni_11.edge.__edge_2_x
                    environment.ni_11.edge.ni_17._arrow._first_x
                    environment.ni_12.edge.__edge_2_x
                    environment.ni_12.edge.ni_17._arrow._first_x
                    environment.ni_13.edge.__edge_2_x
                    environment.ni_13.edge.ni_17._arrow._first_x
                    environment.ni_7.edge.__edge_2_x
                    environment.ni_7.edge.ni_17._arrow._first_x
                    environment.ni_8.edge.__edge_2_x
                    environment.ni_8.edge.ni_17._arrow._first_x
                    environment.ni_9._arrow._first_x)
))

; properties
(declare-var properties.door_is_open Bool)
(declare-var properties.in_station Bool)
(declare-var properties.request_door Bool)
(declare-var properties.warning_start Bool)
(declare-var properties.OK Bool)
(declare-var properties.ni_3.once_from_to.ni_15.switch.__switch_2_c Bool)
(declare-var properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_c Bool)
(declare-var properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_c Bool)
(declare-var properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_c Bool)
(declare-var properties.ni_4.jafter.__jafter_2_c Bool)
(declare-var properties.ni_4.jafter.ni_19._arrow._first_c Bool)
(declare-var properties.ni_5.edge.__edge_2_c Bool)
(declare-var properties.ni_5.edge.ni_17._arrow._first_c Bool)
(declare-var properties.ni_6.jafter.__jafter_2_c Bool)
(declare-var properties.ni_6.jafter.ni_19._arrow._first_c Bool)
(declare-var properties.ni_3.once_from_to.ni_15.switch.__switch_2_m Bool)
(declare-var properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_m Bool)
(declare-var properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_m Bool)
(declare-var properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_m Bool)
(declare-var properties.ni_4.jafter.__jafter_2_m Bool)
(declare-var properties.ni_4.jafter.ni_19._arrow._first_m Bool)
(declare-var properties.ni_5.edge.__edge_2_m Bool)
(declare-var properties.ni_5.edge.ni_17._arrow._first_m Bool)
(declare-var properties.ni_6.jafter.__jafter_2_m Bool)
(declare-var properties.ni_6.jafter.ni_19._arrow._first_m Bool)
(declare-var properties.ni_3.once_from_to.ni_15.switch.__switch_2_x Bool)
(declare-var properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_x Bool)
(declare-var properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_x Bool)
(declare-var properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_x Bool)
(declare-var properties.ni_4.jafter.__jafter_2_x Bool)
(declare-var properties.ni_4.jafter.ni_19._arrow._first_x Bool)
(declare-var properties.ni_5.edge.__edge_2_x Bool)
(declare-var properties.ni_5.edge.ni_17._arrow._first_x Bool)
(declare-var properties.ni_6.jafter.__jafter_2_x Bool)
(declare-var properties.ni_6.jafter.ni_19._arrow._first_x Bool)
(declare-var properties.__properties_1 Bool)
(declare-var properties.__properties_2 Bool)
(declare-var properties.__properties_3 Bool)
(declare-var properties.door_opens_before_leaving_station Bool)
(declare-rel properties_reset (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel properties_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       
       (jafter_reset properties.ni_6.jafter.__jafter_2_c
                     properties.ni_6.jafter.ni_19._arrow._first_c
                     properties.ni_6.jafter.__jafter_2_m
                     properties.ni_6.jafter.ni_19._arrow._first_m)
       (edge_reset properties.ni_5.edge.__edge_2_c
                   properties.ni_5.edge.ni_17._arrow._first_c
                   properties.ni_5.edge.__edge_2_m
                   properties.ni_5.edge.ni_17._arrow._first_m)
       (jafter_reset properties.ni_4.jafter.__jafter_2_c
                     properties.ni_4.jafter.ni_19._arrow._first_c
                     properties.ni_4.jafter.__jafter_2_m
                     properties.ni_4.jafter.ni_19._arrow._first_m)
       (once_from_to_reset properties.ni_3.once_from_to.ni_15.switch.__switch_2_c
                           properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_c
                           properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_c
                           properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_c
                           properties.ni_3.once_from_to.ni_15.switch.__switch_2_m
                           properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_m
                           properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_m
                           properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_m)
  )
  (properties_reset properties.ni_3.once_from_to.ni_15.switch.__switch_2_c
                    properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_c
                    properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_c
                    properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_c
                    properties.ni_4.jafter.__jafter_2_c
                    properties.ni_4.jafter.ni_19._arrow._first_c
                    properties.ni_5.edge.__edge_2_c
                    properties.ni_5.edge.ni_17._arrow._first_c
                    properties.ni_6.jafter.__jafter_2_c
                    properties.ni_6.jafter.ni_19._arrow._first_c
                    properties.ni_3.once_from_to.ni_15.switch.__switch_2_m
                    properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_m
                    properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_m
                    properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_m
                    properties.ni_4.jafter.__jafter_2_m
                    properties.ni_4.jafter.ni_19._arrow._first_m
                    properties.ni_5.edge.__edge_2_m
                    properties.ni_5.edge.ni_17._arrow._first_m
                    properties.ni_6.jafter.__jafter_2_m
                    properties.ni_6.jafter.ni_19._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= properties.ni_6.jafter.__jafter_2_m properties.ni_6.jafter.__jafter_2_c)
            (= properties.ni_6.jafter.ni_19._arrow._first_m properties.ni_6.jafter.ni_19._arrow._first_c)
            )
       (jafter_step (and properties.request_door (not properties.warning_start))
                    properties.__properties_3
                    properties.ni_6.jafter.__jafter_2_m
                    properties.ni_6.jafter.ni_19._arrow._first_m
                    properties.ni_6.jafter.__jafter_2_x
                    properties.ni_6.jafter.ni_19._arrow._first_x)
       (and (= properties.ni_5.edge.__edge_2_m properties.ni_5.edge.__edge_2_c)
            (= properties.ni_5.edge.ni_17._arrow._first_m properties.ni_5.edge.ni_17._arrow._first_c)
            )
       (edge_step (not properties.in_station)
                  properties.__properties_2
                  properties.ni_5.edge.__edge_2_m
                  properties.ni_5.edge.ni_17._arrow._first_m
                  properties.ni_5.edge.__edge_2_x
                  properties.ni_5.edge.ni_17._arrow._first_x)
       (and (= properties.ni_4.jafter.__jafter_2_m properties.ni_4.jafter.__jafter_2_c)
            (= properties.ni_4.jafter.ni_19._arrow._first_m properties.ni_4.jafter.ni_19._arrow._first_c)
            )
       (jafter_step properties.door_is_open
                    properties.__properties_1
                    properties.ni_4.jafter.__jafter_2_m
                    properties.ni_4.jafter.ni_19._arrow._first_m
                    properties.ni_4.jafter.__jafter_2_x
                    properties.ni_4.jafter.ni_19._arrow._first_x)
       (and (= properties.ni_3.once_from_to.ni_15.switch.__switch_2_m properties.ni_3.once_from_to.ni_15.switch.__switch_2_c)
            (= properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_m properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_c)
            (= properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_m properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_c)
            (= properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_m properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_c)
            )
       (once_from_to_step properties.__properties_3
                          properties.__properties_2
                          properties.__properties_1
                          properties.door_opens_before_leaving_station
                          properties.ni_3.once_from_to.ni_15.switch.__switch_2_m
                          properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_m
                          properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_m
                          properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_m
                          properties.ni_3.once_from_to.ni_15.switch.__switch_2_x
                          properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_x
                          properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_x
                          properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_x)
       (= properties.OK (and (=> properties.door_is_open properties.in_station) properties.door_opens_before_leaving_station))
       )
  (properties_step properties.door_is_open
                   properties.in_station
                   properties.request_door
                   properties.warning_start
                   properties.OK
                   properties.ni_3.once_from_to.ni_15.switch.__switch_2_c
                   properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_c
                   properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_c
                   properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_c
                   properties.ni_4.jafter.__jafter_2_c
                   properties.ni_4.jafter.ni_19._arrow._first_c
                   properties.ni_5.edge.__edge_2_c
                   properties.ni_5.edge.ni_17._arrow._first_c
                   properties.ni_6.jafter.__jafter_2_c
                   properties.ni_6.jafter.ni_19._arrow._first_c
                   properties.ni_3.once_from_to.ni_15.switch.__switch_2_x
                   properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_x
                   properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_x
                   properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_x
                   properties.ni_4.jafter.__jafter_2_x
                   properties.ni_4.jafter.ni_19._arrow._first_x
                   properties.ni_5.edge.__edge_2_x
                   properties.ni_5.edge.ni_17._arrow._first_x
                   properties.ni_6.jafter.__jafter_2_x
                   properties.ni_6.jafter.ni_19._arrow._first_x)
))

; top
(declare-var top.request_door Bool)
(declare-var top.warning_start Bool)
(declare-var top.in_station Bool)
(declare-var top.door_is_open Bool)
(declare-var top.OK Bool)
(declare-var top.ni_0.environment.__environment_8_c Bool)
(declare-var top.ni_0.environment.ni_10.jafter.__jafter_2_c Bool)
(declare-var top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_c Bool)
(declare-var top.ni_0.environment.ni_11.edge.__edge_2_c Bool)
(declare-var top.ni_0.environment.ni_11.edge.ni_17._arrow._first_c Bool)
(declare-var top.ni_0.environment.ni_12.edge.__edge_2_c Bool)
(declare-var top.ni_0.environment.ni_12.edge.ni_17._arrow._first_c Bool)
(declare-var top.ni_0.environment.ni_13.edge.__edge_2_c Bool)
(declare-var top.ni_0.environment.ni_13.edge.ni_17._arrow._first_c Bool)
(declare-var top.ni_0.environment.ni_7.edge.__edge_2_c Bool)
(declare-var top.ni_0.environment.ni_7.edge.ni_17._arrow._first_c Bool)
(declare-var top.ni_0.environment.ni_8.edge.__edge_2_c Bool)
(declare-var top.ni_0.environment.ni_8.edge.ni_17._arrow._first_c Bool)
(declare-var top.ni_0.environment.ni_9._arrow._first_c Bool)
(declare-var top.ni_1.controller.ni_14.switch.__switch_2_c Bool)
(declare-var top.ni_1.controller.ni_14.switch.ni_18._arrow._first_c Bool)
(declare-var top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_c Bool)
(declare-var top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_c Bool)
(declare-var top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_c Bool)
(declare-var top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_c Bool)
(declare-var top.ni_2.properties.ni_4.jafter.__jafter_2_c Bool)
(declare-var top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_c Bool)
(declare-var top.ni_2.properties.ni_5.edge.__edge_2_c Bool)
(declare-var top.ni_2.properties.ni_5.edge.ni_17._arrow._first_c Bool)
(declare-var top.ni_2.properties.ni_6.jafter.__jafter_2_c Bool)
(declare-var top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_c Bool)
(declare-var top.ni_0.environment.__environment_8_m Bool)
(declare-var top.ni_0.environment.ni_10.jafter.__jafter_2_m Bool)
(declare-var top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_m Bool)
(declare-var top.ni_0.environment.ni_11.edge.__edge_2_m Bool)
(declare-var top.ni_0.environment.ni_11.edge.ni_17._arrow._first_m Bool)
(declare-var top.ni_0.environment.ni_12.edge.__edge_2_m Bool)
(declare-var top.ni_0.environment.ni_12.edge.ni_17._arrow._first_m Bool)
(declare-var top.ni_0.environment.ni_13.edge.__edge_2_m Bool)
(declare-var top.ni_0.environment.ni_13.edge.ni_17._arrow._first_m Bool)
(declare-var top.ni_0.environment.ni_7.edge.__edge_2_m Bool)
(declare-var top.ni_0.environment.ni_7.edge.ni_17._arrow._first_m Bool)
(declare-var top.ni_0.environment.ni_8.edge.__edge_2_m Bool)
(declare-var top.ni_0.environment.ni_8.edge.ni_17._arrow._first_m Bool)
(declare-var top.ni_0.environment.ni_9._arrow._first_m Bool)
(declare-var top.ni_1.controller.ni_14.switch.__switch_2_m Bool)
(declare-var top.ni_1.controller.ni_14.switch.ni_18._arrow._first_m Bool)
(declare-var top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_m Bool)
(declare-var top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_m Bool)
(declare-var top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_m Bool)
(declare-var top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_m Bool)
(declare-var top.ni_2.properties.ni_4.jafter.__jafter_2_m Bool)
(declare-var top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_m Bool)
(declare-var top.ni_2.properties.ni_5.edge.__edge_2_m Bool)
(declare-var top.ni_2.properties.ni_5.edge.ni_17._arrow._first_m Bool)
(declare-var top.ni_2.properties.ni_6.jafter.__jafter_2_m Bool)
(declare-var top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_m Bool)
(declare-var top.ni_0.environment.__environment_8_x Bool)
(declare-var top.ni_0.environment.ni_10.jafter.__jafter_2_x Bool)
(declare-var top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_x Bool)
(declare-var top.ni_0.environment.ni_11.edge.__edge_2_x Bool)
(declare-var top.ni_0.environment.ni_11.edge.ni_17._arrow._first_x Bool)
(declare-var top.ni_0.environment.ni_12.edge.__edge_2_x Bool)
(declare-var top.ni_0.environment.ni_12.edge.ni_17._arrow._first_x Bool)
(declare-var top.ni_0.environment.ni_13.edge.__edge_2_x Bool)
(declare-var top.ni_0.environment.ni_13.edge.ni_17._arrow._first_x Bool)
(declare-var top.ni_0.environment.ni_7.edge.__edge_2_x Bool)
(declare-var top.ni_0.environment.ni_7.edge.ni_17._arrow._first_x Bool)
(declare-var top.ni_0.environment.ni_8.edge.__edge_2_x Bool)
(declare-var top.ni_0.environment.ni_8.edge.ni_17._arrow._first_x Bool)
(declare-var top.ni_0.environment.ni_9._arrow._first_x Bool)
(declare-var top.ni_1.controller.ni_14.switch.__switch_2_x Bool)
(declare-var top.ni_1.controller.ni_14.switch.ni_18._arrow._first_x Bool)
(declare-var top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_x Bool)
(declare-var top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_x Bool)
(declare-var top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_x Bool)
(declare-var top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_x Bool)
(declare-var top.ni_2.properties.ni_4.jafter.__jafter_2_x Bool)
(declare-var top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_x Bool)
(declare-var top.ni_2.properties.ni_5.edge.__edge_2_x Bool)
(declare-var top.ni_2.properties.ni_5.edge.ni_17._arrow._first_x Bool)
(declare-var top.ni_2.properties.ni_6.jafter.__jafter_2_x Bool)
(declare-var top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_x Bool)
(declare-var top.close_door Bool)
(declare-var top.door_ok Bool)
(declare-var top.env_always_ok Bool)
(declare-var top.open_door Bool)
(declare-var top.prop_ok Bool)
(declare-rel top_reset (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel top_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       
       (properties_reset top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_c
                         top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_c
                         top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_c
                         top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_c
                         top.ni_2.properties.ni_4.jafter.__jafter_2_c
                         top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_c
                         top.ni_2.properties.ni_5.edge.__edge_2_c
                         top.ni_2.properties.ni_5.edge.ni_17._arrow._first_c
                         top.ni_2.properties.ni_6.jafter.__jafter_2_c
                         top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_c
                         top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_m
                         top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_m
                         top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_m
                         top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_m
                         top.ni_2.properties.ni_4.jafter.__jafter_2_m
                         top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_m
                         top.ni_2.properties.ni_5.edge.__edge_2_m
                         top.ni_2.properties.ni_5.edge.ni_17._arrow._first_m
                         top.ni_2.properties.ni_6.jafter.__jafter_2_m
                         top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_m)
       (controller_reset top.ni_1.controller.ni_14.switch.__switch_2_c
                         top.ni_1.controller.ni_14.switch.ni_18._arrow._first_c
                         top.ni_1.controller.ni_14.switch.__switch_2_m
                         top.ni_1.controller.ni_14.switch.ni_18._arrow._first_m)
       (environment_reset top.ni_0.environment.__environment_8_c
                          top.ni_0.environment.ni_10.jafter.__jafter_2_c
                          top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_c
                          top.ni_0.environment.ni_11.edge.__edge_2_c
                          top.ni_0.environment.ni_11.edge.ni_17._arrow._first_c
                          top.ni_0.environment.ni_12.edge.__edge_2_c
                          top.ni_0.environment.ni_12.edge.ni_17._arrow._first_c
                          top.ni_0.environment.ni_13.edge.__edge_2_c
                          top.ni_0.environment.ni_13.edge.ni_17._arrow._first_c
                          top.ni_0.environment.ni_7.edge.__edge_2_c
                          top.ni_0.environment.ni_7.edge.ni_17._arrow._first_c
                          top.ni_0.environment.ni_8.edge.__edge_2_c
                          top.ni_0.environment.ni_8.edge.ni_17._arrow._first_c
                          top.ni_0.environment.ni_9._arrow._first_c
                          top.ni_0.environment.__environment_8_m
                          top.ni_0.environment.ni_10.jafter.__jafter_2_m
                          top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_m
                          top.ni_0.environment.ni_11.edge.__edge_2_m
                          top.ni_0.environment.ni_11.edge.ni_17._arrow._first_m
                          top.ni_0.environment.ni_12.edge.__edge_2_m
                          top.ni_0.environment.ni_12.edge.ni_17._arrow._first_m
                          top.ni_0.environment.ni_13.edge.__edge_2_m
                          top.ni_0.environment.ni_13.edge.ni_17._arrow._first_m
                          top.ni_0.environment.ni_7.edge.__edge_2_m
                          top.ni_0.environment.ni_7.edge.ni_17._arrow._first_m
                          top.ni_0.environment.ni_8.edge.__edge_2_m
                          top.ni_0.environment.ni_8.edge.ni_17._arrow._first_m
                          top.ni_0.environment.ni_9._arrow._first_m)
  )
  (top_reset top.ni_0.environment.__environment_8_c
             top.ni_0.environment.ni_10.jafter.__jafter_2_c
             top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_c
             top.ni_0.environment.ni_11.edge.__edge_2_c
             top.ni_0.environment.ni_11.edge.ni_17._arrow._first_c
             top.ni_0.environment.ni_12.edge.__edge_2_c
             top.ni_0.environment.ni_12.edge.ni_17._arrow._first_c
             top.ni_0.environment.ni_13.edge.__edge_2_c
             top.ni_0.environment.ni_13.edge.ni_17._arrow._first_c
             top.ni_0.environment.ni_7.edge.__edge_2_c
             top.ni_0.environment.ni_7.edge.ni_17._arrow._first_c
             top.ni_0.environment.ni_8.edge.__edge_2_c
             top.ni_0.environment.ni_8.edge.ni_17._arrow._first_c
             top.ni_0.environment.ni_9._arrow._first_c
             top.ni_1.controller.ni_14.switch.__switch_2_c
             top.ni_1.controller.ni_14.switch.ni_18._arrow._first_c
             top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_c
             top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_c
             top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_c
             top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_c
             top.ni_2.properties.ni_4.jafter.__jafter_2_c
             top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_c
             top.ni_2.properties.ni_5.edge.__edge_2_c
             top.ni_2.properties.ni_5.edge.ni_17._arrow._first_c
             top.ni_2.properties.ni_6.jafter.__jafter_2_c
             top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_c
             top.ni_0.environment.__environment_8_m
             top.ni_0.environment.ni_10.jafter.__jafter_2_m
             top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_m
             top.ni_0.environment.ni_11.edge.__edge_2_m
             top.ni_0.environment.ni_11.edge.ni_17._arrow._first_m
             top.ni_0.environment.ni_12.edge.__edge_2_m
             top.ni_0.environment.ni_12.edge.ni_17._arrow._first_m
             top.ni_0.environment.ni_13.edge.__edge_2_m
             top.ni_0.environment.ni_13.edge.ni_17._arrow._first_m
             top.ni_0.environment.ni_7.edge.__edge_2_m
             top.ni_0.environment.ni_7.edge.ni_17._arrow._first_m
             top.ni_0.environment.ni_8.edge.__edge_2_m
             top.ni_0.environment.ni_8.edge.ni_17._arrow._first_m
             top.ni_0.environment.ni_9._arrow._first_m
             top.ni_1.controller.ni_14.switch.__switch_2_m
             top.ni_1.controller.ni_14.switch.ni_18._arrow._first_m
             top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_m
             top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_m
             top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_m
             top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_m
             top.ni_2.properties.ni_4.jafter.__jafter_2_m
             top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_m
             top.ni_2.properties.ni_5.edge.__edge_2_m
             top.ni_2.properties.ni_5.edge.ni_17._arrow._first_m
             top.ni_2.properties.ni_6.jafter.__jafter_2_m
             top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_m top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_c)
            (= top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_m top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_c)
            (= top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_m top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_c)
            (= top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_m top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_c)
            (= top.ni_2.properties.ni_4.jafter.__jafter_2_m top.ni_2.properties.ni_4.jafter.__jafter_2_c)
            (= top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_m top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_c)
            (= top.ni_2.properties.ni_5.edge.__edge_2_m top.ni_2.properties.ni_5.edge.__edge_2_c)
            (= top.ni_2.properties.ni_5.edge.ni_17._arrow._first_m top.ni_2.properties.ni_5.edge.ni_17._arrow._first_c)
            (= top.ni_2.properties.ni_6.jafter.__jafter_2_m top.ni_2.properties.ni_6.jafter.__jafter_2_c)
            (= top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_m top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_c)
            )
       (properties_step top.door_is_open
                        top.in_station
                        top.request_door
                        top.warning_start
                        top.prop_ok
                        top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_m
                        top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_m
                        top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_m
                        top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_m
                        top.ni_2.properties.ni_4.jafter.__jafter_2_m
                        top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_m
                        top.ni_2.properties.ni_5.edge.__edge_2_m
                        top.ni_2.properties.ni_5.edge.ni_17._arrow._first_m
                        top.ni_2.properties.ni_6.jafter.__jafter_2_m
                        top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_m
                        top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_x
                        top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_x
                        top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_x
                        top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_x
                        top.ni_2.properties.ni_4.jafter.__jafter_2_x
                        top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_x
                        top.ni_2.properties.ni_5.edge.__edge_2_x
                        top.ni_2.properties.ni_5.edge.ni_17._arrow._first_x
                        top.ni_2.properties.ni_6.jafter.__jafter_2_x
                        top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_x)
       (and (= top.ni_1.controller.ni_14.switch.__switch_2_m top.ni_1.controller.ni_14.switch.__switch_2_c)
            (= top.ni_1.controller.ni_14.switch.ni_18._arrow._first_m top.ni_1.controller.ni_14.switch.ni_18._arrow._first_c)
            )
       (controller_step top.request_door
                        top.warning_start
                        top.in_station
                        top.door_is_open
                        top.open_door
                        top.close_door
                        top.door_ok
                        top.ni_1.controller.ni_14.switch.__switch_2_m
                        top.ni_1.controller.ni_14.switch.ni_18._arrow._first_m
                        top.ni_1.controller.ni_14.switch.__switch_2_x
                        top.ni_1.controller.ni_14.switch.ni_18._arrow._first_x)
       (and (= top.ni_0.environment.__environment_8_m top.ni_0.environment.__environment_8_c)
            (= top.ni_0.environment.ni_10.jafter.__jafter_2_m top.ni_0.environment.ni_10.jafter.__jafter_2_c)
            (= top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_m top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_c)
            (= top.ni_0.environment.ni_11.edge.__edge_2_m top.ni_0.environment.ni_11.edge.__edge_2_c)
            (= top.ni_0.environment.ni_11.edge.ni_17._arrow._first_m top.ni_0.environment.ni_11.edge.ni_17._arrow._first_c)
            (= top.ni_0.environment.ni_12.edge.__edge_2_m top.ni_0.environment.ni_12.edge.__edge_2_c)
            (= top.ni_0.environment.ni_12.edge.ni_17._arrow._first_m top.ni_0.environment.ni_12.edge.ni_17._arrow._first_c)
            (= top.ni_0.environment.ni_13.edge.__edge_2_m top.ni_0.environment.ni_13.edge.__edge_2_c)
            (= top.ni_0.environment.ni_13.edge.ni_17._arrow._first_m top.ni_0.environment.ni_13.edge.ni_17._arrow._first_c)
            (= top.ni_0.environment.ni_7.edge.__edge_2_m top.ni_0.environment.ni_7.edge.__edge_2_c)
            (= top.ni_0.environment.ni_7.edge.ni_17._arrow._first_m top.ni_0.environment.ni_7.edge.ni_17._arrow._first_c)
            (= top.ni_0.environment.ni_8.edge.__edge_2_m top.ni_0.environment.ni_8.edge.__edge_2_c)
            (= top.ni_0.environment.ni_8.edge.ni_17._arrow._first_m top.ni_0.environment.ni_8.edge.ni_17._arrow._first_c)
            (= top.ni_0.environment.ni_9._arrow._first_m top.ni_0.environment.ni_9._arrow._first_c)
            )
       (environment_step top.door_is_open
                         top.open_door
                         top.close_door
                         top.in_station
                         top.door_ok
                         top.warning_start
                         top.env_always_ok
                         top.ni_0.environment.__environment_8_m
                         top.ni_0.environment.ni_10.jafter.__jafter_2_m
                         top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_m
                         top.ni_0.environment.ni_11.edge.__edge_2_m
                         top.ni_0.environment.ni_11.edge.ni_17._arrow._first_m
                         top.ni_0.environment.ni_12.edge.__edge_2_m
                         top.ni_0.environment.ni_12.edge.ni_17._arrow._first_m
                         top.ni_0.environment.ni_13.edge.__edge_2_m
                         top.ni_0.environment.ni_13.edge.ni_17._arrow._first_m
                         top.ni_0.environment.ni_7.edge.__edge_2_m
                         top.ni_0.environment.ni_7.edge.ni_17._arrow._first_m
                         top.ni_0.environment.ni_8.edge.__edge_2_m
                         top.ni_0.environment.ni_8.edge.ni_17._arrow._first_m
                         top.ni_0.environment.ni_9._arrow._first_m
                         top.ni_0.environment.__environment_8_x
                         top.ni_0.environment.ni_10.jafter.__jafter_2_x
                         top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_x
                         top.ni_0.environment.ni_11.edge.__edge_2_x
                         top.ni_0.environment.ni_11.edge.ni_17._arrow._first_x
                         top.ni_0.environment.ni_12.edge.__edge_2_x
                         top.ni_0.environment.ni_12.edge.ni_17._arrow._first_x
                         top.ni_0.environment.ni_13.edge.__edge_2_x
                         top.ni_0.environment.ni_13.edge.ni_17._arrow._first_x
                         top.ni_0.environment.ni_7.edge.__edge_2_x
                         top.ni_0.environment.ni_7.edge.ni_17._arrow._first_x
                         top.ni_0.environment.ni_8.edge.__edge_2_x
                         top.ni_0.environment.ni_8.edge.ni_17._arrow._first_x
                         top.ni_0.environment.ni_9._arrow._first_x)
       (= top.OK (=> top.env_always_ok top.prop_ok))
       )
  (top_step top.request_door
            top.warning_start
            top.in_station
            top.door_is_open
            top.OK
            top.ni_0.environment.__environment_8_c
            top.ni_0.environment.ni_10.jafter.__jafter_2_c
            top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_c
            top.ni_0.environment.ni_11.edge.__edge_2_c
            top.ni_0.environment.ni_11.edge.ni_17._arrow._first_c
            top.ni_0.environment.ni_12.edge.__edge_2_c
            top.ni_0.environment.ni_12.edge.ni_17._arrow._first_c
            top.ni_0.environment.ni_13.edge.__edge_2_c
            top.ni_0.environment.ni_13.edge.ni_17._arrow._first_c
            top.ni_0.environment.ni_7.edge.__edge_2_c
            top.ni_0.environment.ni_7.edge.ni_17._arrow._first_c
            top.ni_0.environment.ni_8.edge.__edge_2_c
            top.ni_0.environment.ni_8.edge.ni_17._arrow._first_c
            top.ni_0.environment.ni_9._arrow._first_c
            top.ni_1.controller.ni_14.switch.__switch_2_c
            top.ni_1.controller.ni_14.switch.ni_18._arrow._first_c
            top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_c
            top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_c
            top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_c
            top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_c
            top.ni_2.properties.ni_4.jafter.__jafter_2_c
            top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_c
            top.ni_2.properties.ni_5.edge.__edge_2_c
            top.ni_2.properties.ni_5.edge.ni_17._arrow._first_c
            top.ni_2.properties.ni_6.jafter.__jafter_2_c
            top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_c
            top.ni_0.environment.__environment_8_x
            top.ni_0.environment.ni_10.jafter.__jafter_2_x
            top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_x
            top.ni_0.environment.ni_11.edge.__edge_2_x
            top.ni_0.environment.ni_11.edge.ni_17._arrow._first_x
            top.ni_0.environment.ni_12.edge.__edge_2_x
            top.ni_0.environment.ni_12.edge.ni_17._arrow._first_x
            top.ni_0.environment.ni_13.edge.__edge_2_x
            top.ni_0.environment.ni_13.edge.ni_17._arrow._first_x
            top.ni_0.environment.ni_7.edge.__edge_2_x
            top.ni_0.environment.ni_7.edge.ni_17._arrow._first_x
            top.ni_0.environment.ni_8.edge.__edge_2_x
            top.ni_0.environment.ni_8.edge.ni_17._arrow._first_x
            top.ni_0.environment.ni_9._arrow._first_x
            top.ni_1.controller.ni_14.switch.__switch_2_x
            top.ni_1.controller.ni_14.switch.ni_18._arrow._first_x
            top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_x
            top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_x
            top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_x
            top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_x
            top.ni_2.properties.ni_4.jafter.__jafter_2_x
            top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_x
            top.ni_2.properties.ni_5.edge.__edge_2_x
            top.ni_2.properties.ni_5.edge.ni_17._arrow._first_x
            top.ni_2.properties.ni_6.jafter.__jafter_2_x
            top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.ni_0.environment.__environment_8_c top.ni_0.environment.ni_10.jafter.__jafter_2_c top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_c top.ni_0.environment.ni_11.edge.__edge_2_c top.ni_0.environment.ni_11.edge.ni_17._arrow._first_c top.ni_0.environment.ni_12.edge.__edge_2_c top.ni_0.environment.ni_12.edge.ni_17._arrow._first_c top.ni_0.environment.ni_13.edge.__edge_2_c top.ni_0.environment.ni_13.edge.ni_17._arrow._first_c top.ni_0.environment.ni_7.edge.__edge_2_c top.ni_0.environment.ni_7.edge.ni_17._arrow._first_c top.ni_0.environment.ni_8.edge.__edge_2_c top.ni_0.environment.ni_8.edge.ni_17._arrow._first_c top.ni_0.environment.ni_9._arrow._first_c top.ni_1.controller.ni_14.switch.__switch_2_c top.ni_1.controller.ni_14.switch.ni_18._arrow._first_c top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_c top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_c top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_c top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_c top.ni_2.properties.ni_4.jafter.__jafter_2_c top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_c top.ni_2.properties.ni_5.edge.__edge_2_c top.ni_2.properties.ni_5.edge.ni_17._arrow._first_c top.ni_2.properties.ni_6.jafter.__jafter_2_c top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_c top.ni_0.environment.__environment_8_m top.ni_0.environment.ni_10.jafter.__jafter_2_m top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_m top.ni_0.environment.ni_11.edge.__edge_2_m top.ni_0.environment.ni_11.edge.ni_17._arrow._first_m top.ni_0.environment.ni_12.edge.__edge_2_m top.ni_0.environment.ni_12.edge.ni_17._arrow._first_m top.ni_0.environment.ni_13.edge.__edge_2_m top.ni_0.environment.ni_13.edge.ni_17._arrow._first_m top.ni_0.environment.ni_7.edge.__edge_2_m top.ni_0.environment.ni_7.edge.ni_17._arrow._first_m top.ni_0.environment.ni_8.edge.__edge_2_m top.ni_0.environment.ni_8.edge.ni_17._arrow._first_m top.ni_0.environment.ni_9._arrow._first_m top.ni_1.controller.ni_14.switch.__switch_2_m top.ni_1.controller.ni_14.switch.ni_18._arrow._first_m top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_m top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_m top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_m top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_m top.ni_2.properties.ni_4.jafter.__jafter_2_m top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_m top.ni_2.properties.ni_5.edge.__edge_2_m top.ni_2.properties.ni_5.edge.ni_17._arrow._first_m top.ni_2.properties.ni_6.jafter.__jafter_2_m top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_m)
       (top_step top.request_door top.warning_start top.in_station top.door_is_open top.OK top.ni_0.environment.__environment_8_m top.ni_0.environment.ni_10.jafter.__jafter_2_m top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_m top.ni_0.environment.ni_11.edge.__edge_2_m top.ni_0.environment.ni_11.edge.ni_17._arrow._first_m top.ni_0.environment.ni_12.edge.__edge_2_m top.ni_0.environment.ni_12.edge.ni_17._arrow._first_m top.ni_0.environment.ni_13.edge.__edge_2_m top.ni_0.environment.ni_13.edge.ni_17._arrow._first_m top.ni_0.environment.ni_7.edge.__edge_2_m top.ni_0.environment.ni_7.edge.ni_17._arrow._first_m top.ni_0.environment.ni_8.edge.__edge_2_m top.ni_0.environment.ni_8.edge.ni_17._arrow._first_m top.ni_0.environment.ni_9._arrow._first_m top.ni_1.controller.ni_14.switch.__switch_2_m top.ni_1.controller.ni_14.switch.ni_18._arrow._first_m top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_m top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_m top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_m top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_m top.ni_2.properties.ni_4.jafter.__jafter_2_m top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_m top.ni_2.properties.ni_5.edge.__edge_2_m top.ni_2.properties.ni_5.edge.ni_17._arrow._first_m top.ni_2.properties.ni_6.jafter.__jafter_2_m top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_m top.ni_0.environment.__environment_8_x top.ni_0.environment.ni_10.jafter.__jafter_2_x top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_x top.ni_0.environment.ni_11.edge.__edge_2_x top.ni_0.environment.ni_11.edge.ni_17._arrow._first_x top.ni_0.environment.ni_12.edge.__edge_2_x top.ni_0.environment.ni_12.edge.ni_17._arrow._first_x top.ni_0.environment.ni_13.edge.__edge_2_x top.ni_0.environment.ni_13.edge.ni_17._arrow._first_x top.ni_0.environment.ni_7.edge.__edge_2_x top.ni_0.environment.ni_7.edge.ni_17._arrow._first_x top.ni_0.environment.ni_8.edge.__edge_2_x top.ni_0.environment.ni_8.edge.ni_17._arrow._first_x top.ni_0.environment.ni_9._arrow._first_x top.ni_1.controller.ni_14.switch.__switch_2_x top.ni_1.controller.ni_14.switch.ni_18._arrow._first_x top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_x top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_x top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_x top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_x top.ni_2.properties.ni_4.jafter.__jafter_2_x top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_x top.ni_2.properties.ni_5.edge.__edge_2_x top.ni_2.properties.ni_5.edge.ni_17._arrow._first_x top.ni_2.properties.ni_6.jafter.__jafter_2_x top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_x)
  )
  (MAIN top.ni_0.environment.__environment_8_x top.ni_0.environment.ni_10.jafter.__jafter_2_x top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_x top.ni_0.environment.ni_11.edge.__edge_2_x top.ni_0.environment.ni_11.edge.ni_17._arrow._first_x top.ni_0.environment.ni_12.edge.__edge_2_x top.ni_0.environment.ni_12.edge.ni_17._arrow._first_x top.ni_0.environment.ni_13.edge.__edge_2_x top.ni_0.environment.ni_13.edge.ni_17._arrow._first_x top.ni_0.environment.ni_7.edge.__edge_2_x top.ni_0.environment.ni_7.edge.ni_17._arrow._first_x top.ni_0.environment.ni_8.edge.__edge_2_x top.ni_0.environment.ni_8.edge.ni_17._arrow._first_x top.ni_0.environment.ni_9._arrow._first_x top.ni_1.controller.ni_14.switch.__switch_2_x top.ni_1.controller.ni_14.switch.ni_18._arrow._first_x top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_x top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_x top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_x top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_x top.ni_2.properties.ni_4.jafter.__jafter_2_x top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_x top.ni_2.properties.ni_5.edge.__edge_2_x top.ni_2.properties.ni_5.edge.ni_17._arrow._first_x top.ni_2.properties.ni_6.jafter.__jafter_2_x top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.ni_0.environment.__environment_8_c top.ni_0.environment.ni_10.jafter.__jafter_2_c top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_c top.ni_0.environment.ni_11.edge.__edge_2_c top.ni_0.environment.ni_11.edge.ni_17._arrow._first_c top.ni_0.environment.ni_12.edge.__edge_2_c top.ni_0.environment.ni_12.edge.ni_17._arrow._first_c top.ni_0.environment.ni_13.edge.__edge_2_c top.ni_0.environment.ni_13.edge.ni_17._arrow._first_c top.ni_0.environment.ni_7.edge.__edge_2_c top.ni_0.environment.ni_7.edge.ni_17._arrow._first_c top.ni_0.environment.ni_8.edge.__edge_2_c top.ni_0.environment.ni_8.edge.ni_17._arrow._first_c top.ni_0.environment.ni_9._arrow._first_c top.ni_1.controller.ni_14.switch.__switch_2_c top.ni_1.controller.ni_14.switch.ni_18._arrow._first_c top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_c top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_c top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_c top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_c top.ni_2.properties.ni_4.jafter.__jafter_2_c top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_c top.ni_2.properties.ni_5.edge.__edge_2_c top.ni_2.properties.ni_5.edge.ni_17._arrow._first_c top.ni_2.properties.ni_6.jafter.__jafter_2_c top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_c dummytop.OK)
       (top_step top.request_door top.warning_start top.in_station top.door_is_open top.OK top.ni_0.environment.__environment_8_c top.ni_0.environment.ni_10.jafter.__jafter_2_c top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_c top.ni_0.environment.ni_11.edge.__edge_2_c top.ni_0.environment.ni_11.edge.ni_17._arrow._first_c top.ni_0.environment.ni_12.edge.__edge_2_c top.ni_0.environment.ni_12.edge.ni_17._arrow._first_c top.ni_0.environment.ni_13.edge.__edge_2_c top.ni_0.environment.ni_13.edge.ni_17._arrow._first_c top.ni_0.environment.ni_7.edge.__edge_2_c top.ni_0.environment.ni_7.edge.ni_17._arrow._first_c top.ni_0.environment.ni_8.edge.__edge_2_c top.ni_0.environment.ni_8.edge.ni_17._arrow._first_c top.ni_0.environment.ni_9._arrow._first_c top.ni_1.controller.ni_14.switch.__switch_2_c top.ni_1.controller.ni_14.switch.ni_18._arrow._first_c top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_c top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_c top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_c top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_c top.ni_2.properties.ni_4.jafter.__jafter_2_c top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_c top.ni_2.properties.ni_5.edge.__edge_2_c top.ni_2.properties.ni_5.edge.ni_17._arrow._first_c top.ni_2.properties.ni_6.jafter.__jafter_2_c top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_c top.ni_0.environment.__environment_8_x top.ni_0.environment.ni_10.jafter.__jafter_2_x top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_x top.ni_0.environment.ni_11.edge.__edge_2_x top.ni_0.environment.ni_11.edge.ni_17._arrow._first_x top.ni_0.environment.ni_12.edge.__edge_2_x top.ni_0.environment.ni_12.edge.ni_17._arrow._first_x top.ni_0.environment.ni_13.edge.__edge_2_x top.ni_0.environment.ni_13.edge.ni_17._arrow._first_x top.ni_0.environment.ni_7.edge.__edge_2_x top.ni_0.environment.ni_7.edge.ni_17._arrow._first_x top.ni_0.environment.ni_8.edge.__edge_2_x top.ni_0.environment.ni_8.edge.ni_17._arrow._first_x top.ni_0.environment.ni_9._arrow._first_x top.ni_1.controller.ni_14.switch.__switch_2_x top.ni_1.controller.ni_14.switch.ni_18._arrow._first_x top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_x top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_x top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_x top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_x top.ni_2.properties.ni_4.jafter.__jafter_2_x top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_x top.ni_2.properties.ni_5.edge.__edge_2_x top.ni_2.properties.ni_5.edge.ni_17._arrow._first_x top.ni_2.properties.ni_6.jafter.__jafter_2_x top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_x)
  )
  (MAIN top.ni_0.environment.__environment_8_x top.ni_0.environment.ni_10.jafter.__jafter_2_x top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_x top.ni_0.environment.ni_11.edge.__edge_2_x top.ni_0.environment.ni_11.edge.ni_17._arrow._first_x top.ni_0.environment.ni_12.edge.__edge_2_x top.ni_0.environment.ni_12.edge.ni_17._arrow._first_x top.ni_0.environment.ni_13.edge.__edge_2_x top.ni_0.environment.ni_13.edge.ni_17._arrow._first_x top.ni_0.environment.ni_7.edge.__edge_2_x top.ni_0.environment.ni_7.edge.ni_17._arrow._first_x top.ni_0.environment.ni_8.edge.__edge_2_x top.ni_0.environment.ni_8.edge.ni_17._arrow._first_x top.ni_0.environment.ni_9._arrow._first_x top.ni_1.controller.ni_14.switch.__switch_2_x top.ni_1.controller.ni_14.switch.ni_18._arrow._first_x top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_x top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_x top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_x top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_x top.ni_2.properties.ni_4.jafter.__jafter_2_x top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_x top.ni_2.properties.ni_5.edge.__edge_2_x top.ni_2.properties.ni_5.edge.ni_17._arrow._first_x top.ni_2.properties.ni_6.jafter.__jafter_2_x top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.ni_0.environment.__environment_8_x top.ni_0.environment.ni_10.jafter.__jafter_2_x top.ni_0.environment.ni_10.jafter.ni_19._arrow._first_x top.ni_0.environment.ni_11.edge.__edge_2_x top.ni_0.environment.ni_11.edge.ni_17._arrow._first_x top.ni_0.environment.ni_12.edge.__edge_2_x top.ni_0.environment.ni_12.edge.ni_17._arrow._first_x top.ni_0.environment.ni_13.edge.__edge_2_x top.ni_0.environment.ni_13.edge.ni_17._arrow._first_x top.ni_0.environment.ni_7.edge.__edge_2_x top.ni_0.environment.ni_7.edge.ni_17._arrow._first_x top.ni_0.environment.ni_8.edge.__edge_2_x top.ni_0.environment.ni_8.edge.ni_17._arrow._first_x top.ni_0.environment.ni_9._arrow._first_x top.ni_1.controller.ni_14.switch.__switch_2_x top.ni_1.controller.ni_14.switch.ni_18._arrow._first_x top.ni_2.properties.ni_3.once_from_to.ni_15.switch.__switch_2_x top.ni_2.properties.ni_3.once_from_to.ni_15.switch.ni_18._arrow._first_x top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.__jafter_2_x top.ni_2.properties.ni_3.once_from_to.ni_16.jafter.ni_19._arrow._first_x top.ni_2.properties.ni_4.jafter.__jafter_2_x top.ni_2.properties.ni_4.jafter.ni_19._arrow._first_x top.ni_2.properties.ni_5.edge.__edge_2_x top.ni_2.properties.ni_5.edge.ni_17._arrow._first_x top.ni_2.properties.ni_6.jafter.__jafter_2_x top.ni_2.properties.ni_6.jafter.ni_19._arrow._first_x top.OK))
  ERR))
(query ERR)
