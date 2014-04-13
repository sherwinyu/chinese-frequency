Mandarin Syllable Frequency Counts for Chinese Characters

Copyright (c) 2000 Chih-Hao Tsai
Date: April 1, 2000
License: GPL (http://www.gnu.org/copyleft/gpl.html)




Table of Contents

	Introduction
	Procedure
	Results
	Copyright Information
	Availability
	Contact Information




1. Introduction

	The majority of Chinese characters have single pronunciations, but a number of them have more than one pronunciations. Since pronunciations of a multiple-pronunciation character are in general not equally frequently used, it is therefore important to know the relative frequencies of the pronunciations.

	Although there are quite a few Chinese word lists available on the net (see A Review of Chinese Word Lists Accessible On the Internet [http://www.geocities.com/hao510/wordlist/] for a review), not many of them contain pronunciation information. DraftDict.txt (can be found in the above-mentioned page) contains pinyin strings for words, but unfortunately there are too many errors which cannot be easily corrected by a computer program. Therefore, I have chosen libtabe's (can be found in the above-mentioned page; latest version available at Libtabe's website [http://libtabe.sourceforge.net]) lexicon as the source for the present analysis. Libtabe's lexicon is copyrighted by Pai-Hsiang Hsiao (phsiao@tcts.seed.net.tw) and Chih-Hao Tsai (http://www.geocities.com/hao520/).

	Libtabe lexicon (version 0.1.3) consists of 138,612 words, with zhuyin strings available for most of the words. After removing some obvious errors, such as the number of syllables does not match the number of characters, 111,417 valid entries were retained for further analysis. Although word frequencies are also included in the libtabe lexicon, they were not used in the present analysis.




2. Procedure

	The procedure was quite straightforward. It iterated through the 111,417 words and counted the frequency of occurrence for each pronunciation of each character. As a result, the frequency was type frequency. For example, if a character is pronounced "hui4" in 402 words in the lexicon, the frequency will be 402. To stress again, the word frequencies were not used. This is because in libtabe lexicon, all possible pronunciations for a character are listed for single-character entries. If word frequencies are used, it will weight all pronunciations equally. This is not good because we know that when a character is used as a single-character word, it usually has only one pronunciation. Since there is no indication with regard to which one is the word pronunciation for that character, I have decided not to use the word frequencies at all. In fact, for the present analysis, type frequency may actually be better than token frequency.




3. Results

	Of the 13,060 characters defined in the BIG5 coding scheme, 2 have four pronunciations, 47 have three pronunciations, 491 have two pronunciations, 12,484 have single pronunciation, and 36 have no pronunciation information available. The file character-syllable.txt contains the results. The file has 13,060 lines, each line begins with a character, followed by its total number of pronunciation(s) and the information for each pronunciation. See the following fragment of the file for example (the characters are in BIG5 code).


	¤¿ 1   £££º£¶  xiong1   23
	¤À 2     £w£´    fen1  136   £w£´£¿    fen4    4
	¤Á 2   £¢£¸£®    qie1   34 £¢£¸£®£¿    qie4   14


	The first field is character, and the second field is number of pronunciations. There are three fields for each pronunciation: zhuyin (in BIG5), pinyin, and frequency. If there are more than one pronunciations, the pronunciations are sorted by frequency. So the first pronunciations in the list are always the most frequent pronunciations. The file is sorted by character.




4. Copyright Information

	The Mandarin Syllable Frequency Counts for Chinese Characters are free software; you can redistribute them and/or modify them under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

	The Mandarin Syllable Frequency Counts for Chinese Characters are distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

	You should have received a copy of the GNU General Public License along with the Mandarin Syllable Frequency Counts for Chinese Characters; if not, write to the Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.




5. Availability

	Download: character-syllable.zip




6. Contact Information

	Author: Chih-Hao Tsai
	Email: hao520@yahoo.com
	Homepage: http://www.geocities.com/hao520

