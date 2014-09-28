//message = get_string("Enter string","");
message = argument0;
seedstr = "";
for(i=1; i<=string_length(message); i+=1)
{
    seedstr += string(ord(string_char_at(message,i)));
}
intseed = real(string_copy(seedstr,1,9));
random_set_seed(intseed);
for(i=1; i<=string_length(message); i+=1)
{
    next = max(random(ord(string_char_at(message,i))),1);
    next = choose(next*i,next/i,next+i,next-i,next*-i) mod 2147483647;
    intseed = choose(intseed*next,intseed/next,intseed+next,intseed-next) mod 2147483647;
}
//show_message(intseed);
random_set_seed(intseed);
