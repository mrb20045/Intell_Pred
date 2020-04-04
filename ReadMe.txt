

===============================================================================================
=	 										      =
=	                          Intelligence Protein Predictor by:                  	      =
=	 										      =		
=	 		       	    Mohammad Reza Bakhtiarizadeh                    	      = 
=	 		               Mohammad Sadegh Vafaei                        	      =
=	 		                    Aida Shomali                           	      =
=	      		                       	     					      =
=	 										      = 
=	  			        University of Tehran  	  		              =
=	 										      =
=	 			    Contact: mrbakhtiari@ut.ac.ir    			      =
=	 										      =
=	         Usage:  /path/to/Intell_Pred  options  /path/to/sequences.fasta	      =
=	 										      =
=============================================================================================== 


1) Introduction
	     
	     Intell_Pred is  a Support  Vector  Machine-based  classifier  to predict  the  
	     
	     intelligence  relate  proteins  based  on  12669 meaningful protein  sequence

	     features. It takes protein/DNA FASTA sequences as input, and generate  output

	     about  the  potential of a protein  to  be involved  in  learning or memmory.

	     Intell_Pred  depends on  two programs  (libsvm and iLearn)  and can be run on

	     Linux. Also,  it  use  TransDecoder  software  to convert  the  DNA sequences

	     (mRNA transcripts that converted to DNA) to protein. Morover, Intell_Pre only 

	        
	     consider protein seqeunces larger than 60 amino acides.
	    
	     


2) Pre-requisite
             
             It just need  python3  software  to be  installed  in your system. Also,  user 

	     should  make  sure  all t he following packages are installed in their  Python 

	     environment:  sys, os, shutil, scipy, argparse,  collections, platform,  math,
	    
	     re, numpy (1.13.1), sklearn (0.19.1), matplotlib (2.1.0), and pandas (0.20.1).

	     These python packages are needed for iLearn software (https://github.com/Superzchen/iLearn). 



3) Install dependencies
            
             Drag install.sh  file  to  terminal  for  automatic  installing all  of  the  
             
             dependencies. This will build and install the libsvm, TransDecoder and iLearn

	     software.
             
	     
	     		$ git clone https://github.com/mrb20045/Intell_Pred 
	     
	     		$ cd Intell_Pred/
	     
	    		$ chmod 777  /full/path/to/install.sh
	    		
	    		$ /full/path/to/install.sh
	    		
	    		
	     
	        
	     
4) Run Intell_Pred	     
	     	     
	     		$ /full/path/to/Intell_Pred    /full/path/to/Candidates.fa
	     


5) Output

	     The  results  will be stored  in Intell_Pred_Results(name of yout input).txt. 

	     An example of Intell_Pred  output is  presented here. The score  represents a 

	     protein's  probability  of  belonging  to  the  learning  or memory  classes. 

	     Intell_Pred applied  a probability score  >0.5 to  designate putative related

	     protein.  
	
	
	
	

                                                         ############################   
                                                         #  Intell_Pred Results    #  
                                                         #                          #
                                                         #    19/08/2017 16:16:03   #
                                                         ############################ 



Total number of processed sequences: 3 


______________________________________________________________________________________________________________________________________________________

  Protein_ID	               Intelligence (Score)	Type    	Learning_Score	Memory_Score  
______________________________________________________________________________________________________________________________________________________
sp|P20272|CNR1_RAT 		Yes (0.99)		Memory		0.87			0.99 
______________________________________________________________________________________________________________________________________________________
sp|Q920P3|BRNP1_MOUSE 		Yes (0.99)		Memory		0.90			0.99 
______________________________________________________________________________________________________________________________________________________
sp|P43527|CASP1_RAT 		Yes (0.88)		Memory		0.50			0.52 
______________________________________________________________________________________________________________________________________________________

			Summary of the Resuts
_____________________________________________________________
Title		Score>0.5	Score>0.75	Score>0.90
_____________________________________________________________
Intelligence	3		3		3
Learning	2		2		0
Memory		3		2		2
_____________________________________________________________

