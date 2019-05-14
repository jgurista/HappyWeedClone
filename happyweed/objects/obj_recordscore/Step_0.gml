/// @description Insert description here
// You can write your code in this editor
/// Input
// Variables



// Backspace
if(keyboard_check_pressed(vk_backspace))
{
      inputText = string_delete(inputText, cursorPos-1, 1);
      //inputTimer = inputWait;
      cursorPos-=1;
}
if(keyboard_string != "")
{
      var t = keyboard_string;
      inputText = string_insert(t, inputText, cursorPos);
      cursorPos+=string_length(t);
      keyboard_string = "";
}

// Cursor
if(keyboard_check_pressed(vk_left)){ cursorPos-=1; }
if(keyboard_check_pressed(vk_right)){ cursorPos+=1 ;}