!A C.G.P.A calculator program implemented using files
!Written by OKEMAKINDE SAMSON: 170699: COMPUTER SCIENCE: 200LEVEL
!LECTURER: DR AKINOLA
!DATE: AUGUST 2014 @ UNIVERSITY OF IBADAN COMPUTER SCIENCE DEPARTMENT
!Data to be used must be entered in the format: coursecode	score	unit (separated by single tabs)

Program CGPA
Character(len=20)::name
Character*6::coursecode,remark,sex
Character*15::department
integer::matric,i,gp,unit,totalunit,wgp,totalfailedunit,totalpassedunit
Real::totalwgp,realscore,mycgpa

INTEGER error
	OPEN(UNIT= 4, FILE='CGPAINPUT.DAT',STATUS='OLD',ACTION='READ',IOSTAT=error)
	OPEN(UNIT= 5, FILE='TRANSCRIPT.DAT',STATUS='REPLACE',ACTION='WRITE',IOSTAT=error)
totalwgp=0
totalunit=0
realscore=0
totalfailedunit=0
totalpassedunit=0
wgp=0
gp=0
remark='PASSED'

Write(*,*)'Welcome to the CGPA Calculator'
Write(*,*)'What is your Name?:   '
Read(*,*)name
Write(*,*)'What is your Matric Number?:   '
Read(*,*)matric
Write(*,*)'What Department?:   '
Read(*,*)department
Write(*,*)'Sex:   '
Read(*,*)sex
Write(5,*)''
Write(5,*)'PROVISIONAL DEPARTMENTAL REPORT SHEET'
Write(5,*)department,' DEPARTMENT'
Write(5,*)'NAME:	',name
Write(5,*)'MATRIC NUMBER:	',matric
Write(5,*)'SEX:	',sex
Write(5,*)''
Write(5,*)'***********************************************************************************'
Write(5,*)'COURSE       ','SCORE  ','	UNITS','   GP','     WGP  ','	 REMARK'
Write(5,*)'***********************************************************************************'

Do i=1,10
	Read(4,*)coursecode,realscore,unit	
	
	If (realscore<0)then
		write(*,*)'Your score is invalid'
    Else if(realscore>100)then
  		write(*,*)'Your score is invalid'
	Else if(realscore<40)then
  		gp=0
        totalfailedunit=totalfailedunit+unit
        remark='FAILED'
	Else if(realscore<45)then
  		gp=1
        remark='PASSED'
	Else if(realscore<50)then
  		gp=2
        remark='PASSED'
	Else if(realscore<55)then
  		gp=3
        remark='PASSED'
	Else if(realscore<60)then
  		gp=4
        remark='PASSED'
	Else if(realscore<65)then
  		gp=5
        remark='PASSED'
	Else if(realscore<70)then
  		gp=6
        remark='PASSED'
	Else 
  		gp=7
        remark='PASSED'
	End if

! ending converting realscore to gp
    wgp=gp*unit
	totalwgp=totalwgp+wgp
    totalunit=totalunit+unit
    Write(5,7)coursecode,realscore,unit,gp,wgp,remark
    7 FORMAT(A6,7X,F5.1,7X,I1,7X,I1,7X,I2,7X,A6)
End do
Write(5,*)'******************************************************************'
mycgpa=(totalwgp/totalunit)
totalpassedunit=totalunit-totalfailedunit
Write(5,*)'-------------------------------------------------------------------------------'
Write(5,14)totalunit,totalpassedunit
14 FORMAT('Total Units Taken=',I2,'		','Total Units Passed=',I2)
Write(5,2)totalwgp,mycgpa
2 Format('Total WGP= ',F5.1,'		','Cumulative Grade Point Average= ',F3.1)
Write(5,*)''
Write(5,*)''
Write(5,*)''
Write(5,*)'.....................................'
Write(5,*)'Head Of Department'
Write(5,*)'Any alteration renders this document invalid.'


Write(*,*)i,' records processed. Check file Transcript.dat for the result'
Write(*,*)'			Thanks for using the program'

CLOSE(Unit=4)
CLOSE(Unit=5)
STOP
End program