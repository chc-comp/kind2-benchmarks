; Statically linked libraries
; AND
(declare-var AND.a_0 Bool)
(declare-var AND.a_1 Bool)
(declare-var AND.a_2 Bool)
(declare-var AND.a_3 Bool)
(declare-var AND.AND Bool)
(declare-rel AND_fun (Bool Bool Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (= AND.AND (and (and (and AND.a_0 AND.a_1) AND.a_2) AND.a_3))
  (AND_fun AND.a_0 AND.a_1 AND.a_2 AND.a_3 AND.AND)
))

; dangerous_level
(declare-var dangerous_level.q Int)
(declare-var dangerous_level.dangerous_level Bool)
(declare-rel dangerous_level_fun (Int Bool))
; Stateless step rule 
(rule (=> 
  (= dangerous_level.dangerous_level (or (<= dangerous_level.q 150) (>= dangerous_level.q 850)))
  (dangerous_level_fun dangerous_level.q dangerous_level.dangerous_level)
))

; level_failure
(declare-var level_failure.level_defect Int)
(declare-var level_failure.level_failure Bool)
(declare-rel level_failure_fun (Int Bool))
; Stateless step rule 
(rule (=> 
  (= level_failure.level_failure (not (= level_failure.level_defect 0)))
  (level_failure_fun level_failure.level_defect level_failure.level_failure)
))

; pump_failure
(declare-var pump_failure.pump_defect Int)
(declare-var pump_failure.pump_failure Bool)
(declare-rel pump_failure_fun (Int Bool))
; Stateless step rule 
(rule (=> 
  (= pump_failure.pump_failure (not (= pump_failure.pump_defect 0)))
  (pump_failure_fun pump_failure.pump_defect pump_failure.pump_failure)
))

; steam_failure
(declare-var steam_failure.steam_defect Int)
(declare-var steam_failure.steam_failure Bool)
(declare-rel steam_failure_fun (Int Bool))
; Stateless step rule 
(rule (=> 
  (= steam_failure.steam_failure (not (= steam_failure.steam_defect 0)))
  (steam_failure_fun steam_failure.steam_defect steam_failure.steam_failure)
))

; steam_failure_startup
(declare-var steam_failure_startup.steam Int)
(declare-var steam_failure_startup.steam_failure_startup Bool)
(declare-rel steam_failure_startup_fun (Int Bool))
; Stateless step rule 
(rule (=> 
  (= steam_failure_startup.steam_failure_startup (not (= steam_failure_startup.steam 0)))
  (steam_failure_startup_fun steam_failure_startup.steam steam_failure_startup.steam_failure_startup)
))

; transmission_failure
(declare-var transmission_failure.pump_state_0 Int)
(declare-var transmission_failure.pump_state_1 Int)
(declare-var transmission_failure.pump_state_2 Int)
(declare-var transmission_failure.pump_state_3 Int)
(declare-var transmission_failure.transmission_failure Bool)
(declare-rel transmission_failure_fun (Int Int Int Int Bool))
; Stateless step rule 
(rule (=> 
  (= transmission_failure.transmission_failure (or (or (or (= transmission_failure.pump_state_0 3) (= transmission_failure.pump_state_1 3)) (= transmission_failure.pump_state_2 3)) (= transmission_failure.pump_state_3 3)))
  (transmission_failure_fun transmission_failure.pump_state_0 transmission_failure.pump_state_1 transmission_failure.pump_state_2 transmission_failure.pump_state_3 transmission_failure.transmission_failure)
))

; OR
(declare-var OR.a_0 Bool)
(declare-var OR.a_1 Bool)
(declare-var OR.a_2 Bool)
(declare-var OR.a_3 Bool)
(declare-var OR.OR Bool)
(declare-rel OR_fun (Bool Bool Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (= OR.OR (or (or (and OR.a_0 OR.a_1) OR.a_2) OR.a_3))
  (OR_fun OR.a_0 OR.a_1 OR.a_2 OR.a_3 OR.OR)
))

; pump_control_failure
(declare-var pump_control_failure.pump_defect Int)
(declare-var pump_control_failure.pump_failure Bool)
(declare-rel pump_control_failure_fun (Int Bool))
; Stateless step rule 
(rule (=> 
  (= pump_control_failure.pump_failure (not (= pump_control_failure.pump_defect 0)))
  (pump_control_failure_fun pump_control_failure.pump_defect pump_control_failure.pump_failure)
))

; REDGE
(declare-var REDGE.S Bool)
(declare-var REDGE.REDGE Bool)
(declare-var REDGE.__REDGE_2_c Bool)
(declare-var REDGE.ni_30._arrow._first_c Bool)
(declare-var REDGE.__REDGE_2_m Bool)
(declare-var REDGE.ni_30._arrow._first_m Bool)
(declare-var REDGE.__REDGE_2_x Bool)
(declare-var REDGE.ni_30._arrow._first_x Bool)
(declare-var REDGE.__REDGE_1 Bool)
(declare-rel REDGE_reset (Bool Bool Bool Bool))
(declare-rel REDGE_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= REDGE.__REDGE_2_m REDGE.__REDGE_2_c)
       (= REDGE.ni_30._arrow._first_m true)
  )
  (REDGE_reset REDGE.__REDGE_2_c
               REDGE.ni_30._arrow._first_c
               REDGE.__REDGE_2_m
               REDGE.ni_30._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= REDGE.ni_30._arrow._first_m REDGE.ni_30._arrow._first_c)(and (= REDGE.__REDGE_1 (ite REDGE.ni_30._arrow._first_m true false))
                                                                    (= REDGE.ni_30._arrow._first_x false))
       (and (or (not (= REDGE.__REDGE_1 true))
               (= REDGE.REDGE REDGE.S))
            (or (not (= REDGE.__REDGE_1 false))
               (= REDGE.REDGE (and REDGE.S (not REDGE.__REDGE_2_c))))
       )
       (= REDGE.__REDGE_2_x REDGE.S)
       )
  (REDGE_step REDGE.S
              REDGE.REDGE
              REDGE.__REDGE_2_c
              REDGE.ni_30._arrow._first_c
              REDGE.__REDGE_2_x
              REDGE.ni_30._arrow._first_x)
))

; critical_failure
(declare-var critical_failure.op_mode Int)
(declare-var critical_failure.steam Int)
(declare-var critical_failure.level_defect Int)
(declare-var critical_failure.steam_defect Int)
(declare-var critical_failure.pump_defect_0 Int)
(declare-var critical_failure.pump_defect_1 Int)
(declare-var critical_failure.pump_defect_2 Int)
(declare-var critical_failure.pump_defect_3 Int)
(declare-var critical_failure.q Int)
(declare-var critical_failure.pump_state_0 Int)
(declare-var critical_failure.pump_state_1 Int)
(declare-var critical_failure.pump_state_2 Int)
(declare-var critical_failure.pump_state_3 Int)
(declare-var critical_failure.critical_failure Bool)
(declare-var critical_failure.__critical_failure_1 Bool)
(declare-var critical_failure.__critical_failure_10 Bool)
(declare-var critical_failure.__critical_failure_2 Bool)
(declare-var critical_failure.__critical_failure_3 Bool)
(declare-var critical_failure.__critical_failure_4 Bool)
(declare-var critical_failure.__critical_failure_5 Bool)
(declare-var critical_failure.__critical_failure_6 Bool)
(declare-var critical_failure.__critical_failure_7 Bool)
(declare-var critical_failure.__critical_failure_8 Bool)
(declare-var critical_failure.__critical_failure_9 Bool)
(declare-rel critical_failure_fun (Int Int Int Int Int Int Int Int Int Int Int Int Int Bool))
; Stateless step rule 
(rule (=> 
  (and (steam_failure_startup_fun critical_failure.steam
                                  critical_failure.__critical_failure_9)
       (level_failure_fun critical_failure.level_defect
                          critical_failure.__critical_failure_8)
       (dangerous_level_fun critical_failure.q
                            critical_failure.__critical_failure_7)
       (steam_failure_fun critical_failure.steam_defect
                          critical_failure.__critical_failure_6)
       (pump_failure_fun critical_failure.pump_defect_0
                         critical_failure.__critical_failure_4)
       (pump_failure_fun critical_failure.pump_defect_1
                         critical_failure.__critical_failure_3)
       (pump_failure_fun critical_failure.pump_defect_2
                         critical_failure.__critical_failure_2)
       (pump_failure_fun critical_failure.pump_defect_3
                         critical_failure.__critical_failure_1)
       (AND_fun critical_failure.__critical_failure_4
                critical_failure.__critical_failure_3
                critical_failure.__critical_failure_2
                critical_failure.__critical_failure_1
                critical_failure.__critical_failure_5)
       (transmission_failure_fun critical_failure.pump_state_0
                                 critical_failure.pump_state_1
                                 critical_failure.pump_state_2
                                 critical_failure.pump_state_3
                                 critical_failure.__critical_failure_10)
       (= critical_failure.critical_failure (or (or (or (or (or critical_failure.__critical_failure_10 (and (= critical_failure.op_mode 1) critical_failure.__critical_failure_9)) (and (= critical_failure.op_mode 2) (or critical_failure.__critical_failure_8 critical_failure.__critical_failure_6))) (and (= critical_failure.op_mode 3) critical_failure.__critical_failure_7)) (and (= critical_failure.op_mode 4) critical_failure.__critical_failure_7)) (and (= critical_failure.op_mode 5) (or (or critical_failure.__critical_failure_7 critical_failure.__critical_failure_6) critical_failure.__critical_failure_5))))
       )
  (critical_failure_fun critical_failure.op_mode critical_failure.steam critical_failure.level_defect critical_failure.steam_defect critical_failure.pump_defect_0 critical_failure.pump_defect_1 critical_failure.pump_defect_2 critical_failure.pump_defect_3 critical_failure.q critical_failure.pump_state_0 critical_failure.pump_state_1 critical_failure.pump_state_2 critical_failure.pump_state_3 critical_failure.critical_failure)
))

; failure
(declare-var failure.level_defect Int)
(declare-var failure.steam_defect Int)
(declare-var failure.pump_defect_0 Int)
(declare-var failure.pump_defect_1 Int)
(declare-var failure.pump_defect_2 Int)
(declare-var failure.pump_defect_3 Int)
(declare-var failure.pump_control_defect_0 Int)
(declare-var failure.pump_control_defect_1 Int)
(declare-var failure.pump_control_defect_2 Int)
(declare-var failure.pump_control_defect_3 Int)
(declare-var failure.failure Bool)
(declare-var failure.__failure_1 Bool)
(declare-var failure.__failure_10 Bool)
(declare-var failure.__failure_11 Bool)
(declare-var failure.__failure_12 Bool)
(declare-var failure.__failure_2 Bool)
(declare-var failure.__failure_3 Bool)
(declare-var failure.__failure_4 Bool)
(declare-var failure.__failure_5 Bool)
(declare-var failure.__failure_6 Bool)
(declare-var failure.__failure_7 Bool)
(declare-var failure.__failure_8 Bool)
(declare-var failure.__failure_9 Bool)
(declare-rel failure_fun (Int Int Int Int Int Int Int Int Int Int Bool))
; Stateless step rule 
(rule (=> 
  (and (pump_failure_fun failure.pump_defect_0
                         failure.__failure_9)
       (pump_failure_fun failure.pump_defect_1
                         failure.__failure_8)
       (pump_failure_fun failure.pump_defect_2
                         failure.__failure_7)
       (pump_failure_fun failure.pump_defect_3
                         failure.__failure_6)
       (pump_control_failure_fun failure.pump_control_defect_0
                                 failure.__failure_4)
       (pump_control_failure_fun failure.pump_control_defect_1
                                 failure.__failure_3)
       (pump_control_failure_fun failure.pump_control_defect_2
                                 failure.__failure_2)
       (pump_control_failure_fun failure.pump_control_defect_3
                                 failure.__failure_1)
       (OR_fun failure.__failure_4
               failure.__failure_3
               failure.__failure_2
               failure.__failure_1
               failure.__failure_5)
       (level_failure_fun failure.level_defect
                          failure.__failure_12)
       (steam_failure_fun failure.steam_defect
                          failure.__failure_11)
       (OR_fun failure.__failure_9
               failure.__failure_8
               failure.__failure_7
               failure.__failure_6
               failure.__failure_10)
       (= failure.failure (or (or (or failure.__failure_12 failure.__failure_11) failure.__failure_10) failure.__failure_5))
       )
  (failure_fun failure.level_defect failure.steam_defect failure.pump_defect_0 failure.pump_defect_1 failure.pump_defect_2 failure.pump_defect_3 failure.pump_control_defect_0 failure.pump_control_defect_1 failure.pump_control_defect_2 failure.pump_control_defect_3 failure.failure)
))

; initialization_complete
(declare-var initialization_complete.op_mode Int)
(declare-var initialization_complete.level Int)
(declare-var initialization_complete.valve Bool)
(declare-var initialization_complete.initialization_complete Bool)
(declare-rel initialization_complete_fun (Int Int Bool Bool))
; Stateless step rule 
(rule (=> 
  (= initialization_complete.initialization_complete (and (and (= initialization_complete.op_mode 2) (and (<= 400 initialization_complete.level) (<= initialization_complete.level 600))) (not initialization_complete.valve)))
  (initialization_complete_fun initialization_complete.op_mode initialization_complete.level initialization_complete.valve initialization_complete.initialization_complete)
))

; sum
(declare-var sum.a_0 Int)
(declare-var sum.a_1 Int)
(declare-var sum.a_2 Int)
(declare-var sum.a_3 Int)
(declare-var sum.sum Int)
(declare-rel sum_fun (Int Int Int Int Int))
; Stateless step rule 
(rule (=> 
  (= sum.sum (+ (+ (+ sum.a_0 sum.a_1) sum.a_2) sum.a_3))
  (sum_fun sum.a_0 sum.a_1 sum.a_2 sum.a_3 sum.sum)
))

; Defect
(declare-var Defect.statein Int)
(declare-var Defect.fail_cond Bool)
(declare-var Defect.ack_chan Bool)
(declare-var Defect.repair_chan Bool)
(declare-var Defect.stateout Int)
(declare-rel Defect_fun (Int Bool Bool Bool Int))
; Stateless step rule 
(rule (=> 
  (and (or (not (= (= Defect.statein 0) true))
          (and (or (not (= Defect.fail_cond true))
                  (= Defect.stateout 1))
               (or (not (= Defect.fail_cond false))
                  (= Defect.stateout 0))
          ))
       (or (not (= (= Defect.statein 0) false))
          (and (or (not (= (= Defect.statein 1) true))
                  (and (or (not (= Defect.ack_chan true))
                          (= Defect.stateout 2))
                       (or (not (= Defect.ack_chan false))
                          (= Defect.stateout 1))
                  ))
               (or (not (= (= Defect.statein 1) false))
                  (and (or (not (= Defect.repair_chan true))
                          (= Defect.stateout 0))
                       (or (not (= Defect.repair_chan false))
                          (= Defect.stateout 2))
                  ))
          ))
  )
  (Defect_fun Defect.statein Defect.fail_cond Defect.ack_chan Defect.repair_chan Defect.stateout)
))

; level_failure_detect
(declare-var level_failure_detect.level Int)
(declare-var level_failure_detect.level_failure_detect Bool)
(declare-rel level_failure_detect_fun (Int Bool))
; Stateless step rule 
(rule (=> 
  (= level_failure_detect.level_failure_detect (or (< level_failure_detect.level 0) (> level_failure_detect.level 1000)))
  (level_failure_detect_fun level_failure_detect.level level_failure_detect.level_failure_detect)
))

; pump_failure_detect
(declare-var pump_failure_detect.pump_status Int)
(declare-var pump_failure_detect.pump_state Int)
(declare-var pump_failure_detect.pump_control_state Bool)
(declare-var pump_failure_detect.pump_failure_detect Bool)
(declare-var pump_failure_detect.pump_control_failure_detect Bool)
(declare-var pump_failure_detect.flow Bool)
(declare-rel pump_failure_detect_fun (Int Int Bool Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (and (= pump_failure_detect.pump_failure_detect (or (and (= pump_failure_detect.pump_status 0) (= pump_failure_detect.pump_state 1)) (and (or (= pump_failure_detect.pump_status 1) (= pump_failure_detect.pump_status 2)) (= pump_failure_detect.pump_state 0))))
       (= pump_failure_detect.pump_control_failure_detect (or (or (and (and (or (= pump_failure_detect.pump_status 0) (= pump_failure_detect.pump_status 2)) (= pump_failure_detect.pump_state 0)) pump_failure_detect.pump_control_state) (and (and (= pump_failure_detect.pump_status 1) (= pump_failure_detect.pump_state 1)) (not pump_failure_detect.pump_control_state))) (and (and (= pump_failure_detect.pump_status 2) (= pump_failure_detect.pump_state 1)) pump_failure_detect.pump_control_state)))
       (= pump_failure_detect.flow (or (or (and (and (= pump_failure_detect.pump_status 0) (= pump_failure_detect.pump_state 1)) pump_failure_detect.pump_control_state) (and (and (= pump_failure_detect.pump_status 1) (= pump_failure_detect.pump_state 0)) pump_failure_detect.pump_control_state)) (and (= pump_failure_detect.pump_status 1) (= pump_failure_detect.pump_state 1))))
       )
  (pump_failure_detect_fun pump_failure_detect.pump_status pump_failure_detect.pump_state pump_failure_detect.pump_control_state pump_failure_detect.pump_failure_detect pump_failure_detect.pump_control_failure_detect pump_failure_detect.flow)
))

; operate_pumps
(declare-var operate_pumps.n Int)
(declare-var operate_pumps.n_pumps_to_open Int)
(declare-var operate_pumps.pump_status_0 Int)
(declare-var operate_pumps.pump_status_1 Int)
(declare-var operate_pumps.pump_status_2 Int)
(declare-var operate_pumps.pump_status_3 Int)
(declare-var operate_pumps.pump_defect_0 Int)
(declare-var operate_pumps.pump_defect_1 Int)
(declare-var operate_pumps.pump_defect_2 Int)
(declare-var operate_pumps.pump_defect_3 Int)
(declare-var operate_pumps.flow_0 Bool)
(declare-var operate_pumps.flow_1 Bool)
(declare-var operate_pumps.flow_2 Bool)
(declare-var operate_pumps.flow_3 Bool)
(declare-var operate_pumps.operate_pumps_0 Int)
(declare-var operate_pumps.operate_pumps_1 Int)
(declare-var operate_pumps.operate_pumps_2 Int)
(declare-var operate_pumps.operate_pumps_3 Int)
(declare-var operate_pumps.__operate_pumps_12_c Int)
(declare-var operate_pumps.__operate_pumps_19_c Int)
(declare-var operate_pumps.__operate_pumps_26_c Int)
(declare-var operate_pumps.__operate_pumps_5_c Int)
(declare-var operate_pumps.__operate_pumps_12_m Int)
(declare-var operate_pumps.__operate_pumps_19_m Int)
(declare-var operate_pumps.__operate_pumps_26_m Int)
(declare-var operate_pumps.__operate_pumps_5_m Int)
(declare-var operate_pumps.__operate_pumps_12_x Int)
(declare-var operate_pumps.__operate_pumps_19_x Int)
(declare-var operate_pumps.__operate_pumps_26_x Int)
(declare-var operate_pumps.__operate_pumps_5_x Int)
(declare-var operate_pumps.__operate_pumps_1 Bool)
(declare-var operate_pumps.__operate_pumps_13 Bool)
(declare-var operate_pumps.__operate_pumps_15 Bool)
(declare-var operate_pumps.__operate_pumps_20 Bool)
(declare-var operate_pumps.__operate_pumps_22 Bool)
(declare-var operate_pumps.__operate_pumps_27 Bool)
(declare-var operate_pumps.__operate_pumps_6 Bool)
(declare-var operate_pumps.__operate_pumps_8 Bool)
(declare-rel operate_pumps_reset (Int Int Int Int Int Int Int Int))
(declare-rel operate_pumps_step (Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int))

(rule (=> 
  (and 
       (= operate_pumps.__operate_pumps_12_m operate_pumps.__operate_pumps_12_c)
       (= operate_pumps.__operate_pumps_19_m operate_pumps.__operate_pumps_19_c)
       (= operate_pumps.__operate_pumps_26_m operate_pumps.__operate_pumps_26_c)
       (= operate_pumps.__operate_pumps_5_m operate_pumps.__operate_pumps_5_c)
       
  )
  (operate_pumps_reset operate_pumps.__operate_pumps_12_c
                       operate_pumps.__operate_pumps_19_c
                       operate_pumps.__operate_pumps_26_c
                       operate_pumps.__operate_pumps_5_c
                       operate_pumps.__operate_pumps_12_m
                       operate_pumps.__operate_pumps_19_m
                       operate_pumps.__operate_pumps_26_m
                       operate_pumps.__operate_pumps_5_m)
))

; Step rule 
(rule (=> 
  (and (= operate_pumps.__operate_pumps_6 (and (= operate_pumps.__operate_pumps_5_c 2) (= operate_pumps.pump_defect_3 0)))
       (pump_failure_fun operate_pumps.pump_defect_3
                         operate_pumps.__operate_pumps_1)
       (and (or (not (= (and (and (and (> operate_pumps.n_pumps_to_open 0) (not operate_pumps.flow_3)) (not operate_pumps.__operate_pumps_1)) (= operate_pumps.pump_status_3 0)) true))
               (= operate_pumps.operate_pumps_3 2))
            (or (not (= (and (and (and (> operate_pumps.n_pumps_to_open 0) (not operate_pumps.flow_3)) (not operate_pumps.__operate_pumps_1)) (= operate_pumps.pump_status_3 0)) false))
               (and (or (not (= (and (and (and (< operate_pumps.n_pumps_to_open 0) operate_pumps.flow_3) (not operate_pumps.__operate_pumps_1)) (= operate_pumps.pump_status_3 1)) true))
                       (= operate_pumps.operate_pumps_3 0))
                    (or (not (= (and (and (and (< operate_pumps.n_pumps_to_open 0) operate_pumps.flow_3) (not operate_pumps.__operate_pumps_1)) (= operate_pumps.pump_status_3 1)) false))
                       (and (or (not (= (= operate_pumps.pump_status_3 2) true))
                               (= operate_pumps.operate_pumps_3 1))
                            (or (not (= (= operate_pumps.pump_status_3 2) false))
                               (and (or (not (= operate_pumps.__operate_pumps_6 true))
                                       (and (or (not (= (= operate_pumps.pump_status_3 1) true))
                                               (= operate_pumps.operate_pumps_3 0))
                                            (or (not (= (= operate_pumps.pump_status_3 1) false))
                                               (= operate_pumps.operate_pumps_3 1))
                                       ))
                                    (or (not (= operate_pumps.__operate_pumps_6 false))
                                       (= operate_pumps.operate_pumps_3 operate_pumps.pump_status_3))
                               ))
                       ))
               ))
       )
       (pump_failure_fun operate_pumps.pump_defect_2
                         operate_pumps.__operate_pumps_8)
       (= operate_pumps.__operate_pumps_13 (and (= operate_pumps.__operate_pumps_12_c 2) (= operate_pumps.pump_defect_2 0)))
       (and (or (not (= (and (and (and (> operate_pumps.n_pumps_to_open 0) (not operate_pumps.flow_2)) (not operate_pumps.__operate_pumps_8)) (= operate_pumps.pump_status_2 0)) true))
               (= operate_pumps.operate_pumps_2 2))
            (or (not (= (and (and (and (> operate_pumps.n_pumps_to_open 0) (not operate_pumps.flow_2)) (not operate_pumps.__operate_pumps_8)) (= operate_pumps.pump_status_2 0)) false))
               (and (or (not (= (and (and (and (< operate_pumps.n_pumps_to_open 0) operate_pumps.flow_2) (not operate_pumps.__operate_pumps_8)) (= operate_pumps.pump_status_2 1)) true))
                       (= operate_pumps.operate_pumps_2 0))
                    (or (not (= (and (and (and (< operate_pumps.n_pumps_to_open 0) operate_pumps.flow_2) (not operate_pumps.__operate_pumps_8)) (= operate_pumps.pump_status_2 1)) false))
                       (and (or (not (= (= operate_pumps.pump_status_2 2) true))
                               (= operate_pumps.operate_pumps_2 1))
                            (or (not (= (= operate_pumps.pump_status_2 2) false))
                               (and (or (not (= operate_pumps.__operate_pumps_13 true))
                                       (and (or (not (= (= operate_pumps.pump_status_2 1) true))
                                               (= operate_pumps.operate_pumps_2 0))
                                            (or (not (= (= operate_pumps.pump_status_2 1) false))
                                               (= operate_pumps.operate_pumps_2 1))
                                       ))
                                    (or (not (= operate_pumps.__operate_pumps_13 false))
                                       (= operate_pumps.operate_pumps_2 operate_pumps.pump_status_2))
                               ))
                       ))
               ))
       )
       (= operate_pumps.__operate_pumps_20 (and (= operate_pumps.__operate_pumps_19_c 2) (= operate_pumps.pump_defect_1 0)))
       (pump_failure_fun operate_pumps.pump_defect_1
                         operate_pumps.__operate_pumps_15)
       (and (or (not (= (and (and (and (> operate_pumps.n_pumps_to_open 0) (not operate_pumps.flow_1)) (not operate_pumps.__operate_pumps_15)) (= operate_pumps.pump_status_1 0)) true))
               (= operate_pumps.operate_pumps_1 2))
            (or (not (= (and (and (and (> operate_pumps.n_pumps_to_open 0) (not operate_pumps.flow_1)) (not operate_pumps.__operate_pumps_15)) (= operate_pumps.pump_status_1 0)) false))
               (and (or (not (= (and (and (and (< operate_pumps.n_pumps_to_open 0) operate_pumps.flow_1) (not operate_pumps.__operate_pumps_15)) (= operate_pumps.pump_status_1 1)) true))
                       (= operate_pumps.operate_pumps_1 0))
                    (or (not (= (and (and (and (< operate_pumps.n_pumps_to_open 0) operate_pumps.flow_1) (not operate_pumps.__operate_pumps_15)) (= operate_pumps.pump_status_1 1)) false))
                       (and (or (not (= (= operate_pumps.pump_status_1 2) true))
                               (= operate_pumps.operate_pumps_1 1))
                            (or (not (= (= operate_pumps.pump_status_1 2) false))
                               (and (or (not (= operate_pumps.__operate_pumps_20 true))
                                       (and (or (not (= (= operate_pumps.pump_status_1 1) true))
                                               (= operate_pumps.operate_pumps_1 0))
                                            (or (not (= (= operate_pumps.pump_status_1 1) false))
                                               (= operate_pumps.operate_pumps_1 1))
                                       ))
                                    (or (not (= operate_pumps.__operate_pumps_20 false))
                                       (= operate_pumps.operate_pumps_1 operate_pumps.pump_status_1))
                               ))
                       ))
               ))
       )
       (= operate_pumps.__operate_pumps_27 (and (= operate_pumps.__operate_pumps_26_c 2) (= operate_pumps.pump_defect_0 0)))
       (pump_failure_fun operate_pumps.pump_defect_0
                         operate_pumps.__operate_pumps_22)
       (and (or (not (= (and (and (and (> operate_pumps.n_pumps_to_open 0) (not operate_pumps.flow_0)) (not operate_pumps.__operate_pumps_22)) (= operate_pumps.pump_status_0 0)) true))
               (= operate_pumps.operate_pumps_0 2))
            (or (not (= (and (and (and (> operate_pumps.n_pumps_to_open 0) (not operate_pumps.flow_0)) (not operate_pumps.__operate_pumps_22)) (= operate_pumps.pump_status_0 0)) false))
               (and (or (not (= (and (and (and (< operate_pumps.n_pumps_to_open 0) operate_pumps.flow_0) (not operate_pumps.__operate_pumps_22)) (= operate_pumps.pump_status_0 1)) true))
                       (= operate_pumps.operate_pumps_0 0))
                    (or (not (= (and (and (and (< operate_pumps.n_pumps_to_open 0) operate_pumps.flow_0) (not operate_pumps.__operate_pumps_22)) (= operate_pumps.pump_status_0 1)) false))
                       (and (or (not (= (= operate_pumps.pump_status_0 2) true))
                               (= operate_pumps.operate_pumps_0 1))
                            (or (not (= (= operate_pumps.pump_status_0 2) false))
                               (and (or (not (= operate_pumps.__operate_pumps_27 true))
                                       (and (or (not (= (= operate_pumps.pump_status_0 1) true))
                                               (= operate_pumps.operate_pumps_0 0))
                                            (or (not (= (= operate_pumps.pump_status_0 1) false))
                                               (= operate_pumps.operate_pumps_0 1))
                                       ))
                                    (or (not (= operate_pumps.__operate_pumps_27 false))
                                       (= operate_pumps.operate_pumps_0 operate_pumps.pump_status_0))
                               ))
                       ))
               ))
       )
       (= operate_pumps.__operate_pumps_5_x operate_pumps.pump_defect_3)
       (= operate_pumps.__operate_pumps_26_x operate_pumps.pump_defect_0)
       (= operate_pumps.__operate_pumps_19_x operate_pumps.pump_defect_1)
       (= operate_pumps.__operate_pumps_12_x operate_pumps.pump_defect_2)
       )
  (operate_pumps_step operate_pumps.n
                      operate_pumps.n_pumps_to_open
                      operate_pumps.pump_status_0
                      operate_pumps.pump_status_1
                      operate_pumps.pump_status_2
                      operate_pumps.pump_status_3
                      operate_pumps.pump_defect_0
                      operate_pumps.pump_defect_1
                      operate_pumps.pump_defect_2
                      operate_pumps.pump_defect_3
                      operate_pumps.flow_0
                      operate_pumps.flow_1
                      operate_pumps.flow_2
                      operate_pumps.flow_3
                      operate_pumps.operate_pumps_0
                      operate_pumps.operate_pumps_1
                      operate_pumps.operate_pumps_2
                      operate_pumps.operate_pumps_3
                      operate_pumps.__operate_pumps_12_c
                      operate_pumps.__operate_pumps_19_c
                      operate_pumps.__operate_pumps_26_c
                      operate_pumps.__operate_pumps_5_c
                      operate_pumps.__operate_pumps_12_x
                      operate_pumps.__operate_pumps_19_x
                      operate_pumps.__operate_pumps_26_x
                      operate_pumps.__operate_pumps_5_x)
))

; steam_failure_detect
(declare-var steam_failure_detect.steam Int)
(declare-var steam_failure_detect.steam_failure_detect Bool)
(declare-rel steam_failure_detect_fun (Int Bool))
; Stateless step rule 
(rule (=> 
  (= steam_failure_detect.steam_failure_detect (or (< steam_failure_detect.steam 0) (> steam_failure_detect.steam 25)))
  (steam_failure_detect_fun steam_failure_detect.steam steam_failure_detect.steam_failure_detect)
))

; FEDGE1
(declare-var FEDGE1.S Bool)
(declare-var FEDGE1.FEDGE1 Bool)
(declare-var FEDGE1.__FEDGE1_2_c Bool)
(declare-var FEDGE1.ni_29._arrow._first_c Bool)
(declare-var FEDGE1.__FEDGE1_2_m Bool)
(declare-var FEDGE1.ni_29._arrow._first_m Bool)
(declare-var FEDGE1.__FEDGE1_2_x Bool)
(declare-var FEDGE1.ni_29._arrow._first_x Bool)
(declare-var FEDGE1.__FEDGE1_1 Bool)
(declare-rel FEDGE1_reset (Bool Bool Bool Bool))
(declare-rel FEDGE1_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= FEDGE1.__FEDGE1_2_m FEDGE1.__FEDGE1_2_c)
       (= FEDGE1.ni_29._arrow._first_m true)
  )
  (FEDGE1_reset FEDGE1.__FEDGE1_2_c
                FEDGE1.ni_29._arrow._first_c
                FEDGE1.__FEDGE1_2_m
                FEDGE1.ni_29._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= FEDGE1.ni_29._arrow._first_m FEDGE1.ni_29._arrow._first_c)(and (= FEDGE1.__FEDGE1_1 (ite FEDGE1.ni_29._arrow._first_m true false))
                                                                    (= FEDGE1.ni_29._arrow._first_x false))
       (and (or (not (= FEDGE1.__FEDGE1_1 true))
               (= FEDGE1.FEDGE1 (not FEDGE1.S)))
            (or (not (= FEDGE1.__FEDGE1_1 false))
               (= FEDGE1.FEDGE1 (and (not FEDGE1.S) FEDGE1.__FEDGE1_2_c)))
       )
       (= FEDGE1.__FEDGE1_2_x FEDGE1.S)
       )
  (FEDGE1_step FEDGE1.S
               FEDGE1.FEDGE1
               FEDGE1.__FEDGE1_2_c
               FEDGE1.ni_29._arrow._first_c
               FEDGE1.__FEDGE1_2_x
               FEDGE1.ni_29._arrow._first_x)
))

; FEDGE2
(declare-var FEDGE2.S Bool)
(declare-var FEDGE2.FEDGE2 Bool)
(declare-var FEDGE2.ni_28.REDGE.__REDGE_2_c Bool)
(declare-var FEDGE2.ni_28.REDGE.ni_30._arrow._first_c Bool)
(declare-var FEDGE2.ni_28.REDGE.__REDGE_2_m Bool)
(declare-var FEDGE2.ni_28.REDGE.ni_30._arrow._first_m Bool)
(declare-var FEDGE2.ni_28.REDGE.__REDGE_2_x Bool)
(declare-var FEDGE2.ni_28.REDGE.ni_30._arrow._first_x Bool)
(declare-rel FEDGE2_reset (Bool Bool Bool Bool))
(declare-rel FEDGE2_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       
       (REDGE_reset FEDGE2.ni_28.REDGE.__REDGE_2_c
                    FEDGE2.ni_28.REDGE.ni_30._arrow._first_c
                    FEDGE2.ni_28.REDGE.__REDGE_2_m
                    FEDGE2.ni_28.REDGE.ni_30._arrow._first_m)
  )
  (FEDGE2_reset FEDGE2.ni_28.REDGE.__REDGE_2_c
                FEDGE2.ni_28.REDGE.ni_30._arrow._first_c
                FEDGE2.ni_28.REDGE.__REDGE_2_m
                FEDGE2.ni_28.REDGE.ni_30._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= FEDGE2.ni_28.REDGE.__REDGE_2_m FEDGE2.ni_28.REDGE.__REDGE_2_c)
       (= FEDGE2.ni_28.REDGE.ni_30._arrow._first_m FEDGE2.ni_28.REDGE.ni_30._arrow._first_c)
       )
  (REDGE_step (not FEDGE2.S)
              FEDGE2.FEDGE2
              FEDGE2.ni_28.REDGE.__REDGE_2_m
              FEDGE2.ni_28.REDGE.ni_30._arrow._first_m
              FEDGE2.ni_28.REDGE.__REDGE_2_x
              FEDGE2.ni_28.REDGE.ni_30._arrow._first_x)
  (FEDGE2_step FEDGE2.S
               FEDGE2.FEDGE2
               FEDGE2.ni_28.REDGE.__REDGE_2_c
               FEDGE2.ni_28.REDGE.ni_30._arrow._first_c
               FEDGE2.ni_28.REDGE.__REDGE_2_x
               FEDGE2.ni_28.REDGE.ni_30._arrow._first_x)
))

; ControlMode
(declare-var ControlMode.steam_boiler_waiting Bool)
(declare-var ControlMode.physical_units_ready Bool)
(declare-var ControlMode.stop_request Bool)
(declare-var ControlMode.steam Int)
(declare-var ControlMode.level_defect Int)
(declare-var ControlMode.steam_defect Int)
(declare-var ControlMode.pump_defect_0 Int)
(declare-var ControlMode.pump_defect_1 Int)
(declare-var ControlMode.pump_defect_2 Int)
(declare-var ControlMode.pump_defect_3 Int)
(declare-var ControlMode.pump_control_defect_0 Int)
(declare-var ControlMode.pump_control_defect_1 Int)
(declare-var ControlMode.pump_control_defect_2 Int)
(declare-var ControlMode.pump_control_defect_3 Int)
(declare-var ControlMode.q Int)
(declare-var ControlMode.pump_state_0 Int)
(declare-var ControlMode.pump_state_1 Int)
(declare-var ControlMode.pump_state_2 Int)
(declare-var ControlMode.pump_state_3 Int)
(declare-var ControlMode.op_mode Int)
(declare-var ControlMode.__ControlMode_2_c Int)
(declare-var ControlMode.ni_27._arrow._first_c Bool)
(declare-var ControlMode.__ControlMode_2_m Int)
(declare-var ControlMode.ni_27._arrow._first_m Bool)
(declare-var ControlMode.__ControlMode_2_x Int)
(declare-var ControlMode.ni_27._arrow._first_x Bool)
(declare-var ControlMode.__ControlMode_1 Bool)
(declare-var ControlMode.__ControlMode_3 Bool)
(declare-var ControlMode.__ControlMode_4 Bool)
(declare-var ControlMode.__ControlMode_5 Bool)
(declare-var ControlMode.__ControlMode_6 Bool)
(declare-var ControlMode.__ControlMode_7 Bool)
(declare-var ControlMode.__ControlMode_8 Bool)
(declare-rel ControlMode_reset (Int Bool Int Bool))
(declare-rel ControlMode_step (Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Bool))

(rule (=> 
  (and 
       (= ControlMode.__ControlMode_2_m ControlMode.__ControlMode_2_c)
       (= ControlMode.ni_27._arrow._first_m true)
  )
  (ControlMode_reset ControlMode.__ControlMode_2_c
                     ControlMode.ni_27._arrow._first_c
                     ControlMode.__ControlMode_2_m
                     ControlMode.ni_27._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (failure_fun ControlMode.level_defect
                    ControlMode.steam_defect
                    ControlMode.pump_defect_0
                    ControlMode.pump_defect_1
                    ControlMode.pump_defect_2
                    ControlMode.pump_defect_3
                    ControlMode.pump_control_defect_0
                    ControlMode.pump_control_defect_1
                    ControlMode.pump_control_defect_2
                    ControlMode.pump_control_defect_3
                    ControlMode.__ControlMode_8)
       (level_failure_fun ControlMode.level_defect
                          ControlMode.__ControlMode_7)
       (= ControlMode.__ControlMode_6 (and (= ControlMode.__ControlMode_2_c 2) (not ControlMode.physical_units_ready)))
       (= ControlMode.__ControlMode_5 (= ControlMode.__ControlMode_2_c 1))
       (critical_failure_fun ControlMode.__ControlMode_2_c
                             ControlMode.steam
                             ControlMode.level_defect
                             ControlMode.steam_defect
                             ControlMode.pump_defect_0
                             ControlMode.pump_defect_1
                             ControlMode.pump_defect_2
                             ControlMode.pump_defect_3
                             ControlMode.q
                             ControlMode.pump_state_0
                             ControlMode.pump_state_1
                             ControlMode.pump_state_2
                             ControlMode.pump_state_3
                             ControlMode.__ControlMode_3)
       (= ControlMode.__ControlMode_4 (or (or ControlMode.__ControlMode_3 ControlMode.stop_request) (= ControlMode.__ControlMode_2_c 6)))
       (= ControlMode.ni_27._arrow._first_m ControlMode.ni_27._arrow._first_c)
       (and (= ControlMode.__ControlMode_1 (ite ControlMode.ni_27._arrow._first_m true false))
            (= ControlMode.ni_27._arrow._first_x false))
       (and (or (not (= ControlMode.__ControlMode_1 true))
               (= ControlMode.op_mode 1))
            (or (not (= ControlMode.__ControlMode_1 false))
               (and (or (not (= ControlMode.__ControlMode_4 true))
                       (= ControlMode.op_mode 6))
                    (or (not (= ControlMode.__ControlMode_4 false))
                       (and (or (not (= ControlMode.__ControlMode_5 true))
                               (and (or (not (= ControlMode.steam_boiler_waiting true))
                                       (= ControlMode.op_mode 2))
                                    (or (not (= ControlMode.steam_boiler_waiting false))
                                       (= ControlMode.op_mode 1))
                               ))
                            (or (not (= ControlMode.__ControlMode_5 false))
                               (and (or (not (= ControlMode.__ControlMode_6 true))
                                       (= ControlMode.op_mode 2))
                                    (or (not (= ControlMode.__ControlMode_6 false))
                                       (and (or (not (= ControlMode.__ControlMode_7 true))
                                               (= ControlMode.op_mode 5))
                                            (or (not (= ControlMode.__ControlMode_7 false))
                                               (and (or (not (= ControlMode.__ControlMode_8 true))
                                                       (= ControlMode.op_mode 4))
                                                    (or (not (= ControlMode.__ControlMode_8 false))
                                                       (= ControlMode.op_mode 3))
                                               ))
                                       ))
                               ))
                       ))
               ))
       )
       (= ControlMode.__ControlMode_2_x ControlMode.op_mode)
       )
  (ControlMode_step ControlMode.steam_boiler_waiting
                    ControlMode.physical_units_ready
                    ControlMode.stop_request
                    ControlMode.steam
                    ControlMode.level_defect
                    ControlMode.steam_defect
                    ControlMode.pump_defect_0
                    ControlMode.pump_defect_1
                    ControlMode.pump_defect_2
                    ControlMode.pump_defect_3
                    ControlMode.pump_control_defect_0
                    ControlMode.pump_control_defect_1
                    ControlMode.pump_control_defect_2
                    ControlMode.pump_control_defect_3
                    ControlMode.q
                    ControlMode.pump_state_0
                    ControlMode.pump_state_1
                    ControlMode.pump_state_2
                    ControlMode.pump_state_3
                    ControlMode.op_mode
                    ControlMode.__ControlMode_2_c
                    ControlMode.ni_27._arrow._first_c
                    ControlMode.__ControlMode_2_x
                    ControlMode.ni_27._arrow._first_x)
))

; ControlOutput
(declare-var ControlOutput.op_mode Int)
(declare-var ControlOutput.level Int)
(declare-var ControlOutput.valve Bool)
(declare-var ControlOutput.program_ready Bool)
(declare-var ControlOutput.mode Int)
(declare-rel ControlOutput_fun (Int Int Bool Bool Int))
; Stateless step rule 
(rule (=> 
  (and (initialization_complete_fun ControlOutput.op_mode
                                    ControlOutput.level
                                    ControlOutput.valve
                                    ControlOutput.program_ready)
       (= ControlOutput.mode ControlOutput.op_mode)
       )
  (ControlOutput_fun ControlOutput.op_mode ControlOutput.level ControlOutput.valve ControlOutput.program_ready ControlOutput.mode)
))

; Dynamics
(declare-var Dynamics.valve_state Int)
(declare-var Dynamics.level Int)
(declare-var Dynamics.steam Int)
(declare-var Dynamics.level_defect Int)
(declare-var Dynamics.steam_defect Int)
(declare-var Dynamics.flow_0 Bool)
(declare-var Dynamics.flow_1 Bool)
(declare-var Dynamics.flow_2 Bool)
(declare-var Dynamics.flow_3 Bool)
(declare-var Dynamics.q Int)
(declare-var Dynamics.v Int)
(declare-var Dynamics.p_0 Int)
(declare-var Dynamics.p_1 Int)
(declare-var Dynamics.p_2 Int)
(declare-var Dynamics.p_3 Int)
(declare-var Dynamics.__Dynamics_8_c Int)
(declare-var Dynamics.ni_26._arrow._first_c Bool)
(declare-var Dynamics.__Dynamics_8_m Int)
(declare-var Dynamics.ni_26._arrow._first_m Bool)
(declare-var Dynamics.__Dynamics_8_x Int)
(declare-var Dynamics.ni_26._arrow._first_x Bool)
(declare-var Dynamics.__Dynamics_1 Bool)
(declare-var Dynamics.__Dynamics_11 Int)
(declare-var Dynamics.__Dynamics_6 Bool)
(declare-var Dynamics.__Dynamics_7 Int)
(declare-var Dynamics.__Dynamics_9 Bool)
(declare-rel Dynamics_reset (Int Bool Int Bool))
(declare-rel Dynamics_step (Int Int Int Int Int Bool Bool Bool Bool Int Int Int Int Int Int Int Bool Int Bool))

(rule (=> 
  (and 
       (= Dynamics.__Dynamics_8_m Dynamics.__Dynamics_8_c)
       (= Dynamics.ni_26._arrow._first_m true)
  )
  (Dynamics_reset Dynamics.__Dynamics_8_c
                  Dynamics.ni_26._arrow._first_c
                  Dynamics.__Dynamics_8_m
                  Dynamics.ni_26._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Dynamics.ni_26._arrow._first_m Dynamics.ni_26._arrow._first_c)
       (and (= Dynamics.__Dynamics_1 (ite Dynamics.ni_26._arrow._first_m true false))
            (= Dynamics.ni_26._arrow._first_x false))
       (and (or (not (= Dynamics.__Dynamics_1 true))
               (= Dynamics.p_3 0))
            (or (not (= Dynamics.__Dynamics_1 false))
               (and (or (not (= (not Dynamics.flow_3) true))
                       (= Dynamics.p_3 0))
                    (or (not (= (not Dynamics.flow_3) false))
                       (= Dynamics.p_3 15))
               ))
       )
       (and (or (not (= Dynamics.__Dynamics_1 true))
               (= Dynamics.p_2 0))
            (or (not (= Dynamics.__Dynamics_1 false))
               (and (or (not (= (not Dynamics.flow_2) true))
                       (= Dynamics.p_2 0))
                    (or (not (= (not Dynamics.flow_2) false))
                       (= Dynamics.p_2 15))
               ))
       )
       (and (or (not (= Dynamics.__Dynamics_1 true))
               (= Dynamics.p_1 0))
            (or (not (= Dynamics.__Dynamics_1 false))
               (and (or (not (= (not Dynamics.flow_1) true))
                       (= Dynamics.p_1 0))
                    (or (not (= (not Dynamics.flow_1) false))
                       (= Dynamics.p_1 15))
               ))
       )
       (and (or (not (= Dynamics.__Dynamics_1 true))
               (= Dynamics.p_0 0))
            (or (not (= Dynamics.__Dynamics_1 false))
               (and (or (not (= (not Dynamics.flow_0) true))
                       (= Dynamics.p_0 0))
                    (or (not (= (not Dynamics.flow_0) false))
                       (= Dynamics.p_0 15))
               ))
       )
       (level_failure_fun Dynamics.level_defect
                          Dynamics.__Dynamics_9)
       (sum_fun Dynamics.p_0
                Dynamics.p_1
                Dynamics.p_2
                Dynamics.p_3
                Dynamics.__Dynamics_7)
       (and (or (not (= (= Dynamics.valve_state 1) true))
               (= Dynamics.__Dynamics_11 (* 10 5)))
            (or (not (= (= Dynamics.valve_state 1) false))
               (= Dynamics.__Dynamics_11 0))
       )
       (and (or (not (= Dynamics.__Dynamics_1 true))
               (= Dynamics.q Dynamics.level))
            (or (not (= Dynamics.__Dynamics_1 false))
               (and (or (not (= Dynamics.__Dynamics_9 true))
                       (= Dynamics.q (- (+ (- (- Dynamics.__Dynamics_8_c 1) (* Dynamics.steam 5)) (* Dynamics.__Dynamics_7 5)) Dynamics.__Dynamics_11)))
                    (or (not (= Dynamics.__Dynamics_9 false))
                       (= Dynamics.q Dynamics.level))
               ))
       )
       (steam_failure_fun Dynamics.steam_defect
                          Dynamics.__Dynamics_6)
       (and (or (not (= Dynamics.__Dynamics_1 true))
               (= Dynamics.v Dynamics.steam))
            (or (not (= Dynamics.__Dynamics_1 false))
               (and (or (not (= Dynamics.__Dynamics_6 true))
                       (= Dynamics.v (+ (div (- Dynamics.__Dynamics_8_c Dynamics.q) 5) (* Dynamics.__Dynamics_7 5))))
                    (or (not (= Dynamics.__Dynamics_6 false))
                       (= Dynamics.v Dynamics.steam))
               ))
       )
       (= Dynamics.__Dynamics_8_x Dynamics.q)
       )
  (Dynamics_step Dynamics.valve_state
                 Dynamics.level
                 Dynamics.steam
                 Dynamics.level_defect
                 Dynamics.steam_defect
                 Dynamics.flow_0
                 Dynamics.flow_1
                 Dynamics.flow_2
                 Dynamics.flow_3
                 Dynamics.q
                 Dynamics.v
                 Dynamics.p_0
                 Dynamics.p_1
                 Dynamics.p_2
                 Dynamics.p_3
                 Dynamics.__Dynamics_8_c
                 Dynamics.ni_26._arrow._first_c
                 Dynamics.__Dynamics_8_x
                 Dynamics.ni_26._arrow._first_x)
))

; LevelDefect
(declare-var LevelDefect.level_failure_acknowledgement Bool)
(declare-var LevelDefect.level_repaired Bool)
(declare-var LevelDefect.level Int)
(declare-var LevelDefect.LevelDefect Int)
(declare-var LevelDefect.__LevelDefect_3_c Int)
(declare-var LevelDefect.ni_25._arrow._first_c Bool)
(declare-var LevelDefect.__LevelDefect_3_m Int)
(declare-var LevelDefect.ni_25._arrow._first_m Bool)
(declare-var LevelDefect.__LevelDefect_3_x Int)
(declare-var LevelDefect.ni_25._arrow._first_x Bool)
(declare-var LevelDefect.__LevelDefect_1 Bool)
(declare-var LevelDefect.__LevelDefect_2 Bool)
(declare-var LevelDefect.__LevelDefect_4 Int)
(declare-rel LevelDefect_reset (Int Bool Int Bool))
(declare-rel LevelDefect_step (Bool Bool Int Int Int Bool Int Bool))

(rule (=> 
  (and 
       (= LevelDefect.__LevelDefect_3_m LevelDefect.__LevelDefect_3_c)
       (= LevelDefect.ni_25._arrow._first_m true)
  )
  (LevelDefect_reset LevelDefect.__LevelDefect_3_c
                     LevelDefect.ni_25._arrow._first_c
                     LevelDefect.__LevelDefect_3_m
                     LevelDefect.ni_25._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (level_failure_detect_fun LevelDefect.level
                                 LevelDefect.__LevelDefect_2)
       (Defect_fun LevelDefect.__LevelDefect_3_c
                   LevelDefect.__LevelDefect_2
                   LevelDefect.level_failure_acknowledgement
                   LevelDefect.level_repaired
                   LevelDefect.__LevelDefect_4)
       (= LevelDefect.ni_25._arrow._first_m LevelDefect.ni_25._arrow._first_c)
       (and (= LevelDefect.__LevelDefect_1 (ite LevelDefect.ni_25._arrow._first_m true false))
            (= LevelDefect.ni_25._arrow._first_x false))
       (and (or (not (= LevelDefect.__LevelDefect_1 true))
               (= LevelDefect.LevelDefect 0))
            (or (not (= LevelDefect.__LevelDefect_1 false))
               (= LevelDefect.LevelDefect LevelDefect.__LevelDefect_4))
       )
       (= LevelDefect.__LevelDefect_3_x LevelDefect.LevelDefect)
       )
  (LevelDefect_step LevelDefect.level_failure_acknowledgement
                    LevelDefect.level_repaired
                    LevelDefect.level
                    LevelDefect.LevelDefect
                    LevelDefect.__LevelDefect_3_c
                    LevelDefect.ni_25._arrow._first_c
                    LevelDefect.__LevelDefect_3_x
                    LevelDefect.ni_25._arrow._first_x)
))

; LevelOutput
(declare-var LevelOutput.op_mode Int)
(declare-var LevelOutput.level_defect Int)
(declare-var LevelOutput.level_repaired Bool)
(declare-var LevelOutput.level_outcome_failure_detection Bool)
(declare-var LevelOutput.level_outcome_repaired_acknowledgement Bool)
(declare-rel LevelOutput_fun (Int Int Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (and (= LevelOutput.level_outcome_repaired_acknowledgement (and (not (or (= LevelOutput.op_mode 6) (= LevelOutput.op_mode 1))) LevelOutput.level_repaired))
       (= LevelOutput.level_outcome_failure_detection (and (not (or (= LevelOutput.op_mode 6) (= LevelOutput.op_mode 1))) (= LevelOutput.level_defect 1)))
       )
  (LevelOutput_fun LevelOutput.op_mode LevelOutput.level_defect LevelOutput.level_repaired LevelOutput.level_outcome_failure_detection LevelOutput.level_outcome_repaired_acknowledgement)
))

; Operator
(declare-var Operator.stop Bool)
(declare-var Operator.stop_request Bool)
(declare-var Operator.__Operator_2_c Int)
(declare-var Operator.ni_24._arrow._first_c Bool)
(declare-var Operator.__Operator_2_m Int)
(declare-var Operator.ni_24._arrow._first_m Bool)
(declare-var Operator.__Operator_2_x Int)
(declare-var Operator.ni_24._arrow._first_x Bool)
(declare-var Operator.__Operator_1 Bool)
(declare-var Operator.nb_stops Int)
(declare-rel Operator_reset (Int Bool Int Bool))
(declare-rel Operator_step (Bool Bool Int Bool Int Bool))

(rule (=> 
  (and 
       (= Operator.__Operator_2_m Operator.__Operator_2_c)
       (= Operator.ni_24._arrow._first_m true)
  )
  (Operator_reset Operator.__Operator_2_c
                  Operator.ni_24._arrow._first_c
                  Operator.__Operator_2_m
                  Operator.ni_24._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Operator.ni_24._arrow._first_m Operator.ni_24._arrow._first_c)
       (and (= Operator.__Operator_1 (ite Operator.ni_24._arrow._first_m true false))
            (= Operator.ni_24._arrow._first_x false))
       (and (or (not (= Operator.__Operator_1 true))
               (and (or (not (= Operator.stop true))
                       (= Operator.nb_stops 1))
                    (or (not (= Operator.stop false))
                       (= Operator.nb_stops 0))
               ))
            (or (not (= Operator.__Operator_1 false))
               (and (or (not (= Operator.stop true))
                       (= Operator.nb_stops (+ Operator.__Operator_2_c 1)))
                    (or (not (= Operator.stop false))
                       (= Operator.nb_stops 0))
               ))
       )
       (= Operator.stop_request (>= Operator.nb_stops 3))
       (= Operator.__Operator_2_x Operator.nb_stops)
       )
  (Operator_step Operator.stop
                 Operator.stop_request
                 Operator.__Operator_2_c
                 Operator.ni_24._arrow._first_c
                 Operator.__Operator_2_x
                 Operator.ni_24._arrow._first_x)
))

; PumpDefect
(declare-var PumpDefect.pump_failure_acknowledgement Bool)
(declare-var PumpDefect.pump_repaired Bool)
(declare-var PumpDefect.pump_control_failure_acknowledgement Bool)
(declare-var PumpDefect.pump_control_repaired Bool)
(declare-var PumpDefect.pump_status Int)
(declare-var PumpDefect.pump_state Int)
(declare-var PumpDefect.pump_control_state Bool)
(declare-var PumpDefect.PumpDefect Int)
(declare-var PumpDefect.PumpControlDefect Int)
(declare-var PumpDefect.Flow Bool)
(declare-var PumpDefect.__PumpDefect_2_c Int)
(declare-var PumpDefect.__PumpDefect_4_c Int)
(declare-var PumpDefect.ni_23._arrow._first_c Bool)
(declare-var PumpDefect.__PumpDefect_2_m Int)
(declare-var PumpDefect.__PumpDefect_4_m Int)
(declare-var PumpDefect.ni_23._arrow._first_m Bool)
(declare-var PumpDefect.__PumpDefect_2_x Int)
(declare-var PumpDefect.__PumpDefect_4_x Int)
(declare-var PumpDefect.ni_23._arrow._first_x Bool)
(declare-var PumpDefect.__PumpDefect_1 Bool)
(declare-var PumpDefect.__PumpDefect_3 Int)
(declare-var PumpDefect.__PumpDefect_5 Int)
(declare-var PumpDefect.pump_control_failure_d Bool)
(declare-var PumpDefect.pump_failure_d Bool)
(declare-rel PumpDefect_reset (Int Int Bool Int Int Bool))
(declare-rel PumpDefect_step (Bool Bool Bool Bool Int Int Bool Int Int Bool Int Int Bool Int Int Bool))

(rule (=> 
  (and 
       (= PumpDefect.__PumpDefect_2_m PumpDefect.__PumpDefect_2_c)
       (= PumpDefect.__PumpDefect_4_m PumpDefect.__PumpDefect_4_c)
       (= PumpDefect.ni_23._arrow._first_m true)
  )
  (PumpDefect_reset PumpDefect.__PumpDefect_2_c
                    PumpDefect.__PumpDefect_4_c
                    PumpDefect.ni_23._arrow._first_c
                    PumpDefect.__PumpDefect_2_m
                    PumpDefect.__PumpDefect_4_m
                    PumpDefect.ni_23._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (pump_failure_detect_fun PumpDefect.pump_status
                                PumpDefect.pump_state
                                PumpDefect.pump_control_state
                                PumpDefect.pump_failure_d
                                PumpDefect.pump_control_failure_d
                                PumpDefect.Flow)
       (Defect_fun PumpDefect.__PumpDefect_4_c
                   PumpDefect.pump_failure_d
                   PumpDefect.pump_failure_acknowledgement
                   PumpDefect.pump_repaired
                   PumpDefect.__PumpDefect_5)
       (= PumpDefect.ni_23._arrow._first_m PumpDefect.ni_23._arrow._first_c)
       (and (= PumpDefect.__PumpDefect_1 (ite PumpDefect.ni_23._arrow._first_m true false))
            (= PumpDefect.ni_23._arrow._first_x false))
       (and (or (not (= PumpDefect.__PumpDefect_1 true))
               (= PumpDefect.PumpDefect 0))
            (or (not (= PumpDefect.__PumpDefect_1 false))
               (= PumpDefect.PumpDefect PumpDefect.__PumpDefect_5))
       )
       (= PumpDefect.__PumpDefect_4_x PumpDefect.PumpDefect)
       (Defect_fun PumpDefect.__PumpDefect_2_c
                   PumpDefect.pump_control_failure_d
                   PumpDefect.pump_control_failure_acknowledgement
                   PumpDefect.pump_control_repaired
                   PumpDefect.__PumpDefect_3)
       (and (or (not (= PumpDefect.__PumpDefect_1 true))
               (= PumpDefect.PumpControlDefect 0))
            (or (not (= PumpDefect.__PumpDefect_1 false))
               (= PumpDefect.PumpControlDefect PumpDefect.__PumpDefect_3))
       )
       (= PumpDefect.__PumpDefect_2_x PumpDefect.PumpControlDefect)
       )
  (PumpDefect_step PumpDefect.pump_failure_acknowledgement
                   PumpDefect.pump_repaired
                   PumpDefect.pump_control_failure_acknowledgement
                   PumpDefect.pump_control_repaired
                   PumpDefect.pump_status
                   PumpDefect.pump_state
                   PumpDefect.pump_control_state
                   PumpDefect.PumpDefect
                   PumpDefect.PumpControlDefect
                   PumpDefect.Flow
                   PumpDefect.__PumpDefect_2_c
                   PumpDefect.__PumpDefect_4_c
                   PumpDefect.ni_23._arrow._first_c
                   PumpDefect.__PumpDefect_2_x
                   PumpDefect.__PumpDefect_4_x
                   PumpDefect.ni_23._arrow._first_x)
))

; PumpsDecision
(declare-var PumpsDecision.q Int)
(declare-var PumpsDecision.v Int)
(declare-var PumpsDecision.n_pumps Int)
(declare-var PumpsDecision.__PumpsDecision_3_c Int)
(declare-var PumpsDecision.__PumpsDecision_3_m Int)
(declare-var PumpsDecision.__PumpsDecision_3_x Int)
(declare-rel PumpsDecision_reset (Int Int))
(declare-rel PumpsDecision_step (Int Int Int Int Int))

(rule (=> 
  (and 
       (= PumpsDecision.__PumpsDecision_3_m PumpsDecision.__PumpsDecision_3_c)
       
  )
  (PumpsDecision_reset PumpsDecision.__PumpsDecision_3_c
                       PumpsDecision.__PumpsDecision_3_m)
))

; Step rule 
(rule (=> 
  (and (and (or (not (= (> PumpsDecision.q 600) true))
               (= PumpsDecision.n_pumps (div PumpsDecision.v 15)))
            (or (not (= (> PumpsDecision.q 600) false))
               (and (or (not (= (< PumpsDecision.q 400) true))
                       (= PumpsDecision.n_pumps (+ (div PumpsDecision.v 15) 1)))
                    (or (not (= (< PumpsDecision.q 400) false))
                       (= PumpsDecision.n_pumps PumpsDecision.__PumpsDecision_3_c))
               ))
       )
       (= PumpsDecision.__PumpsDecision_3_x PumpsDecision.n_pumps)
       )
  (PumpsDecision_step PumpsDecision.q
                      PumpsDecision.v
                      PumpsDecision.n_pumps
                      PumpsDecision.__PumpsDecision_3_c
                      PumpsDecision.__PumpsDecision_3_x)
))

; PumpsOutput
(declare-var PumpsOutput.op_mode Int)
(declare-var PumpsOutput.pump_status_0 Int)
(declare-var PumpsOutput.pump_status_1 Int)
(declare-var PumpsOutput.pump_status_2 Int)
(declare-var PumpsOutput.pump_status_3 Int)
(declare-var PumpsOutput.pump_defect_0 Int)
(declare-var PumpsOutput.pump_defect_1 Int)
(declare-var PumpsOutput.pump_defect_2 Int)
(declare-var PumpsOutput.pump_defect_3 Int)
(declare-var PumpsOutput.pump_control_defect_0 Int)
(declare-var PumpsOutput.pump_control_defect_1 Int)
(declare-var PumpsOutput.pump_control_defect_2 Int)
(declare-var PumpsOutput.pump_control_defect_3 Int)
(declare-var PumpsOutput.pump_repaired_0 Bool)
(declare-var PumpsOutput.pump_repaired_1 Bool)
(declare-var PumpsOutput.pump_repaired_2 Bool)
(declare-var PumpsOutput.pump_repaired_3 Bool)
(declare-var PumpsOutput.pump_control_repaired_0 Bool)
(declare-var PumpsOutput.pump_control_repaired_1 Bool)
(declare-var PumpsOutput.pump_control_repaired_2 Bool)
(declare-var PumpsOutput.pump_control_repaired_3 Bool)
(declare-var PumpsOutput.open_pump_0 Bool)
(declare-var PumpsOutput.open_pump_1 Bool)
(declare-var PumpsOutput.open_pump_2 Bool)
(declare-var PumpsOutput.open_pump_3 Bool)
(declare-var PumpsOutput.close_pump_0 Bool)
(declare-var PumpsOutput.close_pump_1 Bool)
(declare-var PumpsOutput.close_pump_2 Bool)
(declare-var PumpsOutput.close_pump_3 Bool)
(declare-var PumpsOutput.pump_failure_detection_0 Bool)
(declare-var PumpsOutput.pump_failure_detection_1 Bool)
(declare-var PumpsOutput.pump_failure_detection_2 Bool)
(declare-var PumpsOutput.pump_failure_detection_3 Bool)
(declare-var PumpsOutput.pump_repaired_acknowledgement_0 Bool)
(declare-var PumpsOutput.pump_repaired_acknowledgement_1 Bool)
(declare-var PumpsOutput.pump_repaired_acknowledgement_2 Bool)
(declare-var PumpsOutput.pump_repaired_acknowledgement_3 Bool)
(declare-var PumpsOutput.pump_control_failure_detection_0 Bool)
(declare-var PumpsOutput.pump_control_failure_detection_1 Bool)
(declare-var PumpsOutput.pump_control_failure_detection_2 Bool)
(declare-var PumpsOutput.pump_control_failure_detection_3 Bool)
(declare-var PumpsOutput.pump_control_repaired_acknowledgement_0 Bool)
(declare-var PumpsOutput.pump_control_repaired_acknowledgement_1 Bool)
(declare-var PumpsOutput.pump_control_repaired_acknowledgement_2 Bool)
(declare-var PumpsOutput.pump_control_repaired_acknowledgement_3 Bool)
(declare-var PumpsOutput.__PumpsOutput_1_c Int)
(declare-var PumpsOutput.__PumpsOutput_2_c Int)
(declare-var PumpsOutput.__PumpsOutput_3_c Int)
(declare-var PumpsOutput.__PumpsOutput_4_c Int)
(declare-var PumpsOutput.__PumpsOutput_5_c Int)
(declare-var PumpsOutput.__PumpsOutput_6_c Int)
(declare-var PumpsOutput.__PumpsOutput_7_c Int)
(declare-var PumpsOutput.__PumpsOutput_8_c Int)
(declare-var PumpsOutput.__PumpsOutput_1_m Int)
(declare-var PumpsOutput.__PumpsOutput_2_m Int)
(declare-var PumpsOutput.__PumpsOutput_3_m Int)
(declare-var PumpsOutput.__PumpsOutput_4_m Int)
(declare-var PumpsOutput.__PumpsOutput_5_m Int)
(declare-var PumpsOutput.__PumpsOutput_6_m Int)
(declare-var PumpsOutput.__PumpsOutput_7_m Int)
(declare-var PumpsOutput.__PumpsOutput_8_m Int)
(declare-var PumpsOutput.__PumpsOutput_1_x Int)
(declare-var PumpsOutput.__PumpsOutput_2_x Int)
(declare-var PumpsOutput.__PumpsOutput_3_x Int)
(declare-var PumpsOutput.__PumpsOutput_4_x Int)
(declare-var PumpsOutput.__PumpsOutput_5_x Int)
(declare-var PumpsOutput.__PumpsOutput_6_x Int)
(declare-var PumpsOutput.__PumpsOutput_7_x Int)
(declare-var PumpsOutput.__PumpsOutput_8_x Int)
(declare-rel PumpsOutput_reset (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int))
(declare-rel PumpsOutput_step (Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int))

(rule (=> 
  (and 
       (= PumpsOutput.__PumpsOutput_1_m PumpsOutput.__PumpsOutput_1_c)
       (= PumpsOutput.__PumpsOutput_2_m PumpsOutput.__PumpsOutput_2_c)
       (= PumpsOutput.__PumpsOutput_3_m PumpsOutput.__PumpsOutput_3_c)
       (= PumpsOutput.__PumpsOutput_4_m PumpsOutput.__PumpsOutput_4_c)
       (= PumpsOutput.__PumpsOutput_5_m PumpsOutput.__PumpsOutput_5_c)
       (= PumpsOutput.__PumpsOutput_6_m PumpsOutput.__PumpsOutput_6_c)
       (= PumpsOutput.__PumpsOutput_7_m PumpsOutput.__PumpsOutput_7_c)
       (= PumpsOutput.__PumpsOutput_8_m PumpsOutput.__PumpsOutput_8_c)
       
  )
  (PumpsOutput_reset PumpsOutput.__PumpsOutput_1_c
                     PumpsOutput.__PumpsOutput_2_c
                     PumpsOutput.__PumpsOutput_3_c
                     PumpsOutput.__PumpsOutput_4_c
                     PumpsOutput.__PumpsOutput_5_c
                     PumpsOutput.__PumpsOutput_6_c
                     PumpsOutput.__PumpsOutput_7_c
                     PumpsOutput.__PumpsOutput_8_c
                     PumpsOutput.__PumpsOutput_1_m
                     PumpsOutput.__PumpsOutput_2_m
                     PumpsOutput.__PumpsOutput_3_m
                     PumpsOutput.__PumpsOutput_4_m
                     PumpsOutput.__PumpsOutput_5_m
                     PumpsOutput.__PumpsOutput_6_m
                     PumpsOutput.__PumpsOutput_7_m
                     PumpsOutput.__PumpsOutput_8_m)
))

; Step rule 
(rule (=> 
  (and (= PumpsOutput.pump_repaired_acknowledgement_3 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) PumpsOutput.pump_repaired_3))
       (= PumpsOutput.pump_repaired_acknowledgement_2 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) PumpsOutput.pump_repaired_2))
       (= PumpsOutput.pump_repaired_acknowledgement_1 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) PumpsOutput.pump_repaired_1))
       (= PumpsOutput.pump_repaired_acknowledgement_0 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) PumpsOutput.pump_repaired_0))
       (= PumpsOutput.pump_failure_detection_3 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_defect_3 1)))
       (= PumpsOutput.pump_failure_detection_2 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_defect_2 1)))
       (= PumpsOutput.pump_failure_detection_1 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_defect_1 1)))
       (= PumpsOutput.pump_failure_detection_0 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_defect_0 1)))
       (= PumpsOutput.pump_control_repaired_acknowledgement_3 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) PumpsOutput.pump_control_repaired_3))
       (= PumpsOutput.pump_control_repaired_acknowledgement_2 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) PumpsOutput.pump_control_repaired_2))
       (= PumpsOutput.pump_control_repaired_acknowledgement_1 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) PumpsOutput.pump_control_repaired_1))
       (= PumpsOutput.pump_control_repaired_acknowledgement_0 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) PumpsOutput.pump_control_repaired_0))
       (= PumpsOutput.pump_control_failure_detection_3 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_control_defect_3 1)))
       (= PumpsOutput.pump_control_failure_detection_2 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_control_defect_2 1)))
       (= PumpsOutput.pump_control_failure_detection_1 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_control_defect_1 1)))
       (= PumpsOutput.pump_control_failure_detection_0 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_control_defect_0 1)))
       (= PumpsOutput.open_pump_3 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_status_3 2)))
       (= PumpsOutput.open_pump_2 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_status_2 2)))
       (= PumpsOutput.open_pump_1 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_status_1 2)))
       (= PumpsOutput.open_pump_0 (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_status_0 2)))
       (= PumpsOutput.close_pump_3 (and (and (and (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_status_0 0)) (not (= PumpsOutput.__PumpsOutput_2_c 0))) (= PumpsOutput.pump_defect_0 0)) (= PumpsOutput.__PumpsOutput_1_c 0)))
       (= PumpsOutput.close_pump_2 (and (and (and (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_status_0 0)) (not (= PumpsOutput.__PumpsOutput_4_c 0))) (= PumpsOutput.pump_defect_0 0)) (= PumpsOutput.__PumpsOutput_3_c 0)))
       (= PumpsOutput.close_pump_1 (and (and (and (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_status_0 0)) (not (= PumpsOutput.__PumpsOutput_6_c 0))) (= PumpsOutput.pump_defect_0 0)) (= PumpsOutput.__PumpsOutput_5_c 0)))
       (= PumpsOutput.close_pump_0 (and (and (and (and (and (not (= PumpsOutput.op_mode 6)) (not (= PumpsOutput.op_mode 1))) (= PumpsOutput.pump_status_0 0)) (not (= PumpsOutput.__PumpsOutput_8_c 0))) (= PumpsOutput.pump_defect_0 0)) (= PumpsOutput.__PumpsOutput_7_c 0)))
       (= PumpsOutput.__PumpsOutput_8_x PumpsOutput.pump_status_0)
       (= PumpsOutput.__PumpsOutput_7_x PumpsOutput.pump_defect_0)
       (= PumpsOutput.__PumpsOutput_6_x PumpsOutput.pump_status_1)
       (= PumpsOutput.__PumpsOutput_5_x PumpsOutput.pump_defect_1)
       (= PumpsOutput.__PumpsOutput_4_x PumpsOutput.pump_status_2)
       (= PumpsOutput.__PumpsOutput_3_x PumpsOutput.pump_defect_2)
       (= PumpsOutput.__PumpsOutput_2_x PumpsOutput.pump_status_3)
       (= PumpsOutput.__PumpsOutput_1_x PumpsOutput.pump_defect_3)
       )
  (PumpsOutput_step PumpsOutput.op_mode
                    PumpsOutput.pump_status_0
                    PumpsOutput.pump_status_1
                    PumpsOutput.pump_status_2
                    PumpsOutput.pump_status_3
                    PumpsOutput.pump_defect_0
                    PumpsOutput.pump_defect_1
                    PumpsOutput.pump_defect_2
                    PumpsOutput.pump_defect_3
                    PumpsOutput.pump_control_defect_0
                    PumpsOutput.pump_control_defect_1
                    PumpsOutput.pump_control_defect_2
                    PumpsOutput.pump_control_defect_3
                    PumpsOutput.pump_repaired_0
                    PumpsOutput.pump_repaired_1
                    PumpsOutput.pump_repaired_2
                    PumpsOutput.pump_repaired_3
                    PumpsOutput.pump_control_repaired_0
                    PumpsOutput.pump_control_repaired_1
                    PumpsOutput.pump_control_repaired_2
                    PumpsOutput.pump_control_repaired_3
                    PumpsOutput.open_pump_0
                    PumpsOutput.open_pump_1
                    PumpsOutput.open_pump_2
                    PumpsOutput.open_pump_3
                    PumpsOutput.close_pump_0
                    PumpsOutput.close_pump_1
                    PumpsOutput.close_pump_2
                    PumpsOutput.close_pump_3
                    PumpsOutput.pump_failure_detection_0
                    PumpsOutput.pump_failure_detection_1
                    PumpsOutput.pump_failure_detection_2
                    PumpsOutput.pump_failure_detection_3
                    PumpsOutput.pump_repaired_acknowledgement_0
                    PumpsOutput.pump_repaired_acknowledgement_1
                    PumpsOutput.pump_repaired_acknowledgement_2
                    PumpsOutput.pump_repaired_acknowledgement_3
                    PumpsOutput.pump_control_failure_detection_0
                    PumpsOutput.pump_control_failure_detection_1
                    PumpsOutput.pump_control_failure_detection_2
                    PumpsOutput.pump_control_failure_detection_3
                    PumpsOutput.pump_control_repaired_acknowledgement_0
                    PumpsOutput.pump_control_repaired_acknowledgement_1
                    PumpsOutput.pump_control_repaired_acknowledgement_2
                    PumpsOutput.pump_control_repaired_acknowledgement_3
                    PumpsOutput.__PumpsOutput_1_c
                    PumpsOutput.__PumpsOutput_2_c
                    PumpsOutput.__PumpsOutput_3_c
                    PumpsOutput.__PumpsOutput_4_c
                    PumpsOutput.__PumpsOutput_5_c
                    PumpsOutput.__PumpsOutput_6_c
                    PumpsOutput.__PumpsOutput_7_c
                    PumpsOutput.__PumpsOutput_8_c
                    PumpsOutput.__PumpsOutput_1_x
                    PumpsOutput.__PumpsOutput_2_x
                    PumpsOutput.__PumpsOutput_3_x
                    PumpsOutput.__PumpsOutput_4_x
                    PumpsOutput.__PumpsOutput_5_x
                    PumpsOutput.__PumpsOutput_6_x
                    PumpsOutput.__PumpsOutput_7_x
                    PumpsOutput.__PumpsOutput_8_x)
))

; PumpsStatus
(declare-var PumpsStatus.n_pumps Int)
(declare-var PumpsStatus.pump_defect_0 Int)
(declare-var PumpsStatus.pump_defect_1 Int)
(declare-var PumpsStatus.pump_defect_2 Int)
(declare-var PumpsStatus.pump_defect_3 Int)
(declare-var PumpsStatus.flow_0 Bool)
(declare-var PumpsStatus.flow_1 Bool)
(declare-var PumpsStatus.flow_2 Bool)
(declare-var PumpsStatus.flow_3 Bool)
(declare-var PumpsStatus.pump_status_0 Int)
(declare-var PumpsStatus.pump_status_1 Int)
(declare-var PumpsStatus.pump_status_2 Int)
(declare-var PumpsStatus.pump_status_3 Int)
(declare-var PumpsStatus.__PumpsStatus_1_c Int)
(declare-var PumpsStatus.__PumpsStatus_2_c Int)
(declare-var PumpsStatus.__PumpsStatus_3_c Int)
(declare-var PumpsStatus.__PumpsStatus_4_c Int)
(declare-var PumpsStatus.ni_21._arrow._first_c Bool)
(declare-var PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_c Int)
(declare-var PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_c Int)
(declare-var PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_c Int)
(declare-var PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_c Int)
(declare-var PumpsStatus.__PumpsStatus_1_m Int)
(declare-var PumpsStatus.__PumpsStatus_2_m Int)
(declare-var PumpsStatus.__PumpsStatus_3_m Int)
(declare-var PumpsStatus.__PumpsStatus_4_m Int)
(declare-var PumpsStatus.ni_21._arrow._first_m Bool)
(declare-var PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_m Int)
(declare-var PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_m Int)
(declare-var PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_m Int)
(declare-var PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_m Int)
(declare-var PumpsStatus.__PumpsStatus_1_x Int)
(declare-var PumpsStatus.__PumpsStatus_2_x Int)
(declare-var PumpsStatus.__PumpsStatus_3_x Int)
(declare-var PumpsStatus.__PumpsStatus_4_x Int)
(declare-var PumpsStatus.ni_21._arrow._first_x Bool)
(declare-var PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_x Int)
(declare-var PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_x Int)
(declare-var PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_x Int)
(declare-var PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_x Int)
(declare-var PumpsStatus.__PumpsStatus_5 Bool)
(declare-var PumpsStatus.__PumpsStatus_6 Int)
(declare-var PumpsStatus.__PumpsStatus_7 Int)
(declare-var PumpsStatus.__PumpsStatus_8 Int)
(declare-var PumpsStatus.__PumpsStatus_9 Int)
(declare-var PumpsStatus.t0 Int)
(declare-var PumpsStatus.t1 Int)
(declare-var PumpsStatus.t2 Int)
(declare-var PumpsStatus.t3 Int)
(declare-rel PumpsStatus_reset (Int Int Int Int Bool Int Int Int Int Int Int Int Int Bool Int Int Int Int))
(declare-rel PumpsStatus_step (Int Int Int Int Int Bool Bool Bool Bool Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Bool Int Int Int Int))

(rule (=> 
  (and 
       (= PumpsStatus.__PumpsStatus_1_m PumpsStatus.__PumpsStatus_1_c)
       (= PumpsStatus.__PumpsStatus_2_m PumpsStatus.__PumpsStatus_2_c)
       (= PumpsStatus.__PumpsStatus_3_m PumpsStatus.__PumpsStatus_3_c)
       (= PumpsStatus.__PumpsStatus_4_m PumpsStatus.__PumpsStatus_4_c)
       (operate_pumps_reset PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_c
                            PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_c
                            PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_c
                            PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_c
                            PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_m
                            PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_m
                            PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_m
                            PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_m)
       (= PumpsStatus.ni_21._arrow._first_m true)
  )
  (PumpsStatus_reset PumpsStatus.__PumpsStatus_1_c
                     PumpsStatus.__PumpsStatus_2_c
                     PumpsStatus.__PumpsStatus_3_c
                     PumpsStatus.__PumpsStatus_4_c
                     PumpsStatus.ni_21._arrow._first_c
                     PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_c
                     PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_c
                     PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_c
                     PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_c
                     PumpsStatus.__PumpsStatus_1_m
                     PumpsStatus.__PumpsStatus_2_m
                     PumpsStatus.__PumpsStatus_3_m
                     PumpsStatus.__PumpsStatus_4_m
                     PumpsStatus.ni_21._arrow._first_m
                     PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_m
                     PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_m
                     PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_m
                     PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_m)
))

; Step rule 
(rule (=> 
  (and (and (or (not (= PumpsStatus.flow_0 true))
               (= PumpsStatus.__PumpsStatus_9 1))
            (or (not (= PumpsStatus.flow_0 false))
               (= PumpsStatus.__PumpsStatus_9 0))
       )
       (and (or (not (= PumpsStatus.flow_1 true))
               (= PumpsStatus.__PumpsStatus_8 1))
            (or (not (= PumpsStatus.flow_1 false))
               (= PumpsStatus.__PumpsStatus_8 0))
       )
       (and (or (not (= PumpsStatus.flow_2 true))
               (= PumpsStatus.__PumpsStatus_7 1))
            (or (not (= PumpsStatus.flow_2 false))
               (= PumpsStatus.__PumpsStatus_7 0))
       )
       (and (or (not (= PumpsStatus.flow_3 true))
               (= PumpsStatus.__PumpsStatus_6 1))
            (or (not (= PumpsStatus.flow_3 false))
               (= PumpsStatus.__PumpsStatus_6 0))
       )
       (and (= PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_m PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_c)
            (= PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_m PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_c)
            (= PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_m PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_c)
            (= PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_m PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_c)
            )
       (operate_pumps_step 4
                           (- PumpsStatus.n_pumps (+ (+ (+ PumpsStatus.__PumpsStatus_9 PumpsStatus.__PumpsStatus_8) PumpsStatus.__PumpsStatus_7) PumpsStatus.__PumpsStatus_6))
                           PumpsStatus.__PumpsStatus_4_c
                           PumpsStatus.__PumpsStatus_3_c
                           PumpsStatus.__PumpsStatus_2_c
                           PumpsStatus.__PumpsStatus_1_c
                           PumpsStatus.pump_defect_0
                           PumpsStatus.pump_defect_1
                           PumpsStatus.pump_defect_2
                           PumpsStatus.pump_defect_3
                           PumpsStatus.flow_0
                           PumpsStatus.flow_1
                           PumpsStatus.flow_2
                           PumpsStatus.flow_3
                           PumpsStatus.t0
                           PumpsStatus.t1
                           PumpsStatus.t2
                           PumpsStatus.t3
                           PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_m
                           PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_m
                           PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_m
                           PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_m
                           PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_x
                           PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_x
                           PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_x
                           PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_x)
       (= PumpsStatus.ni_21._arrow._first_m PumpsStatus.ni_21._arrow._first_c)
       (and (= PumpsStatus.__PumpsStatus_5 (ite PumpsStatus.ni_21._arrow._first_m true false))
            (= PumpsStatus.ni_21._arrow._first_x false))
       (and (or (not (= PumpsStatus.__PumpsStatus_5 false))
               (and (= PumpsStatus.pump_status_3 PumpsStatus.t3)
                    (= PumpsStatus.pump_status_2 PumpsStatus.t2)
                    (= PumpsStatus.pump_status_1 PumpsStatus.t1)
                    (= PumpsStatus.pump_status_0 PumpsStatus.t0)
                    ))
            (or (not (= PumpsStatus.__PumpsStatus_5 true))
               (and (= PumpsStatus.pump_status_3 0)
                    (= PumpsStatus.pump_status_2 0)
                    (= PumpsStatus.pump_status_1 0)
                    (= PumpsStatus.pump_status_0 0)
                    ))
       )
       (= PumpsStatus.__PumpsStatus_4_x PumpsStatus.pump_status_0)
       (= PumpsStatus.__PumpsStatus_3_x PumpsStatus.pump_status_1)
       (= PumpsStatus.__PumpsStatus_2_x PumpsStatus.pump_status_2)
       (= PumpsStatus.__PumpsStatus_1_x PumpsStatus.pump_status_3)
       )
  (PumpsStatus_step PumpsStatus.n_pumps
                    PumpsStatus.pump_defect_0
                    PumpsStatus.pump_defect_1
                    PumpsStatus.pump_defect_2
                    PumpsStatus.pump_defect_3
                    PumpsStatus.flow_0
                    PumpsStatus.flow_1
                    PumpsStatus.flow_2
                    PumpsStatus.flow_3
                    PumpsStatus.pump_status_0
                    PumpsStatus.pump_status_1
                    PumpsStatus.pump_status_2
                    PumpsStatus.pump_status_3
                    PumpsStatus.__PumpsStatus_1_c
                    PumpsStatus.__PumpsStatus_2_c
                    PumpsStatus.__PumpsStatus_3_c
                    PumpsStatus.__PumpsStatus_4_c
                    PumpsStatus.ni_21._arrow._first_c
                    PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_c
                    PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_c
                    PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_c
                    PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_c
                    PumpsStatus.__PumpsStatus_1_x
                    PumpsStatus.__PumpsStatus_2_x
                    PumpsStatus.__PumpsStatus_3_x
                    PumpsStatus.__PumpsStatus_4_x
                    PumpsStatus.ni_21._arrow._first_x
                    PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_x
                    PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_x
                    PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_x
                    PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_x)
))

; SteamDefect
(declare-var SteamDefect.steam_failure_acknowledgement Bool)
(declare-var SteamDefect.steam_repaired Bool)
(declare-var SteamDefect.steam Int)
(declare-var SteamDefect.SteamDefect Int)
(declare-var SteamDefect.__SteamDefect_3_c Int)
(declare-var SteamDefect.ni_20._arrow._first_c Bool)
(declare-var SteamDefect.__SteamDefect_3_m Int)
(declare-var SteamDefect.ni_20._arrow._first_m Bool)
(declare-var SteamDefect.__SteamDefect_3_x Int)
(declare-var SteamDefect.ni_20._arrow._first_x Bool)
(declare-var SteamDefect.__SteamDefect_1 Bool)
(declare-var SteamDefect.__SteamDefect_2 Bool)
(declare-var SteamDefect.__SteamDefect_4 Int)
(declare-rel SteamDefect_reset (Int Bool Int Bool))
(declare-rel SteamDefect_step (Bool Bool Int Int Int Bool Int Bool))

(rule (=> 
  (and 
       (= SteamDefect.__SteamDefect_3_m SteamDefect.__SteamDefect_3_c)
       (= SteamDefect.ni_20._arrow._first_m true)
  )
  (SteamDefect_reset SteamDefect.__SteamDefect_3_c
                     SteamDefect.ni_20._arrow._first_c
                     SteamDefect.__SteamDefect_3_m
                     SteamDefect.ni_20._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (steam_failure_detect_fun SteamDefect.steam
                                 SteamDefect.__SteamDefect_2)
       (Defect_fun SteamDefect.__SteamDefect_3_c
                   SteamDefect.__SteamDefect_2
                   SteamDefect.steam_failure_acknowledgement
                   SteamDefect.steam_repaired
                   SteamDefect.__SteamDefect_4)
       (= SteamDefect.ni_20._arrow._first_m SteamDefect.ni_20._arrow._first_c)
       (and (= SteamDefect.__SteamDefect_1 (ite SteamDefect.ni_20._arrow._first_m true false))
            (= SteamDefect.ni_20._arrow._first_x false))
       (and (or (not (= SteamDefect.__SteamDefect_1 true))
               (= SteamDefect.SteamDefect 0))
            (or (not (= SteamDefect.__SteamDefect_1 false))
               (= SteamDefect.SteamDefect SteamDefect.__SteamDefect_4))
       )
       (= SteamDefect.__SteamDefect_3_x SteamDefect.SteamDefect)
       )
  (SteamDefect_step SteamDefect.steam_failure_acknowledgement
                    SteamDefect.steam_repaired
                    SteamDefect.steam
                    SteamDefect.SteamDefect
                    SteamDefect.__SteamDefect_3_c
                    SteamDefect.ni_20._arrow._first_c
                    SteamDefect.__SteamDefect_3_x
                    SteamDefect.ni_20._arrow._first_x)
))

; SteamOutput
(declare-var SteamOutput.op_mode Int)
(declare-var SteamOutput.steam_defect Int)
(declare-var SteamOutput.steam_repaired Bool)
(declare-var SteamOutput.steam_outcome_failure_detection Bool)
(declare-var SteamOutput.steam_outcome_repaired_acknowledgement Bool)
(declare-rel SteamOutput_fun (Int Int Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (and (= SteamOutput.steam_outcome_repaired_acknowledgement (and (not (or (= SteamOutput.op_mode 6) (= SteamOutput.op_mode 1))) SteamOutput.steam_repaired))
       (= SteamOutput.steam_outcome_failure_detection (and (not (or (= SteamOutput.op_mode 6) (= SteamOutput.op_mode 1))) (= SteamOutput.steam_defect 1)))
       )
  (SteamOutput_fun SteamOutput.op_mode SteamOutput.steam_defect SteamOutput.steam_repaired SteamOutput.steam_outcome_failure_detection SteamOutput.steam_outcome_repaired_acknowledgement)
))

; Valve
(declare-var Valve.op_mode Int)
(declare-var Valve.q Int)
(declare-var Valve.valve Bool)
(declare-var Valve.valve_state Int)
(declare-var Valve.__Valve_2_c Int)
(declare-var Valve.ni_19._arrow._first_c Bool)
(declare-var Valve.__Valve_2_m Int)
(declare-var Valve.ni_19._arrow._first_m Bool)
(declare-var Valve.__Valve_2_x Int)
(declare-var Valve.ni_19._arrow._first_x Bool)
(declare-var Valve.__Valve_1 Bool)
(declare-rel Valve_reset (Int Bool Int Bool))
(declare-rel Valve_step (Int Int Bool Int Int Bool Int Bool))

(rule (=> 
  (and 
       (= Valve.__Valve_2_m Valve.__Valve_2_c)
       (= Valve.ni_19._arrow._first_m true)
  )
  (Valve_reset Valve.__Valve_2_c
               Valve.ni_19._arrow._first_c
               Valve.__Valve_2_m
               Valve.ni_19._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= Valve.ni_19._arrow._first_m Valve.ni_19._arrow._first_c)(and (= Valve.__Valve_1 (ite Valve.ni_19._arrow._first_m true false))
                                                                    (= Valve.ni_19._arrow._first_x false))
       (and (or (not (= Valve.__Valve_1 false))
               (and (and (or (not (= (= Valve.op_mode 2) true))
                            (and (or (not (= (> Valve.q 600) true))
                                    (= Valve.valve_state 1))
                                 (or (not (= (> Valve.q 600) false))
                                    (and (or (not (= (<= Valve.q 600) true))
                                            (= Valve.valve_state 0))
                                         (or (not (= (<= Valve.q 600) false))
                                            (= Valve.valve_state Valve.__Valve_2_c))
                                    ))
                            ))
                         (or (not (= (= Valve.op_mode 2) false))
                            (= Valve.valve_state Valve.__Valve_2_c))
                    )
                    (= Valve.valve (not (= Valve.valve_state Valve.__Valve_2_c)))
                    ))
            (or (not (= Valve.__Valve_1 true))
               (and (= Valve.valve_state 0)
                    (= Valve.valve false)
                    ))
       )
       (= Valve.__Valve_2_x Valve.valve_state)
       )
  (Valve_step Valve.op_mode
              Valve.q
              Valve.valve
              Valve.valve_state
              Valve.__Valve_2_c
              Valve.ni_19._arrow._first_c
              Valve.__Valve_2_x
              Valve.ni_19._arrow._first_x)
))

; Verification
(declare-var Verification.S1 Bool)
(declare-var Verification.S2 Bool)
(declare-var Verification.property_ok Bool)
(declare-var Verification.ni_16.FEDGE2.ni_28.REDGE.__REDGE_2_c Bool)
(declare-var Verification.ni_16.FEDGE2.ni_28.REDGE.ni_30._arrow._first_c Bool)
(declare-var Verification.ni_17.REDGE.__REDGE_2_c Bool)
(declare-var Verification.ni_17.REDGE.ni_30._arrow._first_c Bool)
(declare-var Verification.ni_18.FEDGE1.__FEDGE1_2_c Bool)
(declare-var Verification.ni_18.FEDGE1.ni_29._arrow._first_c Bool)
(declare-var Verification.ni_16.FEDGE2.ni_28.REDGE.__REDGE_2_m Bool)
(declare-var Verification.ni_16.FEDGE2.ni_28.REDGE.ni_30._arrow._first_m Bool)
(declare-var Verification.ni_17.REDGE.__REDGE_2_m Bool)
(declare-var Verification.ni_17.REDGE.ni_30._arrow._first_m Bool)
(declare-var Verification.ni_18.FEDGE1.__FEDGE1_2_m Bool)
(declare-var Verification.ni_18.FEDGE1.ni_29._arrow._first_m Bool)
(declare-var Verification.ni_16.FEDGE2.ni_28.REDGE.__REDGE_2_x Bool)
(declare-var Verification.ni_16.FEDGE2.ni_28.REDGE.ni_30._arrow._first_x Bool)
(declare-var Verification.ni_17.REDGE.__REDGE_2_x Bool)
(declare-var Verification.ni_17.REDGE.ni_30._arrow._first_x Bool)
(declare-var Verification.ni_18.FEDGE1.__FEDGE1_2_x Bool)
(declare-var Verification.ni_18.FEDGE1.ni_29._arrow._first_x Bool)
(declare-var Verification.__Verification_2 Bool)
(declare-var Verification.__Verification_3 Bool)
(declare-var Verification.__Verification_4 Bool)
(declare-rel Verification_reset (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))
(declare-rel Verification_step (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       
       (FEDGE1_reset Verification.ni_18.FEDGE1.__FEDGE1_2_c
                     Verification.ni_18.FEDGE1.ni_29._arrow._first_c
                     Verification.ni_18.FEDGE1.__FEDGE1_2_m
                     Verification.ni_18.FEDGE1.ni_29._arrow._first_m)
       (REDGE_reset Verification.ni_17.REDGE.__REDGE_2_c
                    Verification.ni_17.REDGE.ni_30._arrow._first_c
                    Verification.ni_17.REDGE.__REDGE_2_m
                    Verification.ni_17.REDGE.ni_30._arrow._first_m)
       (FEDGE2_reset Verification.ni_16.FEDGE2.ni_28.REDGE.__REDGE_2_c
                     Verification.ni_16.FEDGE2.ni_28.REDGE.ni_30._arrow._first_c
                     Verification.ni_16.FEDGE2.ni_28.REDGE.__REDGE_2_m
                     Verification.ni_16.FEDGE2.ni_28.REDGE.ni_30._arrow._first_m)
  )
  (Verification_reset Verification.ni_16.FEDGE2.ni_28.REDGE.__REDGE_2_c
                      Verification.ni_16.FEDGE2.ni_28.REDGE.ni_30._arrow._first_c
                      Verification.ni_17.REDGE.__REDGE_2_c
                      Verification.ni_17.REDGE.ni_30._arrow._first_c
                      Verification.ni_18.FEDGE1.__FEDGE1_2_c
                      Verification.ni_18.FEDGE1.ni_29._arrow._first_c
                      Verification.ni_16.FEDGE2.ni_28.REDGE.__REDGE_2_m
                      Verification.ni_16.FEDGE2.ni_28.REDGE.ni_30._arrow._first_m
                      Verification.ni_17.REDGE.__REDGE_2_m
                      Verification.ni_17.REDGE.ni_30._arrow._first_m
                      Verification.ni_18.FEDGE1.__FEDGE1_2_m
                      Verification.ni_18.FEDGE1.ni_29._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= Verification.ni_18.FEDGE1.__FEDGE1_2_m Verification.ni_18.FEDGE1.__FEDGE1_2_c)
            (= Verification.ni_18.FEDGE1.ni_29._arrow._first_m Verification.ni_18.FEDGE1.ni_29._arrow._first_c)
            )
       (FEDGE1_step Verification.S1
                    Verification.__Verification_3
                    Verification.ni_18.FEDGE1.__FEDGE1_2_m
                    Verification.ni_18.FEDGE1.ni_29._arrow._first_m
                    Verification.ni_18.FEDGE1.__FEDGE1_2_x
                    Verification.ni_18.FEDGE1.ni_29._arrow._first_x)
       (and (= Verification.ni_17.REDGE.__REDGE_2_m Verification.ni_17.REDGE.__REDGE_2_c)
            (= Verification.ni_17.REDGE.ni_30._arrow._first_m Verification.ni_17.REDGE.ni_30._arrow._first_c)
            )
       (REDGE_step Verification.S2
                   Verification.__Verification_2
                   Verification.ni_17.REDGE.__REDGE_2_m
                   Verification.ni_17.REDGE.ni_30._arrow._first_m
                   Verification.ni_17.REDGE.__REDGE_2_x
                   Verification.ni_17.REDGE.ni_30._arrow._first_x)
       (and (= Verification.ni_16.FEDGE2.ni_28.REDGE.__REDGE_2_m Verification.ni_16.FEDGE2.ni_28.REDGE.__REDGE_2_c)
            (= Verification.ni_16.FEDGE2.ni_28.REDGE.ni_30._arrow._first_m Verification.ni_16.FEDGE2.ni_28.REDGE.ni_30._arrow._first_c)
            )
       (FEDGE2_step Verification.S1
                    Verification.__Verification_4
                    Verification.ni_16.FEDGE2.ni_28.REDGE.__REDGE_2_m
                    Verification.ni_16.FEDGE2.ni_28.REDGE.ni_30._arrow._first_m
                    Verification.ni_16.FEDGE2.ni_28.REDGE.__REDGE_2_x
                    Verification.ni_16.FEDGE2.ni_28.REDGE.ni_30._arrow._first_x)
       (and (or (not (= (= Verification.S2 (not Verification.S1)) true))
               (= Verification.property_ok (and (= Verification.__Verification_3 Verification.__Verification_4) (= Verification.__Verification_3 Verification.__Verification_2))))
            (or (not (= (= Verification.S2 (not Verification.S1)) false))
               (= Verification.property_ok true))
       )
       )
  (Verification_step Verification.S1
                     Verification.S2
                     Verification.property_ok
                     Verification.ni_16.FEDGE2.ni_28.REDGE.__REDGE_2_c
                     Verification.ni_16.FEDGE2.ni_28.REDGE.ni_30._arrow._first_c
                     Verification.ni_17.REDGE.__REDGE_2_c
                     Verification.ni_17.REDGE.ni_30._arrow._first_c
                     Verification.ni_18.FEDGE1.__FEDGE1_2_c
                     Verification.ni_18.FEDGE1.ni_29._arrow._first_c
                     Verification.ni_16.FEDGE2.ni_28.REDGE.__REDGE_2_x
                     Verification.ni_16.FEDGE2.ni_28.REDGE.ni_30._arrow._first_x
                     Verification.ni_17.REDGE.__REDGE_2_x
                     Verification.ni_17.REDGE.ni_30._arrow._first_x
                     Verification.ni_18.FEDGE1.__FEDGE1_2_x
                     Verification.ni_18.FEDGE1.ni_29._arrow._first_x)
))

; BoilerController
(declare-var BoilerController.stop Bool)
(declare-var BoilerController.steam_boiler_waiting Bool)
(declare-var BoilerController.physical_units_ready Bool)
(declare-var BoilerController.level Int)
(declare-var BoilerController.steam Int)
(declare-var BoilerController.pump_state_0 Int)
(declare-var BoilerController.pump_state_1 Int)
(declare-var BoilerController.pump_state_2 Int)
(declare-var BoilerController.pump_state_3 Int)
(declare-var BoilerController.pump_control_state_0 Bool)
(declare-var BoilerController.pump_control_state_1 Bool)
(declare-var BoilerController.pump_control_state_2 Bool)
(declare-var BoilerController.pump_control_state_3 Bool)
(declare-var BoilerController.pump_repaired_0 Bool)
(declare-var BoilerController.pump_repaired_1 Bool)
(declare-var BoilerController.pump_repaired_2 Bool)
(declare-var BoilerController.pump_repaired_3 Bool)
(declare-var BoilerController.pump_control_repaired_0 Bool)
(declare-var BoilerController.pump_control_repaired_1 Bool)
(declare-var BoilerController.pump_control_repaired_2 Bool)
(declare-var BoilerController.pump_control_repaired_3 Bool)
(declare-var BoilerController.level_repaired Bool)
(declare-var BoilerController.steam_repaired Bool)
(declare-var BoilerController.pump_failure_acknowledgement_0 Bool)
(declare-var BoilerController.pump_failure_acknowledgement_1 Bool)
(declare-var BoilerController.pump_failure_acknowledgement_2 Bool)
(declare-var BoilerController.pump_failure_acknowledgement_3 Bool)
(declare-var BoilerController.pump_control_failure_acknowledgement_0 Bool)
(declare-var BoilerController.pump_control_failure_acknowledgement_1 Bool)
(declare-var BoilerController.pump_control_failure_acknowledgement_2 Bool)
(declare-var BoilerController.pump_control_failure_acknowledgement_3 Bool)
(declare-var BoilerController.level_failure_acknowledgement Bool)
(declare-var BoilerController.steam_failure_acknowledgement Bool)
(declare-var BoilerController.program_ready Bool)
(declare-var BoilerController.mode Int)
(declare-var BoilerController.valve Bool)
(declare-var BoilerController.open_pump_0 Bool)
(declare-var BoilerController.open_pump_1 Bool)
(declare-var BoilerController.open_pump_2 Bool)
(declare-var BoilerController.open_pump_3 Bool)
(declare-var BoilerController.close_pump_0 Bool)
(declare-var BoilerController.close_pump_1 Bool)
(declare-var BoilerController.close_pump_2 Bool)
(declare-var BoilerController.close_pump_3 Bool)
(declare-var BoilerController.pump_failure_detection_0 Bool)
(declare-var BoilerController.pump_failure_detection_1 Bool)
(declare-var BoilerController.pump_failure_detection_2 Bool)
(declare-var BoilerController.pump_failure_detection_3 Bool)
(declare-var BoilerController.pump_control_failure_detection_0 Bool)
(declare-var BoilerController.pump_control_failure_detection_1 Bool)
(declare-var BoilerController.pump_control_failure_detection_2 Bool)
(declare-var BoilerController.pump_control_failure_detection_3 Bool)
(declare-var BoilerController.level_failure_detection Bool)
(declare-var BoilerController.steam_outcome_failure_detection Bool)
(declare-var BoilerController.pump_repaired_acknowledgement_0 Bool)
(declare-var BoilerController.pump_repaired_acknowledgement_1 Bool)
(declare-var BoilerController.pump_repaired_acknowledgement_2 Bool)
(declare-var BoilerController.pump_repaired_acknowledgement_3 Bool)
(declare-var BoilerController.pump_control_repaired_acknowledgement_0 Bool)
(declare-var BoilerController.pump_control_repaired_acknowledgement_1 Bool)
(declare-var BoilerController.pump_control_repaired_acknowledgement_2 Bool)
(declare-var BoilerController.pump_control_repaired_acknowledgement_3 Bool)
(declare-var BoilerController.level_repaired_acknowledgement Bool)
(declare-var BoilerController.steam_outcome_repaired_acknowledgement Bool)
(declare-var BoilerController.__BoilerController_4_c Int)
(declare-var BoilerController.__BoilerController_5_c Int)
(declare-var BoilerController.__BoilerController_6_c Int)
(declare-var BoilerController.__BoilerController_7_c Int)
(declare-var BoilerController.__BoilerController_8_c Int)
(declare-var BoilerController.ni_10._arrow._first_c Bool)
(declare-var BoilerController.ni_11.SteamDefect.__SteamDefect_3_c Int)
(declare-var BoilerController.ni_11.SteamDefect.ni_20._arrow._first_c Bool)
(declare-var BoilerController.ni_12.PumpDefect.__PumpDefect_2_c Int)
(declare-var BoilerController.ni_12.PumpDefect.__PumpDefect_4_c Int)
(declare-var BoilerController.ni_12.PumpDefect.ni_23._arrow._first_c Bool)
(declare-var BoilerController.ni_13.PumpDefect.__PumpDefect_2_c Int)
(declare-var BoilerController.ni_13.PumpDefect.__PumpDefect_4_c Int)
(declare-var BoilerController.ni_13.PumpDefect.ni_23._arrow._first_c Bool)
(declare-var BoilerController.ni_14.PumpDefect.__PumpDefect_2_c Int)
(declare-var BoilerController.ni_14.PumpDefect.__PumpDefect_4_c Int)
(declare-var BoilerController.ni_14.PumpDefect.ni_23._arrow._first_c Bool)
(declare-var BoilerController.ni_15.PumpDefect.__PumpDefect_2_c Int)
(declare-var BoilerController.ni_15.PumpDefect.__PumpDefect_4_c Int)
(declare-var BoilerController.ni_15.PumpDefect.ni_23._arrow._first_c Bool)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_1_c Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_2_c Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_3_c Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_4_c Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_5_c Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_6_c Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_7_c Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_8_c Int)
(declare-var BoilerController.ni_3.PumpsStatus.__PumpsStatus_1_c Int)
(declare-var BoilerController.ni_3.PumpsStatus.__PumpsStatus_2_c Int)
(declare-var BoilerController.ni_3.PumpsStatus.__PumpsStatus_3_c Int)
(declare-var BoilerController.ni_3.PumpsStatus.__PumpsStatus_4_c Int)
(declare-var BoilerController.ni_3.PumpsStatus.ni_21._arrow._first_c Bool)
(declare-var BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_c Int)
(declare-var BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_c Int)
(declare-var BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_c Int)
(declare-var BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_c Int)
(declare-var BoilerController.ni_4.PumpsDecision.__PumpsDecision_3_c Int)
(declare-var BoilerController.ni_5.Valve.__Valve_2_c Int)
(declare-var BoilerController.ni_5.Valve.ni_19._arrow._first_c Bool)
(declare-var BoilerController.ni_6.ControlMode.__ControlMode_2_c Int)
(declare-var BoilerController.ni_6.ControlMode.ni_27._arrow._first_c Bool)
(declare-var BoilerController.ni_7.Operator.__Operator_2_c Int)
(declare-var BoilerController.ni_7.Operator.ni_24._arrow._first_c Bool)
(declare-var BoilerController.ni_8.Dynamics.__Dynamics_8_c Int)
(declare-var BoilerController.ni_8.Dynamics.ni_26._arrow._first_c Bool)
(declare-var BoilerController.ni_9.LevelDefect.__LevelDefect_3_c Int)
(declare-var BoilerController.ni_9.LevelDefect.ni_25._arrow._first_c Bool)
(declare-var BoilerController.__BoilerController_4_m Int)
(declare-var BoilerController.__BoilerController_5_m Int)
(declare-var BoilerController.__BoilerController_6_m Int)
(declare-var BoilerController.__BoilerController_7_m Int)
(declare-var BoilerController.__BoilerController_8_m Int)
(declare-var BoilerController.ni_10._arrow._first_m Bool)
(declare-var BoilerController.ni_11.SteamDefect.__SteamDefect_3_m Int)
(declare-var BoilerController.ni_11.SteamDefect.ni_20._arrow._first_m Bool)
(declare-var BoilerController.ni_12.PumpDefect.__PumpDefect_2_m Int)
(declare-var BoilerController.ni_12.PumpDefect.__PumpDefect_4_m Int)
(declare-var BoilerController.ni_12.PumpDefect.ni_23._arrow._first_m Bool)
(declare-var BoilerController.ni_13.PumpDefect.__PumpDefect_2_m Int)
(declare-var BoilerController.ni_13.PumpDefect.__PumpDefect_4_m Int)
(declare-var BoilerController.ni_13.PumpDefect.ni_23._arrow._first_m Bool)
(declare-var BoilerController.ni_14.PumpDefect.__PumpDefect_2_m Int)
(declare-var BoilerController.ni_14.PumpDefect.__PumpDefect_4_m Int)
(declare-var BoilerController.ni_14.PumpDefect.ni_23._arrow._first_m Bool)
(declare-var BoilerController.ni_15.PumpDefect.__PumpDefect_2_m Int)
(declare-var BoilerController.ni_15.PumpDefect.__PumpDefect_4_m Int)
(declare-var BoilerController.ni_15.PumpDefect.ni_23._arrow._first_m Bool)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_1_m Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_2_m Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_3_m Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_4_m Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_5_m Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_6_m Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_7_m Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_8_m Int)
(declare-var BoilerController.ni_3.PumpsStatus.__PumpsStatus_1_m Int)
(declare-var BoilerController.ni_3.PumpsStatus.__PumpsStatus_2_m Int)
(declare-var BoilerController.ni_3.PumpsStatus.__PumpsStatus_3_m Int)
(declare-var BoilerController.ni_3.PumpsStatus.__PumpsStatus_4_m Int)
(declare-var BoilerController.ni_3.PumpsStatus.ni_21._arrow._first_m Bool)
(declare-var BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_m Int)
(declare-var BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_m Int)
(declare-var BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_m Int)
(declare-var BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_m Int)
(declare-var BoilerController.ni_4.PumpsDecision.__PumpsDecision_3_m Int)
(declare-var BoilerController.ni_5.Valve.__Valve_2_m Int)
(declare-var BoilerController.ni_5.Valve.ni_19._arrow._first_m Bool)
(declare-var BoilerController.ni_6.ControlMode.__ControlMode_2_m Int)
(declare-var BoilerController.ni_6.ControlMode.ni_27._arrow._first_m Bool)
(declare-var BoilerController.ni_7.Operator.__Operator_2_m Int)
(declare-var BoilerController.ni_7.Operator.ni_24._arrow._first_m Bool)
(declare-var BoilerController.ni_8.Dynamics.__Dynamics_8_m Int)
(declare-var BoilerController.ni_8.Dynamics.ni_26._arrow._first_m Bool)
(declare-var BoilerController.ni_9.LevelDefect.__LevelDefect_3_m Int)
(declare-var BoilerController.ni_9.LevelDefect.ni_25._arrow._first_m Bool)
(declare-var BoilerController.__BoilerController_4_x Int)
(declare-var BoilerController.__BoilerController_5_x Int)
(declare-var BoilerController.__BoilerController_6_x Int)
(declare-var BoilerController.__BoilerController_7_x Int)
(declare-var BoilerController.__BoilerController_8_x Int)
(declare-var BoilerController.ni_10._arrow._first_x Bool)
(declare-var BoilerController.ni_11.SteamDefect.__SteamDefect_3_x Int)
(declare-var BoilerController.ni_11.SteamDefect.ni_20._arrow._first_x Bool)
(declare-var BoilerController.ni_12.PumpDefect.__PumpDefect_2_x Int)
(declare-var BoilerController.ni_12.PumpDefect.__PumpDefect_4_x Int)
(declare-var BoilerController.ni_12.PumpDefect.ni_23._arrow._first_x Bool)
(declare-var BoilerController.ni_13.PumpDefect.__PumpDefect_2_x Int)
(declare-var BoilerController.ni_13.PumpDefect.__PumpDefect_4_x Int)
(declare-var BoilerController.ni_13.PumpDefect.ni_23._arrow._first_x Bool)
(declare-var BoilerController.ni_14.PumpDefect.__PumpDefect_2_x Int)
(declare-var BoilerController.ni_14.PumpDefect.__PumpDefect_4_x Int)
(declare-var BoilerController.ni_14.PumpDefect.ni_23._arrow._first_x Bool)
(declare-var BoilerController.ni_15.PumpDefect.__PumpDefect_2_x Int)
(declare-var BoilerController.ni_15.PumpDefect.__PumpDefect_4_x Int)
(declare-var BoilerController.ni_15.PumpDefect.ni_23._arrow._first_x Bool)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_1_x Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_2_x Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_3_x Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_4_x Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_5_x Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_6_x Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_7_x Int)
(declare-var BoilerController.ni_2.PumpsOutput.__PumpsOutput_8_x Int)
(declare-var BoilerController.ni_3.PumpsStatus.__PumpsStatus_1_x Int)
(declare-var BoilerController.ni_3.PumpsStatus.__PumpsStatus_2_x Int)
(declare-var BoilerController.ni_3.PumpsStatus.__PumpsStatus_3_x Int)
(declare-var BoilerController.ni_3.PumpsStatus.__PumpsStatus_4_x Int)
(declare-var BoilerController.ni_3.PumpsStatus.ni_21._arrow._first_x Bool)
(declare-var BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_x Int)
(declare-var BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_x Int)
(declare-var BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_x Int)
(declare-var BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_x Int)
(declare-var BoilerController.ni_4.PumpsDecision.__PumpsDecision_3_x Int)
(declare-var BoilerController.ni_5.Valve.__Valve_2_x Int)
(declare-var BoilerController.ni_5.Valve.ni_19._arrow._first_x Bool)
(declare-var BoilerController.ni_6.ControlMode.__ControlMode_2_x Int)
(declare-var BoilerController.ni_6.ControlMode.ni_27._arrow._first_x Bool)
(declare-var BoilerController.ni_7.Operator.__Operator_2_x Int)
(declare-var BoilerController.ni_7.Operator.ni_24._arrow._first_x Bool)
(declare-var BoilerController.ni_8.Dynamics.__Dynamics_8_x Int)
(declare-var BoilerController.ni_8.Dynamics.ni_26._arrow._first_x Bool)
(declare-var BoilerController.ni_9.LevelDefect.__LevelDefect_3_x Int)
(declare-var BoilerController.ni_9.LevelDefect.ni_25._arrow._first_x Bool)
(declare-var BoilerController.__BoilerController_1 Bool)
(declare-var BoilerController.__BoilerController_10 Int)
(declare-var BoilerController.__BoilerController_2 Int)
(declare-var BoilerController.__BoilerController_3 Int)
(declare-var BoilerController.__BoilerController_9 Int)
(declare-var BoilerController.a1 Bool)
(declare-var BoilerController.a10 Bool)
(declare-var BoilerController.a11 Bool)
(declare-var BoilerController.a12 Bool)
(declare-var BoilerController.a13 Bool)
(declare-var BoilerController.a14 Bool)
(declare-var BoilerController.a15 Bool)
(declare-var BoilerController.a16 Bool)
(declare-var BoilerController.a17 Bool)
(declare-var BoilerController.a18 Bool)
(declare-var BoilerController.a19 Bool)
(declare-var BoilerController.a2 Bool)
(declare-var BoilerController.a20 Bool)
(declare-var BoilerController.a21 Bool)
(declare-var BoilerController.a22 Bool)
(declare-var BoilerController.a23 Bool)
(declare-var BoilerController.a24 Bool)
(declare-var BoilerController.a3 Bool)
(declare-var BoilerController.a4 Bool)
(declare-var BoilerController.a5 Bool)
(declare-var BoilerController.a6 Bool)
(declare-var BoilerController.a7 Bool)
(declare-var BoilerController.a8 Bool)
(declare-var BoilerController.a9 Bool)
(declare-var BoilerController.b0 Bool)
(declare-var BoilerController.b1 Bool)
(declare-var BoilerController.b2 Bool)
(declare-var BoilerController.b3 Bool)
(declare-var BoilerController.flow_0 Bool)
(declare-var BoilerController.flow_1 Bool)
(declare-var BoilerController.flow_2 Bool)
(declare-var BoilerController.flow_3 Bool)
(declare-var BoilerController.level_defect Int)
(declare-var BoilerController.n_pumps Int)
(declare-var BoilerController.op_mode Int)
(declare-var BoilerController.p_0 Int)
(declare-var BoilerController.p_1 Int)
(declare-var BoilerController.p_2 Int)
(declare-var BoilerController.p_3 Int)
(declare-var BoilerController.pump_control_defect_0 Int)
(declare-var BoilerController.pump_control_defect_1 Int)
(declare-var BoilerController.pump_control_defect_2 Int)
(declare-var BoilerController.pump_control_defect_3 Int)
(declare-var BoilerController.pump_defect_0 Int)
(declare-var BoilerController.pump_defect_1 Int)
(declare-var BoilerController.pump_defect_2 Int)
(declare-var BoilerController.pump_defect_3 Int)
(declare-var BoilerController.pump_status_0 Int)
(declare-var BoilerController.pump_status_1 Int)
(declare-var BoilerController.pump_status_2 Int)
(declare-var BoilerController.pump_status_3 Int)
(declare-var BoilerController.q Int)
(declare-var BoilerController.steam_defect Int)
(declare-var BoilerController.stop_request Bool)
(declare-var BoilerController.t00 Int)
(declare-var BoilerController.t01 Int)
(declare-var BoilerController.t02 Bool)
(declare-var BoilerController.t10 Int)
(declare-var BoilerController.t11 Int)
(declare-var BoilerController.t12 Bool)
(declare-var BoilerController.t20 Int)
(declare-var BoilerController.t21 Int)
(declare-var BoilerController.t22 Bool)
(declare-var BoilerController.t30 Int)
(declare-var BoilerController.t31 Int)
(declare-var BoilerController.t32 Bool)
(declare-var BoilerController.t4 Int)
(declare-var BoilerController.t5 Int)
(declare-var BoilerController.t6 Int)
(declare-var BoilerController.t7 Int)
(declare-var BoilerController.t8 Int)
(declare-var BoilerController.t9 Int)
(declare-var BoilerController.u0 Int)
(declare-var BoilerController.u1 Int)
(declare-var BoilerController.u2 Int)
(declare-var BoilerController.u3 Int)
(declare-var BoilerController.u4 Bool)
(declare-var BoilerController.u5 Int)
(declare-var BoilerController.u6 Bool)
(declare-var BoilerController.u7 Int)
(declare-var BoilerController.v Int)
(declare-var BoilerController.valve_state Int)
(declare-rel BoilerController_reset (Int Int Int Int Int Bool Int Bool Int Int Bool Int Int Bool Int Int Bool Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Bool Int Bool Int Bool Int Bool Int Bool Int Int Int Int Int Bool Int Bool Int Int Bool Int Int Bool Int Int Bool Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Bool Int Bool Int Bool Int Bool Int Bool))
(declare-rel BoilerController_step (Bool Bool Bool Int Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Bool Int Bool Int Int Bool Int Int Bool Int Int Bool Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Bool Int Bool Int Bool Int Bool Int Bool Int Int Int Int Int Bool Int Bool Int Int Bool Int Int Bool Int Int Bool Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Bool Int Bool Int Bool Int Bool Int Bool))

(rule (=> 
  (and 
       (= BoilerController.__BoilerController_4_m BoilerController.__BoilerController_4_c)
       (= BoilerController.__BoilerController_5_m BoilerController.__BoilerController_5_c)
       (= BoilerController.__BoilerController_6_m BoilerController.__BoilerController_6_c)
       (= BoilerController.__BoilerController_7_m BoilerController.__BoilerController_7_c)
       (= BoilerController.__BoilerController_8_m BoilerController.__BoilerController_8_c)
       (LevelDefect_reset BoilerController.ni_9.LevelDefect.__LevelDefect_3_c
                          BoilerController.ni_9.LevelDefect.ni_25._arrow._first_c
                          BoilerController.ni_9.LevelDefect.__LevelDefect_3_m
                          BoilerController.ni_9.LevelDefect.ni_25._arrow._first_m)
       (Dynamics_reset BoilerController.ni_8.Dynamics.__Dynamics_8_c
                       BoilerController.ni_8.Dynamics.ni_26._arrow._first_c
                       BoilerController.ni_8.Dynamics.__Dynamics_8_m
                       BoilerController.ni_8.Dynamics.ni_26._arrow._first_m)
       (Operator_reset BoilerController.ni_7.Operator.__Operator_2_c
                       BoilerController.ni_7.Operator.ni_24._arrow._first_c
                       BoilerController.ni_7.Operator.__Operator_2_m
                       BoilerController.ni_7.Operator.ni_24._arrow._first_m)
       (ControlMode_reset BoilerController.ni_6.ControlMode.__ControlMode_2_c
                          BoilerController.ni_6.ControlMode.ni_27._arrow._first_c
                          BoilerController.ni_6.ControlMode.__ControlMode_2_m
                          BoilerController.ni_6.ControlMode.ni_27._arrow._first_m)
       (Valve_reset BoilerController.ni_5.Valve.__Valve_2_c
                    BoilerController.ni_5.Valve.ni_19._arrow._first_c
                    BoilerController.ni_5.Valve.__Valve_2_m
                    BoilerController.ni_5.Valve.ni_19._arrow._first_m)
       (PumpsDecision_reset BoilerController.ni_4.PumpsDecision.__PumpsDecision_3_c
                            BoilerController.ni_4.PumpsDecision.__PumpsDecision_3_m)
       (PumpsStatus_reset BoilerController.ni_3.PumpsStatus.__PumpsStatus_1_c
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_2_c
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_3_c
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_4_c
                          BoilerController.ni_3.PumpsStatus.ni_21._arrow._first_c
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_c
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_c
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_c
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_c
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_1_m
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_2_m
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_3_m
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_4_m
                          BoilerController.ni_3.PumpsStatus.ni_21._arrow._first_m
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_m
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_m
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_m
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_m)
       (PumpsOutput_reset BoilerController.ni_2.PumpsOutput.__PumpsOutput_1_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_2_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_3_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_4_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_5_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_6_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_7_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_8_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_1_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_2_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_3_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_4_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_5_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_6_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_7_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_8_m)
       (PumpDefect_reset BoilerController.ni_15.PumpDefect.__PumpDefect_2_c
                         BoilerController.ni_15.PumpDefect.__PumpDefect_4_c
                         BoilerController.ni_15.PumpDefect.ni_23._arrow._first_c
                         BoilerController.ni_15.PumpDefect.__PumpDefect_2_m
                         BoilerController.ni_15.PumpDefect.__PumpDefect_4_m
                         BoilerController.ni_15.PumpDefect.ni_23._arrow._first_m)
       (PumpDefect_reset BoilerController.ni_14.PumpDefect.__PumpDefect_2_c
                         BoilerController.ni_14.PumpDefect.__PumpDefect_4_c
                         BoilerController.ni_14.PumpDefect.ni_23._arrow._first_c
                         BoilerController.ni_14.PumpDefect.__PumpDefect_2_m
                         BoilerController.ni_14.PumpDefect.__PumpDefect_4_m
                         BoilerController.ni_14.PumpDefect.ni_23._arrow._first_m)
       (PumpDefect_reset BoilerController.ni_13.PumpDefect.__PumpDefect_2_c
                         BoilerController.ni_13.PumpDefect.__PumpDefect_4_c
                         BoilerController.ni_13.PumpDefect.ni_23._arrow._first_c
                         BoilerController.ni_13.PumpDefect.__PumpDefect_2_m
                         BoilerController.ni_13.PumpDefect.__PumpDefect_4_m
                         BoilerController.ni_13.PumpDefect.ni_23._arrow._first_m)
       (PumpDefect_reset BoilerController.ni_12.PumpDefect.__PumpDefect_2_c
                         BoilerController.ni_12.PumpDefect.__PumpDefect_4_c
                         BoilerController.ni_12.PumpDefect.ni_23._arrow._first_c
                         BoilerController.ni_12.PumpDefect.__PumpDefect_2_m
                         BoilerController.ni_12.PumpDefect.__PumpDefect_4_m
                         BoilerController.ni_12.PumpDefect.ni_23._arrow._first_m)
       (SteamDefect_reset BoilerController.ni_11.SteamDefect.__SteamDefect_3_c
                          BoilerController.ni_11.SteamDefect.ni_20._arrow._first_c
                          BoilerController.ni_11.SteamDefect.__SteamDefect_3_m
                          BoilerController.ni_11.SteamDefect.ni_20._arrow._first_m)
       (= BoilerController.ni_10._arrow._first_m true)
  )
  (BoilerController_reset BoilerController.__BoilerController_4_c
                          BoilerController.__BoilerController_5_c
                          BoilerController.__BoilerController_6_c
                          BoilerController.__BoilerController_7_c
                          BoilerController.__BoilerController_8_c
                          BoilerController.ni_10._arrow._first_c
                          BoilerController.ni_11.SteamDefect.__SteamDefect_3_c
                          BoilerController.ni_11.SteamDefect.ni_20._arrow._first_c
                          BoilerController.ni_12.PumpDefect.__PumpDefect_2_c
                          BoilerController.ni_12.PumpDefect.__PumpDefect_4_c
                          BoilerController.ni_12.PumpDefect.ni_23._arrow._first_c
                          BoilerController.ni_13.PumpDefect.__PumpDefect_2_c
                          BoilerController.ni_13.PumpDefect.__PumpDefect_4_c
                          BoilerController.ni_13.PumpDefect.ni_23._arrow._first_c
                          BoilerController.ni_14.PumpDefect.__PumpDefect_2_c
                          BoilerController.ni_14.PumpDefect.__PumpDefect_4_c
                          BoilerController.ni_14.PumpDefect.ni_23._arrow._first_c
                          BoilerController.ni_15.PumpDefect.__PumpDefect_2_c
                          BoilerController.ni_15.PumpDefect.__PumpDefect_4_c
                          BoilerController.ni_15.PumpDefect.ni_23._arrow._first_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_1_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_2_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_3_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_4_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_5_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_6_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_7_c
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_8_c
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_1_c
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_2_c
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_3_c
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_4_c
                          BoilerController.ni_3.PumpsStatus.ni_21._arrow._first_c
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_c
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_c
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_c
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_c
                          BoilerController.ni_4.PumpsDecision.__PumpsDecision_3_c
                          BoilerController.ni_5.Valve.__Valve_2_c
                          BoilerController.ni_5.Valve.ni_19._arrow._first_c
                          BoilerController.ni_6.ControlMode.__ControlMode_2_c
                          BoilerController.ni_6.ControlMode.ni_27._arrow._first_c
                          BoilerController.ni_7.Operator.__Operator_2_c
                          BoilerController.ni_7.Operator.ni_24._arrow._first_c
                          BoilerController.ni_8.Dynamics.__Dynamics_8_c
                          BoilerController.ni_8.Dynamics.ni_26._arrow._first_c
                          BoilerController.ni_9.LevelDefect.__LevelDefect_3_c
                          BoilerController.ni_9.LevelDefect.ni_25._arrow._first_c
                          BoilerController.__BoilerController_4_m
                          BoilerController.__BoilerController_5_m
                          BoilerController.__BoilerController_6_m
                          BoilerController.__BoilerController_7_m
                          BoilerController.__BoilerController_8_m
                          BoilerController.ni_10._arrow._first_m
                          BoilerController.ni_11.SteamDefect.__SteamDefect_3_m
                          BoilerController.ni_11.SteamDefect.ni_20._arrow._first_m
                          BoilerController.ni_12.PumpDefect.__PumpDefect_2_m
                          BoilerController.ni_12.PumpDefect.__PumpDefect_4_m
                          BoilerController.ni_12.PumpDefect.ni_23._arrow._first_m
                          BoilerController.ni_13.PumpDefect.__PumpDefect_2_m
                          BoilerController.ni_13.PumpDefect.__PumpDefect_4_m
                          BoilerController.ni_13.PumpDefect.ni_23._arrow._first_m
                          BoilerController.ni_14.PumpDefect.__PumpDefect_2_m
                          BoilerController.ni_14.PumpDefect.__PumpDefect_4_m
                          BoilerController.ni_14.PumpDefect.ni_23._arrow._first_m
                          BoilerController.ni_15.PumpDefect.__PumpDefect_2_m
                          BoilerController.ni_15.PumpDefect.__PumpDefect_4_m
                          BoilerController.ni_15.PumpDefect.ni_23._arrow._first_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_1_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_2_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_3_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_4_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_5_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_6_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_7_m
                          BoilerController.ni_2.PumpsOutput.__PumpsOutput_8_m
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_1_m
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_2_m
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_3_m
                          BoilerController.ni_3.PumpsStatus.__PumpsStatus_4_m
                          BoilerController.ni_3.PumpsStatus.ni_21._arrow._first_m
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_m
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_m
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_m
                          BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_m
                          BoilerController.ni_4.PumpsDecision.__PumpsDecision_3_m
                          BoilerController.ni_5.Valve.__Valve_2_m
                          BoilerController.ni_5.Valve.ni_19._arrow._first_m
                          BoilerController.ni_6.ControlMode.__ControlMode_2_m
                          BoilerController.ni_6.ControlMode.ni_27._arrow._first_m
                          BoilerController.ni_7.Operator.__Operator_2_m
                          BoilerController.ni_7.Operator.ni_24._arrow._first_m
                          BoilerController.ni_8.Dynamics.__Dynamics_8_m
                          BoilerController.ni_8.Dynamics.ni_26._arrow._first_m
                          BoilerController.ni_9.LevelDefect.__LevelDefect_3_m
                          BoilerController.ni_9.LevelDefect.ni_25._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= BoilerController.ni_15.PumpDefect.__PumpDefect_2_m BoilerController.ni_15.PumpDefect.__PumpDefect_2_c)
            (= BoilerController.ni_15.PumpDefect.__PumpDefect_4_m BoilerController.ni_15.PumpDefect.__PumpDefect_4_c)
            (= BoilerController.ni_15.PumpDefect.ni_23._arrow._first_m BoilerController.ni_15.PumpDefect.ni_23._arrow._first_c)
            )
       (PumpDefect_step BoilerController.pump_failure_acknowledgement_3
                        BoilerController.pump_repaired_3
                        BoilerController.pump_control_failure_acknowledgement_3
                        BoilerController.pump_control_repaired_3
                        BoilerController.__BoilerController_5_c
                        BoilerController.pump_state_3
                        BoilerController.pump_control_state_3
                        BoilerController.t30
                        BoilerController.t31
                        BoilerController.t32
                        BoilerController.ni_15.PumpDefect.__PumpDefect_2_m
                        BoilerController.ni_15.PumpDefect.__PumpDefect_4_m
                        BoilerController.ni_15.PumpDefect.ni_23._arrow._first_m
                        BoilerController.ni_15.PumpDefect.__PumpDefect_2_x
                        BoilerController.ni_15.PumpDefect.__PumpDefect_4_x
                        BoilerController.ni_15.PumpDefect.ni_23._arrow._first_x)
       (and (= BoilerController.ni_14.PumpDefect.__PumpDefect_2_m BoilerController.ni_14.PumpDefect.__PumpDefect_2_c)
            (= BoilerController.ni_14.PumpDefect.__PumpDefect_4_m BoilerController.ni_14.PumpDefect.__PumpDefect_4_c)
            (= BoilerController.ni_14.PumpDefect.ni_23._arrow._first_m BoilerController.ni_14.PumpDefect.ni_23._arrow._first_c)
            )
       (PumpDefect_step BoilerController.pump_failure_acknowledgement_2
                        BoilerController.pump_repaired_2
                        BoilerController.pump_control_failure_acknowledgement_2
                        BoilerController.pump_control_repaired_2
                        BoilerController.__BoilerController_6_c
                        BoilerController.pump_state_2
                        BoilerController.pump_control_state_2
                        BoilerController.t20
                        BoilerController.t21
                        BoilerController.t22
                        BoilerController.ni_14.PumpDefect.__PumpDefect_2_m
                        BoilerController.ni_14.PumpDefect.__PumpDefect_4_m
                        BoilerController.ni_14.PumpDefect.ni_23._arrow._first_m
                        BoilerController.ni_14.PumpDefect.__PumpDefect_2_x
                        BoilerController.ni_14.PumpDefect.__PumpDefect_4_x
                        BoilerController.ni_14.PumpDefect.ni_23._arrow._first_x)
       (and (= BoilerController.ni_13.PumpDefect.__PumpDefect_2_m BoilerController.ni_13.PumpDefect.__PumpDefect_2_c)
            (= BoilerController.ni_13.PumpDefect.__PumpDefect_4_m BoilerController.ni_13.PumpDefect.__PumpDefect_4_c)
            (= BoilerController.ni_13.PumpDefect.ni_23._arrow._first_m BoilerController.ni_13.PumpDefect.ni_23._arrow._first_c)
            )
       (PumpDefect_step BoilerController.pump_failure_acknowledgement_1
                        BoilerController.pump_repaired_1
                        BoilerController.pump_control_failure_acknowledgement_1
                        BoilerController.pump_control_repaired_1
                        BoilerController.__BoilerController_7_c
                        BoilerController.pump_state_1
                        BoilerController.pump_control_state_1
                        BoilerController.t10
                        BoilerController.t11
                        BoilerController.t12
                        BoilerController.ni_13.PumpDefect.__PumpDefect_2_m
                        BoilerController.ni_13.PumpDefect.__PumpDefect_4_m
                        BoilerController.ni_13.PumpDefect.ni_23._arrow._first_m
                        BoilerController.ni_13.PumpDefect.__PumpDefect_2_x
                        BoilerController.ni_13.PumpDefect.__PumpDefect_4_x
                        BoilerController.ni_13.PumpDefect.ni_23._arrow._first_x)
       (and (= BoilerController.ni_12.PumpDefect.__PumpDefect_2_m BoilerController.ni_12.PumpDefect.__PumpDefect_2_c)
            (= BoilerController.ni_12.PumpDefect.__PumpDefect_4_m BoilerController.ni_12.PumpDefect.__PumpDefect_4_c)
            (= BoilerController.ni_12.PumpDefect.ni_23._arrow._first_m BoilerController.ni_12.PumpDefect.ni_23._arrow._first_c)
            )
       (PumpDefect_step BoilerController.pump_failure_acknowledgement_0
                        BoilerController.pump_repaired_0
                        BoilerController.pump_control_failure_acknowledgement_0
                        BoilerController.pump_control_repaired_0
                        BoilerController.__BoilerController_8_c
                        BoilerController.pump_state_0
                        BoilerController.pump_control_state_0
                        BoilerController.t00
                        BoilerController.t01
                        BoilerController.t02
                        BoilerController.ni_12.PumpDefect.__PumpDefect_2_m
                        BoilerController.ni_12.PumpDefect.__PumpDefect_4_m
                        BoilerController.ni_12.PumpDefect.ni_23._arrow._first_m
                        BoilerController.ni_12.PumpDefect.__PumpDefect_2_x
                        BoilerController.ni_12.PumpDefect.__PumpDefect_4_x
                        BoilerController.ni_12.PumpDefect.ni_23._arrow._first_x)
       (and (= BoilerController.ni_11.SteamDefect.__SteamDefect_3_m BoilerController.ni_11.SteamDefect.__SteamDefect_3_c)
            (= BoilerController.ni_11.SteamDefect.ni_20._arrow._first_m BoilerController.ni_11.SteamDefect.ni_20._arrow._first_c)
            )
       (SteamDefect_step BoilerController.steam_failure_acknowledgement
                         BoilerController.steam_repaired
                         BoilerController.steam
                         BoilerController.__BoilerController_9
                         BoilerController.ni_11.SteamDefect.__SteamDefect_3_m
                         BoilerController.ni_11.SteamDefect.ni_20._arrow._first_m
                         BoilerController.ni_11.SteamDefect.__SteamDefect_3_x
                         BoilerController.ni_11.SteamDefect.ni_20._arrow._first_x)
       (= BoilerController.ni_10._arrow._first_m BoilerController.ni_10._arrow._first_c)
       (and (= BoilerController.__BoilerController_1 (ite BoilerController.ni_10._arrow._first_m true false))
            (= BoilerController.ni_10._arrow._first_x false))
       (and (or (not (= BoilerController.__BoilerController_1 true))
               (= BoilerController.steam_defect 0))
            (or (not (= BoilerController.__BoilerController_1 false))
               (= BoilerController.steam_defect BoilerController.__BoilerController_9))
       )
       (and (= BoilerController.ni_9.LevelDefect.__LevelDefect_3_m BoilerController.ni_9.LevelDefect.__LevelDefect_3_c)
            (= BoilerController.ni_9.LevelDefect.ni_25._arrow._first_m BoilerController.ni_9.LevelDefect.ni_25._arrow._first_c)
            )
       (LevelDefect_step BoilerController.level_failure_acknowledgement
                         BoilerController.level_repaired
                         BoilerController.level
                         BoilerController.__BoilerController_10
                         BoilerController.ni_9.LevelDefect.__LevelDefect_3_m
                         BoilerController.ni_9.LevelDefect.ni_25._arrow._first_m
                         BoilerController.ni_9.LevelDefect.__LevelDefect_3_x
                         BoilerController.ni_9.LevelDefect.ni_25._arrow._first_x)
       (and (or (not (= BoilerController.__BoilerController_1 false))
               (and (= BoilerController.level_defect BoilerController.__BoilerController_10)
                    (= BoilerController.flow_3 BoilerController.t32)
                    (= BoilerController.flow_2 BoilerController.t22)
                    (= BoilerController.flow_1 BoilerController.t12)
                    (= BoilerController.flow_0 BoilerController.t02)
                    ))
            (or (not (= BoilerController.__BoilerController_1 true))
               (and (= BoilerController.level_defect 0)
                    (= BoilerController.flow_3 false)
                    (= BoilerController.flow_2 false)
                    (= BoilerController.flow_1 false)
                    (= BoilerController.flow_0 false)
                    ))
       )
       (and (= BoilerController.ni_8.Dynamics.__Dynamics_8_m BoilerController.ni_8.Dynamics.__Dynamics_8_c)
            (= BoilerController.ni_8.Dynamics.ni_26._arrow._first_m BoilerController.ni_8.Dynamics.ni_26._arrow._first_c)
            )
       (Dynamics_step BoilerController.__BoilerController_4_c
                      BoilerController.level
                      BoilerController.steam
                      BoilerController.level_defect
                      BoilerController.steam_defect
                      BoilerController.flow_0
                      BoilerController.flow_1
                      BoilerController.flow_2
                      BoilerController.flow_3
                      BoilerController.t4
                      BoilerController.t5
                      BoilerController.t6
                      BoilerController.t7
                      BoilerController.t8
                      BoilerController.t9
                      BoilerController.ni_8.Dynamics.__Dynamics_8_m
                      BoilerController.ni_8.Dynamics.ni_26._arrow._first_m
                      BoilerController.ni_8.Dynamics.__Dynamics_8_x
                      BoilerController.ni_8.Dynamics.ni_26._arrow._first_x)
       (and (= BoilerController.ni_7.Operator.__Operator_2_m BoilerController.ni_7.Operator.__Operator_2_c)
            (= BoilerController.ni_7.Operator.ni_24._arrow._first_m BoilerController.ni_7.Operator.ni_24._arrow._first_c)
            )
       (Operator_step BoilerController.stop
                      BoilerController.stop_request
                      BoilerController.ni_7.Operator.__Operator_2_m
                      BoilerController.ni_7.Operator.ni_24._arrow._first_m
                      BoilerController.ni_7.Operator.__Operator_2_x
                      BoilerController.ni_7.Operator.ni_24._arrow._first_x)
       (and (or (not (= BoilerController.__BoilerController_1 false))
               (and (= BoilerController.q BoilerController.t4)
                    (= BoilerController.pump_defect_3 BoilerController.t30)
                    (= BoilerController.pump_defect_2 BoilerController.t20)
                    (= BoilerController.pump_defect_1 BoilerController.t10)
                    (= BoilerController.pump_defect_0 BoilerController.t00)
                    (= BoilerController.pump_control_defect_3 BoilerController.t31)
                    (= BoilerController.pump_control_defect_2 BoilerController.t21)
                    (= BoilerController.pump_control_defect_1 BoilerController.t11)
                    (= BoilerController.pump_control_defect_0 BoilerController.t01)
                    ))
            (or (not (= BoilerController.__BoilerController_1 true))
               (and (= BoilerController.q BoilerController.level)
                    (= BoilerController.pump_defect_3 0)
                    (= BoilerController.pump_defect_2 0)
                    (= BoilerController.pump_defect_1 0)
                    (= BoilerController.pump_defect_0 0)
                    (= BoilerController.pump_control_defect_3 0)
                    (= BoilerController.pump_control_defect_2 0)
                    (= BoilerController.pump_control_defect_1 0)
                    (= BoilerController.pump_control_defect_0 0)
                    ))
       )
       (and (= BoilerController.ni_6.ControlMode.__ControlMode_2_m BoilerController.ni_6.ControlMode.__ControlMode_2_c)
            (= BoilerController.ni_6.ControlMode.ni_27._arrow._first_m BoilerController.ni_6.ControlMode.ni_27._arrow._first_c)
            )
       (ControlMode_step BoilerController.steam_boiler_waiting
                         BoilerController.physical_units_ready
                         BoilerController.stop_request
                         BoilerController.steam
                         BoilerController.level_defect
                         BoilerController.steam_defect
                         BoilerController.pump_defect_0
                         BoilerController.pump_defect_1
                         BoilerController.pump_defect_2
                         BoilerController.pump_defect_3
                         BoilerController.pump_control_defect_0
                         BoilerController.pump_control_defect_1
                         BoilerController.pump_control_defect_2
                         BoilerController.pump_control_defect_3
                         BoilerController.q
                         BoilerController.pump_state_0
                         BoilerController.pump_state_1
                         BoilerController.pump_state_2
                         BoilerController.pump_state_3
                         BoilerController.__BoilerController_2
                         BoilerController.ni_6.ControlMode.__ControlMode_2_m
                         BoilerController.ni_6.ControlMode.ni_27._arrow._first_m
                         BoilerController.ni_6.ControlMode.__ControlMode_2_x
                         BoilerController.ni_6.ControlMode.ni_27._arrow._first_x)
       (and (or (not (= BoilerController.__BoilerController_1 true))
               (= BoilerController.op_mode 1))
            (or (not (= BoilerController.__BoilerController_1 false))
               (= BoilerController.op_mode BoilerController.__BoilerController_2))
       )
       (and (= BoilerController.ni_5.Valve.__Valve_2_m BoilerController.ni_5.Valve.__Valve_2_c)
            (= BoilerController.ni_5.Valve.ni_19._arrow._first_m BoilerController.ni_5.Valve.ni_19._arrow._first_c)
            )
       (Valve_step BoilerController.op_mode
                   BoilerController.q
                   BoilerController.u4
                   BoilerController.u5
                   BoilerController.ni_5.Valve.__Valve_2_m
                   BoilerController.ni_5.Valve.ni_19._arrow._first_m
                   BoilerController.ni_5.Valve.__Valve_2_x
                   BoilerController.ni_5.Valve.ni_19._arrow._first_x)
       (and (or (not (= BoilerController.__BoilerController_1 false))
               (and (= BoilerController.valve_state BoilerController.u5)
                    (= BoilerController.valve BoilerController.u4)
                    (= BoilerController.v BoilerController.t5)
                    ))
            (or (not (= BoilerController.__BoilerController_1 true))
               (and (= BoilerController.valve_state 0)
                    (= BoilerController.valve false)
                    (= BoilerController.v BoilerController.steam)
                    ))
       )
       (ControlOutput_fun BoilerController.op_mode
                          BoilerController.level
                          BoilerController.valve
                          BoilerController.u6
                          BoilerController.u7)
       (= BoilerController.ni_4.PumpsDecision.__PumpsDecision_3_m BoilerController.ni_4.PumpsDecision.__PumpsDecision_3_c)(PumpsDecision_step 
       BoilerController.q
       BoilerController.v
       BoilerController.__BoilerController_3
       BoilerController.ni_4.PumpsDecision.__PumpsDecision_3_m
       BoilerController.ni_4.PumpsDecision.__PumpsDecision_3_x)
       (and (or (not (= BoilerController.__BoilerController_1 true))
               (= BoilerController.n_pumps 0))
            (or (not (= BoilerController.__BoilerController_1 false))
               (= BoilerController.n_pumps BoilerController.__BoilerController_3))
       )
       (and (= BoilerController.ni_3.PumpsStatus.__PumpsStatus_1_m BoilerController.ni_3.PumpsStatus.__PumpsStatus_1_c)
            (= BoilerController.ni_3.PumpsStatus.__PumpsStatus_2_m BoilerController.ni_3.PumpsStatus.__PumpsStatus_2_c)
            (= BoilerController.ni_3.PumpsStatus.__PumpsStatus_3_m BoilerController.ni_3.PumpsStatus.__PumpsStatus_3_c)
            (= BoilerController.ni_3.PumpsStatus.__PumpsStatus_4_m BoilerController.ni_3.PumpsStatus.__PumpsStatus_4_c)
            (= BoilerController.ni_3.PumpsStatus.ni_21._arrow._first_m BoilerController.ni_3.PumpsStatus.ni_21._arrow._first_c)
            (= BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_m BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_c)
            (= BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_m BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_c)
            (= BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_m BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_c)
            (= BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_m BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_c)
            )
       (PumpsStatus_step BoilerController.n_pumps
                         BoilerController.pump_defect_0
                         BoilerController.pump_defect_1
                         BoilerController.pump_defect_2
                         BoilerController.pump_defect_3
                         BoilerController.flow_0
                         BoilerController.flow_1
                         BoilerController.flow_2
                         BoilerController.flow_3
                         BoilerController.u0
                         BoilerController.u1
                         BoilerController.u2
                         BoilerController.u3
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_1_m
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_2_m
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_3_m
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_4_m
                         BoilerController.ni_3.PumpsStatus.ni_21._arrow._first_m
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_m
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_m
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_m
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_m
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_1_x
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_2_x
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_3_x
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_4_x
                         BoilerController.ni_3.PumpsStatus.ni_21._arrow._first_x
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_x
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_x
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_x
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_x)
       (SteamOutput_fun BoilerController.op_mode
                        BoilerController.steam_defect
                        BoilerController.steam_repaired
                        BoilerController.b2
                        BoilerController.b3)
       (and (or (not (= BoilerController.__BoilerController_1 false))
               (and (= BoilerController.steam_outcome_repaired_acknowledgement BoilerController.b3)
                    (= BoilerController.steam_outcome_failure_detection BoilerController.b2)
                    (= BoilerController.pump_status_3 BoilerController.u3)
                    (= BoilerController.pump_status_2 BoilerController.u2)
                    (= BoilerController.pump_status_1 BoilerController.u1)
                    (= BoilerController.pump_status_0 BoilerController.u0)
                    ))
            (or (not (= BoilerController.__BoilerController_1 true))
               (and (= BoilerController.steam_outcome_repaired_acknowledgement false)
                    (= BoilerController.steam_outcome_failure_detection false)
                    (= BoilerController.pump_status_3 0)
                    (= BoilerController.pump_status_2 0)
                    (= BoilerController.pump_status_1 0)
                    (= BoilerController.pump_status_0 0)
                    ))
       )
       (and (= BoilerController.ni_2.PumpsOutput.__PumpsOutput_1_m BoilerController.ni_2.PumpsOutput.__PumpsOutput_1_c)
            (= BoilerController.ni_2.PumpsOutput.__PumpsOutput_2_m BoilerController.ni_2.PumpsOutput.__PumpsOutput_2_c)
            (= BoilerController.ni_2.PumpsOutput.__PumpsOutput_3_m BoilerController.ni_2.PumpsOutput.__PumpsOutput_3_c)
            (= BoilerController.ni_2.PumpsOutput.__PumpsOutput_4_m BoilerController.ni_2.PumpsOutput.__PumpsOutput_4_c)
            (= BoilerController.ni_2.PumpsOutput.__PumpsOutput_5_m BoilerController.ni_2.PumpsOutput.__PumpsOutput_5_c)
            (= BoilerController.ni_2.PumpsOutput.__PumpsOutput_6_m BoilerController.ni_2.PumpsOutput.__PumpsOutput_6_c)
            (= BoilerController.ni_2.PumpsOutput.__PumpsOutput_7_m BoilerController.ni_2.PumpsOutput.__PumpsOutput_7_c)
            (= BoilerController.ni_2.PumpsOutput.__PumpsOutput_8_m BoilerController.ni_2.PumpsOutput.__PumpsOutput_8_c)
            )
       (PumpsOutput_step BoilerController.op_mode
                         BoilerController.pump_status_0
                         BoilerController.pump_status_1
                         BoilerController.pump_status_2
                         BoilerController.pump_status_3
                         BoilerController.pump_defect_0
                         BoilerController.pump_defect_1
                         BoilerController.pump_defect_2
                         BoilerController.pump_defect_3
                         BoilerController.pump_control_defect_0
                         BoilerController.pump_control_defect_1
                         BoilerController.pump_control_defect_2
                         BoilerController.pump_control_defect_3
                         BoilerController.pump_repaired_0
                         BoilerController.pump_repaired_1
                         BoilerController.pump_repaired_2
                         BoilerController.pump_repaired_3
                         BoilerController.pump_control_repaired_0
                         BoilerController.pump_control_repaired_1
                         BoilerController.pump_control_repaired_2
                         BoilerController.pump_control_repaired_3
                         BoilerController.a1
                         BoilerController.a2
                         BoilerController.a3
                         BoilerController.a4
                         BoilerController.a5
                         BoilerController.a6
                         BoilerController.a7
                         BoilerController.a8
                         BoilerController.a9
                         BoilerController.a10
                         BoilerController.a11
                         BoilerController.a12
                         BoilerController.a13
                         BoilerController.a14
                         BoilerController.a15
                         BoilerController.a16
                         BoilerController.a17
                         BoilerController.a18
                         BoilerController.a19
                         BoilerController.a20
                         BoilerController.a21
                         BoilerController.a22
                         BoilerController.a23
                         BoilerController.a24
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_1_m
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_2_m
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_3_m
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_4_m
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_5_m
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_6_m
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_7_m
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_8_m
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_1_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_2_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_3_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_4_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_5_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_6_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_7_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_8_x)
       (= BoilerController.pump_repaired_acknowledgement_3 BoilerController.a16)
       (= BoilerController.pump_repaired_acknowledgement_2 BoilerController.a15)
       (= BoilerController.pump_repaired_acknowledgement_1 BoilerController.a14)
       (= BoilerController.pump_repaired_acknowledgement_0 BoilerController.a13)
       (= BoilerController.pump_failure_detection_3 BoilerController.a12)
       (= BoilerController.pump_failure_detection_2 BoilerController.a11)
       (= BoilerController.pump_failure_detection_1 BoilerController.a10)
       (= BoilerController.pump_failure_detection_0 BoilerController.a9)
       (= BoilerController.pump_control_repaired_acknowledgement_3 BoilerController.a24)
       (= BoilerController.pump_control_repaired_acknowledgement_2 BoilerController.a23)
       (= BoilerController.pump_control_repaired_acknowledgement_1 BoilerController.a22)
       (= BoilerController.pump_control_repaired_acknowledgement_0 BoilerController.a21)
       (= BoilerController.pump_control_failure_detection_3 BoilerController.a20)
       (= BoilerController.pump_control_failure_detection_2 BoilerController.a19)
       (= BoilerController.pump_control_failure_detection_1 BoilerController.a18)
       (= BoilerController.pump_control_failure_detection_0 BoilerController.a17)
       (and (or (not (= BoilerController.__BoilerController_1 false))
               (and (= BoilerController.program_ready BoilerController.u6)
                    (= BoilerController.p_3 BoilerController.t9)
                    (= BoilerController.p_2 BoilerController.t8)
                    (= BoilerController.p_1 BoilerController.t7)
                    (= BoilerController.p_0 BoilerController.t6)
                    ))
            (or (not (= BoilerController.__BoilerController_1 true))
               (and (= BoilerController.program_ready false)
                    (= BoilerController.p_3 0)
                    (= BoilerController.p_2 0)
                    (= BoilerController.p_1 0)
                    (= BoilerController.p_0 0)
                    ))
       )
       (= BoilerController.open_pump_3 BoilerController.a4)
       (= BoilerController.open_pump_2 BoilerController.a3)
       (= BoilerController.open_pump_1 BoilerController.a2)
       (= BoilerController.open_pump_0 BoilerController.a1)
       (and (or (not (= BoilerController.__BoilerController_1 true))
               (= BoilerController.mode 1))
            (or (not (= BoilerController.__BoilerController_1 false))
               (= BoilerController.mode BoilerController.u7))
       )
       (LevelOutput_fun BoilerController.op_mode
                        BoilerController.level_defect
                        BoilerController.level_repaired
                        BoilerController.b0
                        BoilerController.b1)
       (and (or (not (= BoilerController.__BoilerController_1 false))
               (and (= BoilerController.level_repaired_acknowledgement BoilerController.b1)
                    (= BoilerController.level_failure_detection BoilerController.b0)
                    ))
            (or (not (= BoilerController.__BoilerController_1 true))
               (and (= BoilerController.level_repaired_acknowledgement false)
                    (= BoilerController.level_failure_detection false)
                    ))
       )
       (= BoilerController.close_pump_3 BoilerController.a8)
       (= BoilerController.close_pump_2 BoilerController.a7)
       (= BoilerController.close_pump_1 BoilerController.a6)
       (= BoilerController.close_pump_0 BoilerController.a5)
       (= BoilerController.__BoilerController_8_x BoilerController.pump_status_0)
       (= BoilerController.__BoilerController_7_x BoilerController.pump_status_1)
       (= BoilerController.__BoilerController_6_x BoilerController.pump_status_2)
       (= BoilerController.__BoilerController_5_x BoilerController.pump_status_3)
       (= BoilerController.__BoilerController_4_x BoilerController.valve_state)
       )
  (BoilerController_step BoilerController.stop
                         BoilerController.steam_boiler_waiting
                         BoilerController.physical_units_ready
                         BoilerController.level
                         BoilerController.steam
                         BoilerController.pump_state_0
                         BoilerController.pump_state_1
                         BoilerController.pump_state_2
                         BoilerController.pump_state_3
                         BoilerController.pump_control_state_0
                         BoilerController.pump_control_state_1
                         BoilerController.pump_control_state_2
                         BoilerController.pump_control_state_3
                         BoilerController.pump_repaired_0
                         BoilerController.pump_repaired_1
                         BoilerController.pump_repaired_2
                         BoilerController.pump_repaired_3
                         BoilerController.pump_control_repaired_0
                         BoilerController.pump_control_repaired_1
                         BoilerController.pump_control_repaired_2
                         BoilerController.pump_control_repaired_3
                         BoilerController.level_repaired
                         BoilerController.steam_repaired
                         BoilerController.pump_failure_acknowledgement_0
                         BoilerController.pump_failure_acknowledgement_1
                         BoilerController.pump_failure_acknowledgement_2
                         BoilerController.pump_failure_acknowledgement_3
                         BoilerController.pump_control_failure_acknowledgement_0
                         BoilerController.pump_control_failure_acknowledgement_1
                         BoilerController.pump_control_failure_acknowledgement_2
                         BoilerController.pump_control_failure_acknowledgement_3
                         BoilerController.level_failure_acknowledgement
                         BoilerController.steam_failure_acknowledgement
                         BoilerController.program_ready
                         BoilerController.mode
                         BoilerController.valve
                         BoilerController.open_pump_0
                         BoilerController.open_pump_1
                         BoilerController.open_pump_2
                         BoilerController.open_pump_3
                         BoilerController.close_pump_0
                         BoilerController.close_pump_1
                         BoilerController.close_pump_2
                         BoilerController.close_pump_3
                         BoilerController.pump_failure_detection_0
                         BoilerController.pump_failure_detection_1
                         BoilerController.pump_failure_detection_2
                         BoilerController.pump_failure_detection_3
                         BoilerController.pump_control_failure_detection_0
                         BoilerController.pump_control_failure_detection_1
                         BoilerController.pump_control_failure_detection_2
                         BoilerController.pump_control_failure_detection_3
                         BoilerController.level_failure_detection
                         BoilerController.steam_outcome_failure_detection
                         BoilerController.pump_repaired_acknowledgement_0
                         BoilerController.pump_repaired_acknowledgement_1
                         BoilerController.pump_repaired_acknowledgement_2
                         BoilerController.pump_repaired_acknowledgement_3
                         BoilerController.pump_control_repaired_acknowledgement_0
                         BoilerController.pump_control_repaired_acknowledgement_1
                         BoilerController.pump_control_repaired_acknowledgement_2
                         BoilerController.pump_control_repaired_acknowledgement_3
                         BoilerController.level_repaired_acknowledgement
                         BoilerController.steam_outcome_repaired_acknowledgement
                         BoilerController.__BoilerController_4_c
                         BoilerController.__BoilerController_5_c
                         BoilerController.__BoilerController_6_c
                         BoilerController.__BoilerController_7_c
                         BoilerController.__BoilerController_8_c
                         BoilerController.ni_10._arrow._first_c
                         BoilerController.ni_11.SteamDefect.__SteamDefect_3_c
                         BoilerController.ni_11.SteamDefect.ni_20._arrow._first_c
                         BoilerController.ni_12.PumpDefect.__PumpDefect_2_c
                         BoilerController.ni_12.PumpDefect.__PumpDefect_4_c
                         BoilerController.ni_12.PumpDefect.ni_23._arrow._first_c
                         BoilerController.ni_13.PumpDefect.__PumpDefect_2_c
                         BoilerController.ni_13.PumpDefect.__PumpDefect_4_c
                         BoilerController.ni_13.PumpDefect.ni_23._arrow._first_c
                         BoilerController.ni_14.PumpDefect.__PumpDefect_2_c
                         BoilerController.ni_14.PumpDefect.__PumpDefect_4_c
                         BoilerController.ni_14.PumpDefect.ni_23._arrow._first_c
                         BoilerController.ni_15.PumpDefect.__PumpDefect_2_c
                         BoilerController.ni_15.PumpDefect.__PumpDefect_4_c
                         BoilerController.ni_15.PumpDefect.ni_23._arrow._first_c
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_1_c
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_2_c
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_3_c
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_4_c
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_5_c
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_6_c
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_7_c
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_8_c
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_1_c
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_2_c
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_3_c
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_4_c
                         BoilerController.ni_3.PumpsStatus.ni_21._arrow._first_c
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_c
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_c
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_c
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_c
                         BoilerController.ni_4.PumpsDecision.__PumpsDecision_3_c
                         BoilerController.ni_5.Valve.__Valve_2_c
                         BoilerController.ni_5.Valve.ni_19._arrow._first_c
                         BoilerController.ni_6.ControlMode.__ControlMode_2_c
                         BoilerController.ni_6.ControlMode.ni_27._arrow._first_c
                         BoilerController.ni_7.Operator.__Operator_2_c
                         BoilerController.ni_7.Operator.ni_24._arrow._first_c
                         BoilerController.ni_8.Dynamics.__Dynamics_8_c
                         BoilerController.ni_8.Dynamics.ni_26._arrow._first_c
                         BoilerController.ni_9.LevelDefect.__LevelDefect_3_c
                         BoilerController.ni_9.LevelDefect.ni_25._arrow._first_c
                         BoilerController.__BoilerController_4_x
                         BoilerController.__BoilerController_5_x
                         BoilerController.__BoilerController_6_x
                         BoilerController.__BoilerController_7_x
                         BoilerController.__BoilerController_8_x
                         BoilerController.ni_10._arrow._first_x
                         BoilerController.ni_11.SteamDefect.__SteamDefect_3_x
                         BoilerController.ni_11.SteamDefect.ni_20._arrow._first_x
                         BoilerController.ni_12.PumpDefect.__PumpDefect_2_x
                         BoilerController.ni_12.PumpDefect.__PumpDefect_4_x
                         BoilerController.ni_12.PumpDefect.ni_23._arrow._first_x
                         BoilerController.ni_13.PumpDefect.__PumpDefect_2_x
                         BoilerController.ni_13.PumpDefect.__PumpDefect_4_x
                         BoilerController.ni_13.PumpDefect.ni_23._arrow._first_x
                         BoilerController.ni_14.PumpDefect.__PumpDefect_2_x
                         BoilerController.ni_14.PumpDefect.__PumpDefect_4_x
                         BoilerController.ni_14.PumpDefect.ni_23._arrow._first_x
                         BoilerController.ni_15.PumpDefect.__PumpDefect_2_x
                         BoilerController.ni_15.PumpDefect.__PumpDefect_4_x
                         BoilerController.ni_15.PumpDefect.ni_23._arrow._first_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_1_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_2_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_3_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_4_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_5_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_6_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_7_x
                         BoilerController.ni_2.PumpsOutput.__PumpsOutput_8_x
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_1_x
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_2_x
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_3_x
                         BoilerController.ni_3.PumpsStatus.__PumpsStatus_4_x
                         BoilerController.ni_3.PumpsStatus.ni_21._arrow._first_x
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_12_x
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_19_x
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_26_x
                         BoilerController.ni_3.PumpsStatus.ni_22.operate_pumps.__operate_pumps_5_x
                         BoilerController.ni_4.PumpsDecision.__PumpsDecision_3_x
                         BoilerController.ni_5.Valve.__Valve_2_x
                         BoilerController.ni_5.Valve.ni_19._arrow._first_x
                         BoilerController.ni_6.ControlMode.__ControlMode_2_x
                         BoilerController.ni_6.ControlMode.ni_27._arrow._first_x
                         BoilerController.ni_7.Operator.__Operator_2_x
                         BoilerController.ni_7.Operator.ni_24._arrow._first_x
                         BoilerController.ni_8.Dynamics.__Dynamics_8_x
                         BoilerController.ni_8.Dynamics.ni_26._arrow._first_x
                         BoilerController.ni_9.LevelDefect.__LevelDefect_3_x
                         BoilerController.ni_9.LevelDefect.ni_25._arrow._first_x)
))

; NOT
(declare-var NOT.a_0 Bool)
(declare-var NOT.a_1 Bool)
(declare-var NOT.a_2 Bool)
(declare-var NOT.a_3 Bool)
(declare-var NOT.NOT_0 Bool)
(declare-var NOT.NOT_1 Bool)
(declare-var NOT.NOT_2 Bool)
(declare-var NOT.NOT_3 Bool)
(declare-rel NOT_fun (Bool Bool Bool Bool Bool Bool Bool Bool))
; Stateless step rule 
(rule (=> 
  (and (= NOT.NOT_3 (not NOT.a_3))
       (= NOT.NOT_2 (not NOT.a_2))
       (= NOT.NOT_1 (not NOT.a_1))
       (= NOT.NOT_0 (not NOT.a_0))
       )
  (NOT_fun NOT.a_0 NOT.a_1 NOT.a_2 NOT.a_3 NOT.NOT_0 NOT.NOT_1 NOT.NOT_2 NOT.NOT_3)
))

; top
(declare-var top.steam_boiler_waiting Bool)
(declare-var top.physical_units_ready Bool)
(declare-var top.stop_request Bool)
(declare-var top.steam Int)
(declare-var top.level_defect Int)
(declare-var top.steam_defect Int)
(declare-var top.pump_defect_0 Int)
(declare-var top.pump_defect_1 Int)
(declare-var top.pump_defect_2 Int)
(declare-var top.pump_defect_3 Int)
(declare-var top.pump_control_defect_0 Int)
(declare-var top.pump_control_defect_1 Int)
(declare-var top.pump_control_defect_2 Int)
(declare-var top.pump_control_defect_3 Int)
(declare-var top.q Int)
(declare-var top.pump_state_0 Int)
(declare-var top.pump_state_1 Int)
(declare-var top.pump_state_2 Int)
(declare-var top.pump_state_3 Int)
(declare-var top.OK Bool)
(declare-var top.__top_3_c Int)
(declare-var top.ni_0._arrow._first_c Bool)
(declare-var top.ni_1.ControlMode.__ControlMode_2_c Int)
(declare-var top.ni_1.ControlMode.ni_27._arrow._first_c Bool)
(declare-var top.__top_3_m Int)
(declare-var top.ni_0._arrow._first_m Bool)
(declare-var top.ni_1.ControlMode.__ControlMode_2_m Int)
(declare-var top.ni_1.ControlMode.ni_27._arrow._first_m Bool)
(declare-var top.__top_3_x Int)
(declare-var top.ni_0._arrow._first_x Bool)
(declare-var top.ni_1.ControlMode.__ControlMode_2_x Int)
(declare-var top.ni_1.ControlMode.ni_27._arrow._first_x Bool)
(declare-var top.__top_1 Bool)
(declare-var top.__top_2 Bool)
(declare-var top.mode_normal_then_water_level_ok Bool)
(declare-var top.op_mode Int)
(declare-rel top_reset (Int Bool Int Bool Int Bool Int Bool))
(declare-rel top_step (Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Bool Int Bool Int Bool Int Bool))

(rule (=> 
  (and 
       (= top.__top_3_m top.__top_3_c)
       (ControlMode_reset top.ni_1.ControlMode.__ControlMode_2_c
                          top.ni_1.ControlMode.ni_27._arrow._first_c
                          top.ni_1.ControlMode.__ControlMode_2_m
                          top.ni_1.ControlMode.ni_27._arrow._first_m)
       (= top.ni_0._arrow._first_m true)
  )
  (top_reset top.__top_3_c
             top.ni_0._arrow._first_c
             top.ni_1.ControlMode.__ControlMode_2_c
             top.ni_1.ControlMode.ni_27._arrow._first_c
             top.__top_3_m
             top.ni_0._arrow._first_m
             top.ni_1.ControlMode.__ControlMode_2_m
             top.ni_1.ControlMode.ni_27._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= top.ni_1.ControlMode.__ControlMode_2_m top.ni_1.ControlMode.__ControlMode_2_c)
            (= top.ni_1.ControlMode.ni_27._arrow._first_m top.ni_1.ControlMode.ni_27._arrow._first_c)
            )
       (ControlMode_step top.steam_boiler_waiting
                         top.physical_units_ready
                         top.stop_request
                         top.steam
                         top.level_defect
                         top.steam_defect
                         top.pump_defect_0
                         top.pump_defect_1
                         top.pump_defect_2
                         top.pump_defect_3
                         top.pump_control_defect_0
                         top.pump_control_defect_1
                         top.pump_control_defect_2
                         top.pump_control_defect_3
                         top.q
                         top.pump_state_0
                         top.pump_state_1
                         top.pump_state_2
                         top.pump_state_3
                         top.op_mode
                         top.ni_1.ControlMode.__ControlMode_2_m
                         top.ni_1.ControlMode.ni_27._arrow._first_m
                         top.ni_1.ControlMode.__ControlMode_2_x
                         top.ni_1.ControlMode.ni_27._arrow._first_x)
       (dangerous_level_fun top.q
                            top.__top_2)
       (= top.ni_0._arrow._first_m top.ni_0._arrow._first_c)(and (= top.__top_1 (ite top.ni_0._arrow._first_m true false))
                                                                 (= top.ni_0._arrow._first_x false))
       (and (or (not (= top.__top_1 true))
               (= top.mode_normal_then_water_level_ok true))
            (or (not (= top.__top_1 false))
               (= top.mode_normal_then_water_level_ok (=> (and (= top.op_mode 3) (= top.__top_3_c 3)) (not top.__top_2))))
       )
       (= top.__top_3_x top.op_mode)
       (= top.OK (and top.mode_normal_then_water_level_ok (=> (= top.op_mode 3) (not top.stop_request))))
       )
  (top_step top.steam_boiler_waiting
            top.physical_units_ready
            top.stop_request
            top.steam
            top.level_defect
            top.steam_defect
            top.pump_defect_0
            top.pump_defect_1
            top.pump_defect_2
            top.pump_defect_3
            top.pump_control_defect_0
            top.pump_control_defect_1
            top.pump_control_defect_2
            top.pump_control_defect_3
            top.q
            top.pump_state_0
            top.pump_state_1
            top.pump_state_2
            top.pump_state_3
            top.OK
            top.__top_3_c
            top.ni_0._arrow._first_c
            top.ni_1.ControlMode.__ControlMode_2_c
            top.ni_1.ControlMode.ni_27._arrow._first_c
            top.__top_3_x
            top.ni_0._arrow._first_x
            top.ni_1.ControlMode.__ControlMode_2_x
            top.ni_1.ControlMode.ni_27._arrow._first_x)
))

; Collecting semantics for node top

(declare-rel MAIN (Int Bool Int Bool Bool))
; Initial set: Reset(c,m) + One Step(m,x) 
(declare-rel INIT_STATE ())
(rule INIT_STATE)
(rule (=> 
  (and INIT_STATE
       (top_reset top.__top_3_c top.ni_0._arrow._first_c top.ni_1.ControlMode.__ControlMode_2_c top.ni_1.ControlMode.ni_27._arrow._first_c top.__top_3_m top.ni_0._arrow._first_m top.ni_1.ControlMode.__ControlMode_2_m top.ni_1.ControlMode.ni_27._arrow._first_m)
       (top_step top.steam_boiler_waiting top.physical_units_ready top.stop_request top.steam top.level_defect top.steam_defect top.pump_defect_0 top.pump_defect_1 top.pump_defect_2 top.pump_defect_3 top.pump_control_defect_0 top.pump_control_defect_1 top.pump_control_defect_2 top.pump_control_defect_3 top.q top.pump_state_0 top.pump_state_1 top.pump_state_2 top.pump_state_3 top.OK top.__top_3_m top.ni_0._arrow._first_m top.ni_1.ControlMode.__ControlMode_2_m top.ni_1.ControlMode.ni_27._arrow._first_m top.__top_3_x top.ni_0._arrow._first_x top.ni_1.ControlMode.__ControlMode_2_x top.ni_1.ControlMode.ni_27._arrow._first_x)
  )
  (MAIN top.__top_3_x top.ni_0._arrow._first_x top.ni_1.ControlMode.__ControlMode_2_x top.ni_1.ControlMode.ni_27._arrow._first_x top.OK)
))

; Inductive def
(declare-var dummytop.OK Bool)
(rule (=> 
  (and (MAIN top.__top_3_c top.ni_0._arrow._first_c top.ni_1.ControlMode.__ControlMode_2_c top.ni_1.ControlMode.ni_27._arrow._first_c dummytop.OK)
       (top_step top.steam_boiler_waiting top.physical_units_ready top.stop_request top.steam top.level_defect top.steam_defect top.pump_defect_0 top.pump_defect_1 top.pump_defect_2 top.pump_defect_3 top.pump_control_defect_0 top.pump_control_defect_1 top.pump_control_defect_2 top.pump_control_defect_3 top.q top.pump_state_0 top.pump_state_1 top.pump_state_2 top.pump_state_3 top.OK top.__top_3_c top.ni_0._arrow._first_c top.ni_1.ControlMode.__ControlMode_2_c top.ni_1.ControlMode.ni_27._arrow._first_c top.__top_3_x top.ni_0._arrow._first_x top.ni_1.ControlMode.__ControlMode_2_x top.ni_1.ControlMode.ni_27._arrow._first_x)
  )
  (MAIN top.__top_3_x top.ni_0._arrow._first_x top.ni_1.ControlMode.__ControlMode_2_x top.ni_1.ControlMode.ni_27._arrow._first_x top.OK)
))

; Property def
(declare-rel ERR ())
(rule (=> 
  (and (not top.OK)
       (MAIN top.__top_3_x top.ni_0._arrow._first_x top.ni_1.ControlMode.__ControlMode_2_x top.ni_1.ControlMode.ni_27._arrow._first_x top.OK))
  ERR))
(query ERR)
