position_1 = Position.find_by_id 1
position_2 = Position.find_by_id 2
position_3 = Position.find_by_id 3
position_4 = Position.find_by_id 4
position_5 = Position.find_by_id 5
position_6 = Position.find_by_id 6

Movement.seed([{:id =>  1, :position => position_1, :url => "movements/1/1/large/1.png"},
               {:id =>  2, :position => position_1, :url => "movements/1/1/large/2.png"},
               {:id =>  3, :position => position_1, :url => "movements/1/1/large/3.png"},
               {:id =>  4, :position => position_1, :url => "movements/1/1/large/4.png"},
               {:id =>  5, :position => position_1, :url => "movements/1/1/large/5.png"},
               {:id =>  6, :position => position_1, :url => "movements/1/1/large/6.png"},
               {:id =>  7, :position => position_1, :url => "movements/1/1/large/7.png"},
               {:id =>  8, :position => position_1, :url => "movements/1/1/large/8.png"},
               {:id =>  9, :position => position_2, :url => "movements/1/2/large/1.png"},
               {:id => 10, :position => position_2, :url => "movements/1/2/large/2.png"},
               {:id => 11, :position => position_2, :url => "movements/1/2/large/3.png"},
               {:id => 12, :position => position_2, :url => "movements/1/2/large/4.png"},
               {:id => 13, :position => position_2, :url => "movements/1/2/large/5.png"},
               {:id => 14, :position => position_2, :url => "movements/1/2/large/6.png"},
               {:id => 15, :position => position_3, :url => "movements/1/3/large/1.png"},
               {:id => 16, :position => position_3, :url => "movements/1/3/large/2.png"},
               {:id => 17, :position => position_3, :url => "movements/1/3/large/3.png"},
               {:id => 18, :position => position_3, :url => "movements/1/3/large/4.png"},
               {:id => 19, :position => position_3, :url => "movements/1/3/large/5.png"},
               {:id => 20, :position => position_3, :url => "movements/1/3/large/6.png"},
               {:id => 21, :position => position_4, :url => "movements/2/1/large/1.png"},
               {:id => 22, :position => position_4, :url => "movements/2/1/large/2.png"},
               {:id => 23, :position => position_5, :url => "movements/2/2/large/1.png"},
               {:id => 24, :position => position_5, :url => "movements/2/2/large/2.png"},
               {:id => 25, :position => position_6, :url => "movements/2/3/large/1.png"}])
