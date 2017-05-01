!program stringmanipulation 
Character::mystring*20,sub1*10
mystring='jim'//'nigga'
sub1=mystring(2:7)
mystring(3:7)='SPYD'
Write(2,7)mystring
Write(*,*)mystring.GT.sub1
7 FORMAT(A16)
Write(*,*)sub1
end