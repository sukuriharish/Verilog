module vowel_check;
  reg [7:0] char = "e";
  initial begin
    if (char=="a" || char=="e" || char=="i" || char=="o" || char=="u")
      $display("%c is a Vowel", char);
    else
      $display("%c is a Consonant", char);
  end
endmodule