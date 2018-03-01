; Statically linked libraries
; conf1
(declare-var conf1.signal Bool)
(declare-var conf1.n Int)
(declare-var conf1.out Bool)
(declare-var conf1.__conf1_3_c Int)
(declare-var conf1.ni_11._arrow._first_c Bool)
(declare-var conf1.__conf1_3_m Int)
(declare-var conf1.ni_11._arrow._first_m Bool)
(declare-var conf1.__conf1_3_x Int)
(declare-var conf1.ni_11._arrow._first_x Bool)
(declare-var conf1.__conf1_2 Bool)
(declare-var conf1.cpt Int)
(declare-var conf1.pre_cpt Int)
(declare-rel conf1_reset (Int Bool Int Bool))
(declare-rel conf1_step (Bool Int Bool Int Bool Int Bool))

(rule (=> 
  (and 
       (= conf1.__conf1_3_m conf1.__conf1_3_c)
       (= conf1.ni_11._arrow._first_m true)
  )
  (conf1_reset conf1.__conf1_3_c
               conf1.ni_11._arrow._first_c
               conf1.__conf1_3_m
               conf1.ni_11._arrow._first_m)
))

; Step rule with Assertions 
(rule (=> 
  (and 
  (and (= conf1.ni_11._arrow._first_m conf1.ni_11._arrow._first_c)(and (= conf1.__conf1_2 (ite conf1.ni_11._arrow._first_m true false))
                                                                    (= conf1.ni_11._arrow._first_x false))
       (and (or (not (= conf1.__conf1_2 true))
               (= conf1.pre_cpt 0))
            (or (not (= conf1.__conf1_2 false))
               (= conf1.pre_cpt conf1.__conf1_3_c))
       )
       (and (or (not (= conf1.signal true))
               (and (or (not (= (< conf1.pre_cpt conf1.n) true))
                       (= conf1.cpt (+ conf1.pre_cpt 1)))
                    (or (not (= (< conf1.pre_cpt conf1.n) false))
                       (= conf1.cpt conf1.pre_cpt))
               ))
            (or (not (= conf1.signal false))
               (= conf1.cpt 0))
       )
       (= conf1.out (>= conf1.cpt conf1.n))
       (= conf1.__conf1_3_x conf1.cpt)
       )
 (and (<= 0 conf1.pre_cpt) (<= conf1.pre_cpt conf1.n)))
(conf1_step conf1.signal conf1.n conf1.out conf1.__conf1_3_c conf1.ni_11._arrow._first_c conf1.__conf1_3_x conf1.ni_11._arrow._first_x)
))

; latch
(declare-var latch.in Bool)
(declare-var latch.out Bool)
(declare-var latch.__latch_2_c Bool)
(declare-var latch.ni_10._arrow._first_c Bool)
(declare-var latch.__latch_2_m Bool)
(declare-var latch.ni_10._arrow._first_m Bool)
(declare-var latch.__latch_2_x Bool)
(declare-var latch.ni_10._arrow._first_x Bool)
(declare-var latch.__latch_1 Bool)
(declare-var latch.pre_out Bool)
(declare-rel latch_reset (Bool Bool Bool Bool))
(declare-rel latch_step (Bool Bool Bool Bool Bool Bool))

(rule (=> 
  (and 
       (= latch.__latch_2_m latch.__latch_2_c)
       (= latch.ni_10._arrow._first_m true)
  )
  (latch_reset latch.__latch_2_c
               latch.ni_10._arrow._first_c
               latch.__latch_2_m
               latch.ni_10._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (= latch.ni_10._arrow._first_m latch.ni_10._arrow._first_c)(and (= latch.__latch_1 (ite latch.ni_10._arrow._first_m true false))
                                                                    (= latch.ni_10._arrow._first_x false))
       (and (or (not (= latch.__latch_1 true))
               (= latch.pre_out latch.in))
            (or (not (= latch.__latch_1 false))
               (= latch.pre_out latch.__latch_2_c))
       )
       (= latch.out (or latch.in latch.pre_out))
       (= latch.__latch_2_x latch.out)
       )
  (latch_step latch.in
              latch.out
              latch.__latch_2_c
              latch.ni_10._arrow._first_c
              latch.__latch_2_x
              latch.ni_10._arrow._first_x)
))

; priority
(declare-var priority.command Real)
(declare-var priority.safe_command_value Real)
(declare-var priority.command_failure Bool)
(declare-var priority.other_in_command Bool)
(declare-var priority.n Int)
(declare-var priority.safe_command Real)
(declare-var priority.in_command Bool)
(declare-var priority.ni_9.conf1.__conf1_3_c Int)
(declare-var priority.ni_9.conf1.ni_11._arrow._first_c Bool)
(declare-var priority.ni_9.conf1.__conf1_3_m Int)
(declare-var priority.ni_9.conf1.ni_11._arrow._first_m Bool)
(declare-var priority.ni_9.conf1.__conf1_3_x Int)
(declare-var priority.ni_9.conf1.ni_11._arrow._first_x Bool)
(declare-var priority.__priority_1 Bool)
(declare-rel priority_reset (Int Bool Int Bool))
(declare-rel priority_step (Real Real Bool Bool Int Real Bool Int Bool Int Bool))

(rule (=> 
  (and 
       
       (conf1_reset priority.ni_9.conf1.__conf1_3_c
                    priority.ni_9.conf1.ni_11._arrow._first_c
                    priority.ni_9.conf1.__conf1_3_m
                    priority.ni_9.conf1.ni_11._arrow._first_m)
  )
  (priority_reset priority.ni_9.conf1.__conf1_3_c
                  priority.ni_9.conf1.ni_11._arrow._first_c
                  priority.ni_9.conf1.__conf1_3_m
                  priority.ni_9.conf1.ni_11._arrow._first_m)
))

; Step rule 
(rule (=> 
  (and (and (= priority.ni_9.conf1.__conf1_3_m priority.ni_9.conf1.__conf1_3_c)
            (= priority.ni_9.conf1.ni_11._arrow._first_m priority.ni_9.conf1.ni_11._arrow._first_c)
            )
       (conf1_step (not priority.other_in_command)
                   priority.n
                   priority.__priority_1
                   priority.ni_9.conf1.__conf1_3_m
                   priority.ni_9.conf1.ni_11._arrow._first_m
                   priority.ni_9.conf1.__conf1_3_x
                   priority.ni_9.conf1.ni_11._arrow._first_x)
       (= priority.in_command (and (not priority.command_failure) priority.__priority_1))
       (and (or (not (= priority.in_command true))
               (= priority.safe_command priority.command))
            (or (not (= priority.in_command false))
               (= priority.safe_command priority.safe_command_value))
       )
       )
  (priority_step priority.command
                 priority.safe_command_value
                 priority.command_failure
                 priority.other_in_command
                 priority.n
                 priority.safe_command
                 priority.in_command
                 priority.ni_9.conf1.__conf1_3_c
                 priority.ni_9.conf1.ni_11._arrow._first_c
                 priority.ni_9.conf1.__conf1_3_x
                 priority.ni_9.conf1.ni_11._arrow._first_x)
))

; range_monitor
(declare-var range_monitor.signal Real)
(declare-var range_monitor.default_signal Real)
(declare-var range_monitor.min Real)
(declare-var range_monitor.max Real)
(declare-var range_monitor.n Int)
(declare-var range_monitor.out_of_range Bool)
(declare-var range_monitor.corrupt Bool)
(declare-var range_monitor.ranged_signal Real)
(declare-var range_monitor.ni_7.latch.__latch_2_c Bool)
(declare-var range_monitor.ni_7.latch.ni_10._arrow._first_c Bool)
(declare-var range_monitor.ni_8.conf1.__conf1_3_c Int)
(declare-var range_monitor.ni_8.conf1.ni_11._arrow._first_c Bool)
(declare-var range_monitor.ni_7.latch.__latch_2_m Bool)
(declare-var range_monitor.ni_7.latch.ni_10._arrow._first_m Bool)
(declare-var range_monitor.ni_8.conf1.__conf1_3_m Int)
(declare-var range_monitor.ni_8.conf1.ni_11._arrow._first_m Bool)
(declare-var range_monitor.ni_7.latch.__latch_2_x Bool)
(declare-var range_monitor.ni_7.latch.ni_10._arrow._first_x Bool)
(declare-var range_monitor.ni_8.conf1.__conf1_3_x Int)
(declare-var range_monitor.ni_8.conf1.ni_11._arrow._first_x Bool)
(declare-var range_monitor.__range_monitor_3 Bool)
(declare-rel range_monitor_reset (Bool Bool Int Bool Bool Bool Int Bool))
(declare-rel range_monitor_step (Real Real Real Real Int Bool Bool Real Bool Bool Int Bool Bool Bool Int Bool))

(rule (=> 
  (and 
       
       (conf1_reset range_monitor.ni_8.conf1.__conf1_3_c
                    range_monitor.ni_8.conf1.ni_11._arrow._first_c
                    range_monitor.ni_8.conf1.__conf1_3_m
                    range_monitor.ni_8.conf1.ni_11._arrow._first_m)
       (latch_reset range_monitor.ni_7.latch.__latch_2_c
                    range_monitor.ni_7.latch.ni_10._arrow._first_c
                    range_monitor.ni_7.latch.__latch_2_m
                    range_monitor.ni_7.latch.ni_10._arrow._first_m)
  )
  (range_monitor_reset range_monitor.ni_7.latch.__latch_2_c
                       range_monitor.ni_7.latch.ni_10._arrow._first_c
                       range_monitor.ni_8.conf1.__conf1_3_c
                       range_monitor.ni_8.conf1.ni_11._arrow._first_c
                       range_monitor.ni_7.latch.__latch_2_m
                       range_monitor.ni_7.latch.ni_10._arrow._first_m
                       range_monitor.ni_8.conf1.__conf1_3_m
                       range_monitor.ni_8.conf1.ni_11._arrow._first_m)
))

; Step rule with Assertions 
(rule (=> 
  (and 
  (and (= range_monitor.out_of_range (or (> range_monitor.signal range_monitor.max) (< range_monitor.min range_monitor.signal)))
       (and (= range_monitor.ni_8.conf1.__conf1_3_m range_monitor.ni_8.conf1.__conf1_3_c)
            (= range_monitor.ni_8.conf1.ni_11._arrow._first_m range_monitor.ni_8.conf1.ni_11._arrow._first_c)
            )
       (conf1_step range_monitor.out_of_range
                   range_monitor.n
                   range_monitor.__range_monitor_3
                   range_monitor.ni_8.conf1.__conf1_3_m
                   range_monitor.ni_8.conf1.ni_11._arrow._first_m
                   range_monitor.ni_8.conf1.__conf1_3_x
                   range_monitor.ni_8.conf1.ni_11._arrow._first_x)
       (and (= range_monitor.ni_7.latch.__latch_2_m range_monitor.ni_7.latch.__latch_2_c)
            (= range_monitor.ni_7.latch.ni_10._arrow._first_m range_monitor.ni_7.latch.ni_10._arrow._first_c)
            )
       (latch_step range_monitor.__range_monitor_3
                   range_monitor.corrupt
                   range_monitor.ni_7.latch.__latch_2_m
                   range_monitor.ni_7.latch.ni_10._arrow._first_m
                   range_monitor.ni_7.latch.__latch_2_x
                   range_monitor.ni_7.latch.ni_10._arrow._first_x)
       (and (or (not (= range_monitor.corrupt true))
               (= range_monitor.ranged_signal range_monitor.default_signal))
            (or (not (= range_monitor.corrupt false))
               (and (or (not (= (> range_monitor.signal range_monitor.max) true))
                       (= range_monitor.ranged_signal range_monitor.max))
                    (or (not (= (> range_monitor.signal range_monitor.max) false))
                       (and (or (not (= (< range_monitor.signal range_monitor.min) true))
                               (= range_monitor.ranged_signal range_monitor.min))
                            (or (not (= (< range_monitor.signal range_monitor.min) false))
                               (= range_monitor.ranged_signal range_monitor.signal))
                       ))
               ))
       )
       )
 (< range_monitor.min range_monitor.max))
(range_monitor_step range_monitor.signal range_monitor.default_signal range_monitor.min range_monitor.max range_monitor.n range_monitor.out_of_range range_monitor.corrupt range_monitor.ranged_signal range_monitor.ni_7.latch.__latch_2_c range_monitor.ni_7.latch.ni_10._arrow._first_c range_monitor.ni_8.conf1.__conf1_3_c range_monitor.ni_8.conf1.ni_11._arrow._first_c range_monitor.ni_7.latch.__latch_2_x range_monitor.ni_7.latch.ni_10._arrow._first_x range_monitor.ni_8.conf1.__conf1_3_x range_monitor.ni_8.conf1.ni_11._arrow._first_x)
))

; reconfiguration
(declare-var reconfiguration.sensor_value1 Real)
(declare-var reconfiguration.sensor_value2 Real)
(declare-var reconfiguration.sensor_value3 Real)
(declare-var reconfiguration.command Real)
(declare-var reconfiguration.no_command Bool)
(declare-var reconfiguration.ni_0.conf1.__conf1_3_c Int)
(declare-var reconfiguration.ni_0.conf1.ni_11._arrow._first_c Bool)
(declare-var reconfiguration.ni_1.priority.ni_9.conf1.__conf1_3_c Int)
(declare-var reconfiguration.ni_1.priority.ni_9.conf1.ni_11._arrow._first_c Bool)
(declare-var reconfiguration.ni_2.range_monitor.ni_7.latch.__latch_2_c Bool)
(declare-var reconfiguration.ni_2.range_monitor.ni_7.latch.ni_10._arrow._first_c Bool)
(declare-var reconfiguration.ni_2.range_monitor.ni_8.conf1.__conf1_3_c Int)
(declare-var reconfiguration.ni_2.range_monitor.ni_8.conf1.ni_11._arrow._first_c Bool)
(declare-var reconfiguration.ni_3.priority.ni_9.conf1.__conf1_3_c Int)
(declare-var reconfiguration.ni_3.priority.ni_9.conf1.ni_11._arrow._first_c Bool)
(declare-var reconfiguration.ni_4.range_monitor.ni_7.latch.__latch_2_c Bool)
(declare-var reconfiguration.ni_4.range_monitor.ni_7.latch.ni_10._arrow._first_c Bool)
(declare-var reconfiguration.ni_4.range_monitor.ni_8.conf1.__conf1_3_c Int)
(declare-var reconfiguration.ni_4.range_monitor.ni_8.conf1.ni_11._arrow._first_c Bool)
(declare-var reconfiguration.ni_5.priority.ni_9.conf1.__conf1_3_c Int)
(declare-var reconfiguration.ni_5.priority.ni_9.conf1.ni_11._arrow._first_c Bool)
(declare-var reconfiguration.ni_6.range_monitor.ni_7.latch.__latch_2_c Bool)
(declare-var reconfiguration.ni_6.range_monitor.ni_7.latch.ni_10._arrow._first_c Bool)
(declare-var reconfiguration.ni_6.range_monitor.ni_8.conf1.__conf1_3_c Int)
(declare-var reconfiguration.ni_6.range_monitor.ni_8.conf1.ni_11._arrow._first_c Bool)
(declare-var reconfiguration.ni_0.conf1.__conf1_3_m Int)
(declare-var reconfiguration.ni_0.conf1.ni_11._arrow._first_m Bool)
(declare-var reconfiguration.ni_1.priority.ni_9.conf1.__conf1_3_m Int)
(declare-var reconfiguration.ni_1.priority.ni_9.conf1.ni_11._arrow._first_m Bool)
(declare-var reconfiguration.ni_2.range_monitor.ni_7.latch.__latch_2_m Bool)
(declare-var reconfiguration.ni_2.range_monitor.ni_7.latch.ni_10._arrow._first_m Bool)
(declare-var reconfiguration.ni_2.range_monitor.ni_8.conf1.__conf1_3_m Int)
(declare-var reconfiguration.ni_2.range_monitor.ni_8.conf1.ni_11._arrow._first_m Bool)
(declare-var reconfiguration.ni_3.priority.ni_9.conf1.__conf1_3_m Int)
(declare-var reconfiguration.ni_3.priority.ni_9.conf1.ni_11._arrow._first_m Bool)
(declare-var reconfiguration.ni_4.range_monitor.ni_7.latch.__latch_2_m Bool)
(declare-var reconfiguration.ni_4.range_monitor.ni_7.latch.ni_10._arrow._first_m Bool)
(declare-var reconfiguration.ni_4.range_monitor.ni_8.conf1.__conf1_3_m Int)
(declare-var reconfiguration.ni_4.range_monitor.ni_8.conf1.ni_11._arrow._first_m Bool)
(declare-var reconfiguration.ni_5.priority.ni_9.conf1.__conf1_3_m Int)
(declare-var reconfiguration.ni_5.priority.ni_9.conf1.ni_11._arrow._first_m Bool)
(declare-var reconfiguration.ni_6.range_monitor.ni_7.latch.__latch_2_m Bool)
(declare-var reconfiguration.ni_6.range_monitor.ni_7.latch.ni_10._arrow._first_m Bool)
(declare-var reconfiguration.ni_6.range_monitor.ni_8.conf1.__conf1_3_m Int)
(declare-var reconfiguration.ni_6.range_monitor.ni_8.conf1.ni_11._arrow._first_m Bool)
(declare-var reconfiguration.ni_0.conf1.__conf1_3_x Int)
(declare-var reconfiguration.ni_0.conf1.ni_11._arrow._first_x Bool)
(declare-var reconfiguration.ni_1.priority.ni_9.conf1.__conf1_3_x Int)
(declare-var reconfiguration.ni_1.priority.ni_9.conf1.ni_11._arrow._first_x Bool)
(declare-var reconfiguration.ni_2.range_monitor.ni_7.latch.__latch_2_x Bool)
(declare-var reconfiguration.ni_2.range_monitor.ni_7.latch.ni_10._arrow._first_x Bool)
(declare-var reconfiguration.ni_2.range_monitor.ni_8.conf1.__conf1_3_x Int)
(declare-var reconfiguration.ni_2.range_monitor.ni_8.conf1.ni_11._arrow._first_x Bool)
(declare-var reconfiguration.ni_3.priority.ni_9.conf1.__conf1_3_x Int)
(declare-var reconfiguration.ni_3.priority.ni_9.conf1.ni_11._arrow._first_x Bool)
(declare-var reconfiguration.ni_4.range_monitor.ni_7.latch.__latch_2_x Bool)
(declare-var reconfiguration.ni_4.range_monitor.ni_7.latch.ni_10._arrow._first_x Bool)
(declare-var reconfiguration.ni_4.range_monitor.ni_8.conf1.__conf1_3_x Int)
(declare-var reconfiguration.ni_4.range_monitor.ni_8.conf1.ni_11._arrow._first_x Bool)
(declare-var reconfiguration.ni_5.priority.ni_9.conf1.__conf1_3_x Int)
(declare-var reconfiguration.ni_5.priority.ni_9.conf1.ni_11._arrow._first_x Bool)
(declare-var reconfiguration.ni_6.range_monitor.ni_7.latch.__latch_2_x Bool)
(declare-var reconfiguration.ni_6.range_monitor.ni_7.latch.ni_10._arrow._first_x Bool)
(declare-var reconfiguration.ni_6.range_monitor.ni_8.conf1.__conf1_3_x Int)
(declare-var reconfiguration.ni_6.range_monitor.ni_8.conf1.ni_11._arrow._first_x Bool)
(declare-var reconfiguration.__reconfiguration_1 Bool)
(declare-var reconfiguration.corrupt1 Bool)
(declare-var reconfiguration.corrupt2 Bool)
(declare-var reconfiguration.corrupt3 Bool)
(declare-var reconfiguration.in_command1 Bool)
(declare-var reconfiguration.in_command2 Bool)
(declare-var reconfiguration.in_command3 Bool)
(declare-var reconfiguration.min Real)
(declare-var reconfiguration.out_of_range1 Bool)
(declare-var reconfiguration.out_of_range2 Bool)
(declare-var reconfiguration.out_of_range3 Bool)
(declare-var reconfiguration.ranged_sensor1 Real)
(declare-var reconfiguration.ranged_sensor2 Real)
(declare-var reconfiguration.ranged_sensor3 Real)
(declare-var reconfiguration.safe_command1 Real)
(declare-var reconfiguration.safe_command2 Real)
(declare-var reconfiguration.safe_command3 Real)
(declare-rel reconfiguration_reset (Int Bool Int Bool Bool Bool Int Bool Int Bool Bool Bool Int Bool Int Bool Bool Bool Int Bool Int Bool Int Bool Bool Bool Int Bool Int Bool Bool Bool Int Bool Int Bool Bool Bool Int Bool))
(declare-rel reconfiguration_step (Real Real Real Real Bool Int Bool Int Bool Bool Bool Int Bool Int Bool Bool Bool Int Bool Int Bool Bool Bool Int Bool Int Bool Int Bool Bool Bool Int Bool Int Bool Bool Bool Int Bool Int Bool Bool Bool Int Bool))

(rule (=> 
  (and 
       
       (range_monitor_reset reconfiguration.ni_6.range_monitor.ni_7.latch.__latch_2_c
                            reconfiguration.ni_6.range_monitor.ni_7.latch.ni_10._arrow._first_c
                            reconfiguration.ni_6.range_monitor.ni_8.conf1.__conf1_3_c
                            reconfiguration.ni_6.range_monitor.ni_8.conf1.ni_11._arrow._first_c
                            reconfiguration.ni_6.range_monitor.ni_7.latch.__latch_2_m
                            reconfiguration.ni_6.range_monitor.ni_7.latch.ni_10._arrow._first_m
                            reconfiguration.ni_6.range_monitor.ni_8.conf1.__conf1_3_m
                            reconfiguration.ni_6.range_monitor.ni_8.conf1.ni_11._arrow._first_m)
       (priority_reset reconfiguration.ni_5.priority.ni_9.conf1.__conf1_3_c
                       reconfiguration.ni_5.priority.ni_9.conf1.ni_11._arrow._first_c
                       reconfiguration.ni_5.priority.ni_9.conf1.__conf1_3_m
                       reconfiguration.ni_5.priority.ni_9.conf1.ni_11._arrow._first_m)
       (range_monitor_reset reconfiguration.ni_4.range_monitor.ni_7.latch.__latch_2_c
                            reconfiguration.ni_4.range_monitor.ni_7.latch.ni_10._arrow._first_c
                            reconfiguration.ni_4.range_monitor.ni_8.conf1.__conf1_3_c
                            reconfiguration.ni_4.range_monitor.ni_8.conf1.ni_11._arrow._first_c
                            reconfiguration.ni_4.range_monitor.ni_7.latch.__latch_2_m
                            reconfiguration.ni_4.range_monitor.ni_7.latch.ni_10._arrow._first_m
                            reconfiguration.ni_4.range_monitor.ni_8.conf1.__conf1_3_m
                            reconfiguration.ni_4.range_monitor.ni_8.conf1.ni_11._arrow._first_m)
       (priority_reset reconfiguration.ni_3.priority.ni_9.conf1.__conf1_3_c
                       reconfiguration.ni_3.priority.ni_9.conf1.ni_11._arrow._first_c
                       reconfiguration.ni_3.priority.ni_9.conf1.__conf1_3_m
                       reconfiguration.ni_3.priority.ni_9.conf1.ni_11._arrow._first_m)
       (range_monitor_reset reconfiguration.ni_2.range_monitor.ni_7.latch.__latch_2_c
                            reconfiguration.ni_2.range_monitor.ni_7.latch.ni_10._arrow._first_c
                            reconfiguration.ni_2.range_monitor.ni_8.conf1.__conf1_3_c
                            reconfiguration.ni_2.range_monitor.ni_8.conf1.ni_11._arrow._first_c
                            reconfiguration.ni_2.range_monitor.ni_7.latch.__latch_2_m
                            reconfiguration.ni_2.range_monitor.ni_7.latch.ni_10._arrow._first_m
                            reconfiguration.ni_2.range_monitor.ni_8.conf1.__conf1_3_m
                            reconfiguration.ni_2.range_monitor.ni_8.conf1.ni_11._arrow._first_m)
       (priority_reset reconfiguration.ni_1.priority.ni_9.conf1.__conf1_3_c
                       reconfiguration.ni_1.priority.ni_9.conf1.ni_11._arrow._first_c
                       reconfiguration.ni_1.priority.ni_9.conf1.__conf1_3_m
                       reconfiguration.ni_1.priority.ni_9.conf1.ni_11._arrow._first_m)
       (conf1_reset reconfiguration.ni_0.conf1.__conf1_3_c
                    reconfiguration.ni_0.conf1.ni_11._arrow._first_c
                    reconfiguration.ni_0.conf1.__conf1_3_m
                    reconfiguration.ni_0.conf1.ni_11._arrow._first_m)
  )
  (reconfiguration_reset reconfiguration.ni_0.conf1.__conf1_3_c
                         reconfiguration.ni_0.conf1.ni_11._arrow._first_c
                         reconfiguration.ni_1.priority.ni_9.conf1.__conf1_3_c
                         reconfiguration.ni_1.priority.ni_9.conf1.ni_11._arrow._first_c
                         reconfiguration.ni_2.range_monitor.ni_7.latch.__latch_2_c
                         reconfiguration.ni_2.range_monitor.ni_7.latch.ni_10._arrow._first_c
                         reconfiguration.ni_2.range_monitor.ni_8.conf1.__conf1_3_c
                         reconfiguration.ni_2.range_monitor.ni_8.conf1.ni_11._arrow._first_c
                         reconfiguration.ni_3.priority.ni_9.conf1.__conf1_3_c
                         reconfiguration.ni_3.priority.ni_9.conf1.ni_11._arrow._first_c
                         reconfiguration.ni_4.range_monitor.ni_7.latch.__latch_2_c
                         reconfiguration.ni_4.range_monitor.ni_7.latch.ni_10._arrow._first_c
                         reconfiguration.ni_4.range_monitor.ni_8.conf1.__conf1_3_c
                         reconfiguration.ni_4.range_monitor.ni_8.conf1.ni_11._arrow._first_c
                         reconfiguration.ni_5.priority.ni_9.conf1.__conf1_3_c
                         reconfiguration.ni_5.priority.ni_9.conf1.ni_11._arrow._first_c
                         reconfiguration.ni_6.range_monitor.ni_7.latch.__latch_2_c
                         reconfiguration.ni_6.range_monitor.ni_7.latch.ni_10._arrow._first_c
                         reconfiguration.ni_6.range_monitor.ni_8.conf1.__conf1_3_c
                         reconfiguration.ni_6.range_monitor.ni_8.conf1.ni_11._arrow._first_c
                         reconfiguration.ni_0.conf1.__conf1_3_m
                         reconfiguration.ni_0.conf1.ni_11._arrow._first_m
                         reconfiguration.ni_1.priority.ni_9.conf1.__conf1_3_m
                         reconfiguration.ni_1.priority.ni_9.conf1.ni_11._arrow._first_m
                         reconfiguration.ni_2.range_monitor.ni_7.latch.__latch_2_m
                         reconfiguration.ni_2.range_monitor.ni_7.latch.ni_10._arrow._first_m
                         reconfiguration.ni_2.range_monitor.ni_8.conf1.__conf1_3_m
                         reconfiguration.ni_2.range_monitor.ni_8.conf1.ni_11._arrow._first_m
                         reconfiguration.ni_3.priority.ni_9.conf1.__conf1_3_m
                         reconfiguration.ni_3.priority.ni_9.conf1.ni_11._arrow._first_m
                         reconfiguration.ni_4.range_monitor.ni_7.latch.__latch_2_m
                         reconfiguration.ni_4.range_monitor.ni_7.latch.ni_10._arrow._first_m
                         reconfiguration.ni_4.range_monitor.ni_8.conf1.__conf1_3_m
                         reconfiguration.ni_4.range_monitor.ni_8.conf1.ni_11._arrow._first_m
                         reconfiguration.ni_5.priority.ni_9.conf1.__conf1_3_m
                         reconfiguration.ni_5.priority.ni_9.conf1.ni_11._arrow._first_m
                         reconfiguration.ni_6.range_monitor.ni_7.latch.__latch_2_m
                         reconfiguration.ni_6.range_monitor.ni_7.latch.ni_10._arrow._first_m
                         reconfiguration.ni_6.range_monitor.ni_8.conf1.__conf1_3_m
                         reconfiguration.ni_6.range_monitor.ni_8.conf1.ni_11._arrow._first_m)
))

; Step rule with Assertions 
(rule (=> 
  (and 
  (and (= reconfiguration.min (- 25.0))
       (and (= reconfiguration.ni_6.range_monitor.ni_7.latch.__latch_2_m reconfiguration.ni_6.range_monitor.ni_7.latch.__latch_2_c)
            (= reconfiguration.ni_6.range_monitor.ni_7.latch.ni_10._arrow._first_m reconfiguration.ni_6.range_monitor.ni_7.latch.ni_10._arrow._first_c)
            (= reconfiguration.ni_6.range_monitor.ni_8.conf1.__conf1_3_m reconfiguration.ni_6.range_monitor.ni_8.conf1.__conf1_3_c)
            (= reconfiguration.ni_6.range_monitor.ni_8.conf1.ni_11._arrow._first_m reconfiguration.ni_6.range_monitor.ni_8.conf1.ni_11._arrow._first_c)
            )
       (range_monitor_step reconfiguration.sensor_value1
                           0.0
                           reconfiguration.min
                           25.0
                           10
                           reconfiguration.out_of_range1
                           reconfiguration.corrupt1
                           reconfiguration.ranged_sensor1
                           reconfiguration.ni_6.range_monitor.ni_7.latch.__latch_2_m
                           reconfiguration.ni_6.range_monitor.ni_7.latch.ni_10._arrow._first_m
                           reconfiguration.ni_6.range_monitor.ni_8.conf1.__conf1_3_m
                           reconfiguration.ni_6.range_monitor.ni_8.conf1.ni_11._arrow._first_m
                           reconfiguration.ni_6.range_monitor.ni_7.latch.__latch_2_x
                           reconfiguration.ni_6.range_monitor.ni_7.latch.ni_10._arrow._first_x
                           reconfiguration.ni_6.range_monitor.ni_8.conf1.__conf1_3_x
                           reconfiguration.ni_6.range_monitor.ni_8.conf1.ni_11._arrow._first_x)
       (and (= reconfiguration.ni_5.priority.ni_9.conf1.__conf1_3_m reconfiguration.ni_5.priority.ni_9.conf1.__conf1_3_c)
            (= reconfiguration.ni_5.priority.ni_9.conf1.ni_11._arrow._first_m reconfiguration.ni_5.priority.ni_9.conf1.ni_11._arrow._first_c)
            )
       (priority_step reconfiguration.ranged_sensor1
                      0.0
                      reconfiguration.corrupt1
                      false
                      5
                      reconfiguration.safe_command1
                      reconfiguration.in_command1
                      reconfiguration.ni_5.priority.ni_9.conf1.__conf1_3_m
                      reconfiguration.ni_5.priority.ni_9.conf1.ni_11._arrow._first_m
                      reconfiguration.ni_5.priority.ni_9.conf1.__conf1_3_x
                      reconfiguration.ni_5.priority.ni_9.conf1.ni_11._arrow._first_x)
       (and (= reconfiguration.ni_4.range_monitor.ni_7.latch.__latch_2_m reconfiguration.ni_4.range_monitor.ni_7.latch.__latch_2_c)
            (= reconfiguration.ni_4.range_monitor.ni_7.latch.ni_10._arrow._first_m reconfiguration.ni_4.range_monitor.ni_7.latch.ni_10._arrow._first_c)
            (= reconfiguration.ni_4.range_monitor.ni_8.conf1.__conf1_3_m reconfiguration.ni_4.range_monitor.ni_8.conf1.__conf1_3_c)
            (= reconfiguration.ni_4.range_monitor.ni_8.conf1.ni_11._arrow._first_m reconfiguration.ni_4.range_monitor.ni_8.conf1.ni_11._arrow._first_c)
            )
       (range_monitor_step reconfiguration.sensor_value2
                           0.0
                           reconfiguration.min
                           25.0
                           12
                           reconfiguration.out_of_range2
                           reconfiguration.corrupt2
                           reconfiguration.ranged_sensor2
                           reconfiguration.ni_4.range_monitor.ni_7.latch.__latch_2_m
                           reconfiguration.ni_4.range_monitor.ni_7.latch.ni_10._arrow._first_m
                           reconfiguration.ni_4.range_monitor.ni_8.conf1.__conf1_3_m
                           reconfiguration.ni_4.range_monitor.ni_8.conf1.ni_11._arrow._first_m
                           reconfiguration.ni_4.range_monitor.ni_7.latch.__latch_2_x
                           reconfiguration.ni_4.range_monitor.ni_7.latch.ni_10._arrow._first_x
                           reconfiguration.ni_4.range_monitor.ni_8.conf1.__conf1_3_x
                           reconfiguration.ni_4.range_monitor.ni_8.conf1.ni_11._arrow._first_x)
       (and (= reconfiguration.ni_3.priority.ni_9.conf1.__conf1_3_m reconfiguration.ni_3.priority.ni_9.conf1.__conf1_3_c)
            (= reconfiguration.ni_3.priority.ni_9.conf1.ni_11._arrow._first_m reconfiguration.ni_3.priority.ni_9.conf1.ni_11._arrow._first_c)
            )
       (priority_step reconfiguration.ranged_sensor2
                      0.0
                      reconfiguration.corrupt2
                      reconfiguration.in_command1
                      7
                      reconfiguration.safe_command2
                      reconfiguration.in_command2
                      reconfiguration.ni_3.priority.ni_9.conf1.__conf1_3_m
                      reconfiguration.ni_3.priority.ni_9.conf1.ni_11._arrow._first_m
                      reconfiguration.ni_3.priority.ni_9.conf1.__conf1_3_x
                      reconfiguration.ni_3.priority.ni_9.conf1.ni_11._arrow._first_x)
       (and (= reconfiguration.ni_2.range_monitor.ni_7.latch.__latch_2_m reconfiguration.ni_2.range_monitor.ni_7.latch.__latch_2_c)
            (= reconfiguration.ni_2.range_monitor.ni_7.latch.ni_10._arrow._first_m reconfiguration.ni_2.range_monitor.ni_7.latch.ni_10._arrow._first_c)
            (= reconfiguration.ni_2.range_monitor.ni_8.conf1.__conf1_3_m reconfiguration.ni_2.range_monitor.ni_8.conf1.__conf1_3_c)
            (= reconfiguration.ni_2.range_monitor.ni_8.conf1.ni_11._arrow._first_m reconfiguration.ni_2.range_monitor.ni_8.conf1.ni_11._arrow._first_c)
            )
       (range_monitor_step reconfiguration.sensor_value3
                           0.0
                           reconfiguration.min
                           25.0
                           15
                           reconfiguration.out_of_range3
                           reconfiguration.corrupt3
                           reconfiguration.ranged_sensor3
                           reconfiguration.ni_2.range_monitor.ni_7.latch.__latch_2_m
                           reconfiguration.ni_2.range_monitor.ni_7.latch.ni_10._arrow._first_m
                           reconfiguration.ni_2.range_monitor.ni_8.conf1.__conf1_3_m
                           reconfiguration.ni_2.range_monitor.ni_8.conf1.ni_11._arrow._first_m
                           reconfiguration.ni_2.range_monitor.ni_7.latch.__latch_2_x
                           reconfiguration.ni_2.range_monitor.ni_7.latch.ni_10._arrow._first_x
                           reconfiguration.ni_2.range_monitor.ni_8.conf1.__conf1_3_x
                           reconfiguration.ni_2.range_monitor.ni_8.conf1.ni_11._arrow._first_x)
       (and (= reconfiguration.ni_1.priority.ni_9.conf1.__conf1_3_m reconfiguration.ni_1.priority.ni_9.conf1.__conf1_3_c)
            (= reconfiguration.ni_1.priority.ni_9.conf1.ni_11._arrow._first_m reconfiguration.ni_1.priority.ni_9.conf1.ni_11._arrow._first_c)
            )
       (priority_step reconfiguration.ranged_sensor3
                      0.0
                      reconfiguration.corrupt3
                      (or reconfiguration.in_command1 reconfiguration.in_command2)
                      11
                      reconfiguration.safe_command3
                      reconfiguration.in_command3
                      reconfiguration.ni_1.priority.ni_9.conf1.__conf1_3_m
                      reconfiguration.ni_1.priority.ni_9.conf1.ni_11._arrow._first_m
                      reconfiguration.ni_1.priority.ni_9.conf1.__conf1_3_x
                      reconfiguration.ni_1.priority.ni_9.conf1.ni_11._arrow._first_x)
       (= reconfiguration.no_command (not (or (or reconfiguration.in_command1 reconfiguration.in_command2) reconfiguration.in_command3)))
       (and (= reconfiguration.ni_0.conf1.__conf1_3_m reconfiguration.ni_0.conf1.__conf1_3_c)
            (= reconfiguration.ni_0.conf1.ni_11._arrow._first_m reconfiguration.ni_0.conf1.ni_11._arrow._first_c)
            )
       (conf1_step reconfiguration.no_command
                   11
                   reconfiguration.__reconfiguration_1
                   reconfiguration.ni_0.conf1.__conf1_3_m
                   reconfiguration.ni_0.conf1.ni_11._arrow._first_m
                   reconfiguration.ni_0.conf1.__conf1_3_x
                   reconfiguration.ni_0.conf1.ni_11._arrow._first_x)
       (= reconfiguration.command (+ (+ reconfiguration.safe_command1 reconfiguration.safe_command2) reconfiguration.safe_command3))
       )
 (and (= reconfiguration.safe_value 0.0)
      (and (< reconfiguration.m1 reconfiguration.m2) (< reconfiguration.m2 reconfiguration.m3))
      (or (or (not reconfiguration.corrupt1) (not reconfiguration.corrupt2)) (not reconfiguration.corrupt3))
))
(reconfiguration_step reconfiguration.sensor_value1 reconfiguration.sensor_value2 reconfiguration.sensor_value3 reconfiguration.command reconfiguration.no_command reconfiguration.ni_0.conf1.__conf1_3_c reconfiguration.ni_0.conf1.ni_11._arrow._first_c reconfiguration.ni_1.priority.ni_9.conf1.__conf1_3_c reconfiguration.ni_1.priority.ni_9.conf1.ni_11._arrow._first_c reconfiguration.ni_2.range_monitor.ni_7.latch.__latch_2_c reconfiguration.ni_2.range_monitor.ni_7.latch.ni_10._arrow._first_c reconfiguration.ni_2.range_monitor.ni_8.conf1.__conf1_3_c reconfiguration.ni_2.range_monitor.ni_8.conf1.ni_11._arrow._first_c reconfiguration.ni_3.priority.ni_9.conf1.__conf1_3_c reconfiguration.ni_3.priority.ni_9.conf1.ni_11._arrow._first_c reconfiguration.ni_4.range_monitor.ni_7.latch.__latch_2_c reconfiguration.ni_4.range_monitor.ni_7.latch.ni_10._arrow._first_c reconfiguration.ni_4.range_monitor.ni_8.conf1.__conf1_3_c reconfiguration.ni_4.range_monitor.ni_8.conf1.ni_11._arrow._first_c reconfiguration.ni_5.priority.ni_9.conf1.__conf1_3_c reconfiguration.ni_5.priority.ni_9.conf1.ni_11._arrow._first_c reconfiguration.ni_6.range_monitor.ni_7.latch.__latch_2_c reconfiguration.ni_6.range_monitor.ni_7.latch.ni_10._arrow._first_c reconfiguration.ni_6.range_monitor.ni_8.conf1.__conf1_3_c reconfiguration.ni_6.range_monitor.ni_8.conf1.ni_11._arrow._first_c reconfiguration.ni_0.conf1.__conf1_3_x reconfiguration.ni_0.conf1.ni_11._arrow._first_x reconfiguration.ni_1.priority.ni_9.conf1.__conf1_3_x reconfiguration.ni_1.priority.ni_9.conf1.ni_11._arrow._first_x reconfiguration.ni_2.range_monitor.ni_7.latch.__latch_2_x reconfiguration.ni_2.range_monitor.ni_7.latch.ni_10._arrow._first_x reconfiguration.ni_2.range_monitor.ni_8.conf1.__conf1_3_x reconfiguration.ni_2.range_monitor.ni_8.conf1.ni_11._arrow._first_x reconfiguration.ni_3.priority.ni_9.conf1.__conf1_3_x reconfiguration.ni_3.priority.ni_9.conf1.ni_11._arrow._first_x reconfiguration.ni_4.range_monitor.ni_7.latch.__latch_2_x reconfiguration.ni_4.range_monitor.ni_7.latch.ni_10._arrow._first_x reconfiguration.ni_4.range_monitor.ni_8.conf1.__conf1_3_x reconfiguration.ni_4.range_monitor.ni_8.conf1.ni_11._arrow._first_x reconfiguration.ni_5.priority.ni_9.conf1.__conf1_3_x reconfiguration.ni_5.priority.ni_9.conf1.ni_11._arrow._first_x reconfiguration.ni_6.range_monitor.ni_7.latch.__latch_2_x reconfiguration.ni_6.range_monitor.ni_7.latch.ni_10._arrow._first_x reconfiguration.ni_6.range_monitor.ni_8.conf1.__conf1_3_x reconfiguration.ni_6.range_monitor.ni_8.conf1.ni_11._arrow._first_x)
))

