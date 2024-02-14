 class sr_sequence_item extends uvm_sequence_item;

  

  rand logic  s;  
  rand logic  r;

  logic q;      
  logic qbar;
  
 
  `uvm_object_utils_begin(sr_sequence_item) 
     `uvm_field_int( r    ,UVM_ALL_ON)
     `uvm_field_int( s    ,UVM_ALL_ON)
     `uvm_field_int( q    ,UVM_ALL_ON)
     `uvm_field_int( qbar ,UVM_ALL_ON)
  `uvm_object_utils_end
  
  function new(string name="sr_sequence_item");
    super.new(name);
  endfunction
  
  
  function string input2string();
    return($sformatf(" s=%0b  r=%0b",s,r));
  endfunction
  
  
  function string output2string();
    return($sformatf(" q=%0b qbar=%0b", q,qbar));
  endfunction
    
  function string convert2string();
    return($sformatf({input2string(), " || ", output2string()}));
  endfunction
 
endclass:sr_sequence_item

    
