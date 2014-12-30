EHFinder
========

My first Git Repository: Perl script for dir walking certain searches
This script will be used to give better information about file searches
in my EH area on Box.com.

The Perl script will do the following:

  1.) CD to C:\Users\coop\Box Sync\Public\EH\.

  2.) Replace certain HEX strings (maybe not using hex?):
      a.) All occurrences of C3 C4 C4 C4 get replaced by 20 20 20 20 (4 spaces).
      b.) All occurrences of C0 C4 C4 C4 get replaced by 20 20 20 20 (4 spaces).
      c.) All occurrences of B3          get replaced by 20          (1 space ).

  3.) Launch a Windows Command Prompt "TREE /F > tree.txt".

  4.) Find each matching occurence of the target argument with tree.txt.

  5.) Work "backwards" to extract the full path to the matching occurence.





