#!/bin/bash
##NOTE: this script requires the use of associative arrays, which are only in bash 4 or higher. 
declare -A picture

#used to keep track of last position copy from script 
lineno=0
function goDark()
{
	for (( cnt = 0 ; cnt < 1; cnt++ )) do	 
		{
	  	 echo  $(sed -n "${lineno}p" ./lightside) >> darkside
		 lineno=$[ $lineno + 1]
	 	}
	 done 
}

function gitCommit()
{
	setCommitMessage
	
	#GIT_COMMITTER_DATE="`date`" git commit --amend --date "`date`"
	git add .
	git commit -m "${QUOTE}"
}

function gitPush()
{
	 git push -u origin master
}

function setCommitMessage()
{
	quotes[0]="Null Space"
	quotes[1]="'Never tell me the odds!'"
	quotes[2]="'Well, you said you wanted to be around when I made a mistake.' '…I take it back!'"
	quotes[3]="'You do have your moments. Not many, but you have them.'"
	quotes[4]="'I know.'"
	quotes[5]="'Ben! I can be a Jedi. Ben, tell him Im ready!' (Thumps head on ceiling.) 'Ow!'"
	quotes[6]="'Im not afraid.'"
	quotes[7]="'You will be.'"
	quotes[8]="'Now, witness the power of this fully operational battle station.'"
	quotes[9]="'…Scoundrel. I like that.'"
	quotes[10]="'I have a bad feeling about this.'"
	quotes[11]="'Hmm! Adventure. Hmmpf! Excitement. A Jedi craves not these things.'"
	quotes[12]="'Whos the more foolish; the fool, or the fool who follows him?'"
	quotes[13]="'That… is why you fail.'"
	quotes[14]="'Its worse.'"
	quotes[15]="'Thats no moon.'"
	quotes[16]="'Sorry about the mess.'"
	quotes[17]="'Ready are you? What know you of ready? For eight hundred years have I trained Jedi. My own counsel will I keep on who is to be trained. A Jedi must have the deepest commitment, the most serious mind. This one, a long time have I watched. All his life has he looked away… to the future, to the horizon. Never his mind on where he was. …Hmm? On what he was doing.'"
	quotes[18]="'If they follow standard Imperial procedure, theyll dump their garbage before they go to light-speed. Then we just… float away.' '…With the rest of the garbage.'"
	quotes[19]="'Laugh it up, fuzzball!'"
	quotes[20]="'I never doubted you! Wonderful!'"
	quotes[21]="'You will never find a more wretched hive of scum and villainy. …We must be cautious.'"
	quotes[22]="'Would somebody get this big walking carpet out of my way?!'"
	quotes[23]="'No reward is worth this.'"
	quotes[24]="'I happen to like… nice men.'"
	quotes[25]="'We would be honored if you would join us.'"
	quotes[26]="'So what I told you was true… from a certain point of view.' '…A certain point of view?!'"
	quotes[27]="'Your weapon… you will not need it.'"
	quotes[28]="'…Boring conversation anyway. Luke! Were gonna have company!'"
	quotes[29]="'…I think I just blasted it.'"
	quotes[30]="'Thats not true.'"
	quotes[31]="'Thats impossible.'"
	quotes[32]="'Search your feelings.'"
	quotes[33]="'Ill never join you.'"
	quotes[34]="'He certainly has courage.' '...Yeah, but what good is that if he gets himself killed?'"
	quotes[35]="'…Youve failed, your highness. I am a Jedi, as my father was before me.' '…So be it, Jedi.'"
	quotes[36]="'Only at the end do you realize the power of the Dark Side.'"
	quotes[37]="'Its not impossible. I used to bullseye womp rats in my T-16 back home, theyre not much bigger than two meters.'"
	quotes[38]="'Awww! But I was going into Tosche Station to pick up some power converters!!!'"
	quotes[39]="'ITS A TRAP.'"
	quotes[40]="'But how could they be jamming us if they dont know… that were… coming?'"
	quotes[41]="'He is as clumsy as he is stupid!'"
	quotes[42]="'Strike me down, and I will become more powerful than you could possibly imagine.'"
	quotes[43]="'STAY ON TARGET.'"
	quotes[44]="'…Its not fair! They promised me they fixed it! Its not my fault!'"
	quotes[45]="'You know, that little droid is going to cause me a lot of trouble.' '…Oh, he excels at that, sir.'"
	quotes[46]="'If youre saying that coming here was a bad idea, Im starting to agree with you.'"
	quotes[47]="'For over a thousand generations, the Jedi were the guardians of peace and justice in the Old Republic — before the dark times. Before the Empire.'"
	quotes[48]="'Shut him up or shut him down.'"
	quotes[49]="'Give yourself to the Dark Side. It is the only way you can save your friends. Yes; your thoughts betray you. Your feelings for them are strong. Especially for your… sister. So, you have a twin sister. Your feelings have now betrayed her too. Obi-Wan was wise to hide her from me. Now, his failure is complete. If you will not turn to the Dark Side… then perhaps she will…'"
	quotes[50]="'I find your lack of faith disturbing.'"
	quotes[51]="'Uh, we had a slight weapons malfunction, but uh… everythings perfectly all right now. Were fine. Were all fine here now, thank you.' (Winces.) 'Uh, how are you?'"
	quotes[52]="'You are a member of the rebel alliance, and a traitor.'"
	quotes[53]="'The circle is now complete.'"
	quotes[54]="'Hey, I think my eyes are getting better. Instead of a big dark blur, I see a big bright blur.' '…Theres nothing to see. I used to live here, you know.' '…Youre gonna die here, you know. Convenient.'"
	quotes[55]="'Why, you stuck up, half-witted, scruffy-looking Nerf herder.'"
	quotes[56]="'Ungh. And I thought they smelled bad on the outside.'"
	quotes[57]="'Would it help if I got out and pushed?!!' '...It might!″"
	quotes[58]="'You dont have to do this to impress me.'"
	quotes[59]="'Try not. Do… or do not. There is no try.'"
	quotes[60]="'Luminous beings are we, not this crude matter.'"
	quotes[61]="'All too easy.'"
	quotes[62]="'How you doin, Chewbecca? Still hanging around with this loser?'"
	quotes[63]="'I assure you, Lord Vader. My men are working as fast as they can.' '…Perhaps I can find new ways to motivate them.'"
	quotes[64]="'Apology accepted, Captain Needa.'"
	quotes[65]="'Youll find Im full of surprises!'"
	quotes[66]="'Yeah… youre a real hero.'"
	quotes[67]="'A Jedi Knight? Jeez, Im out of it for a little while, everyone gets delusions of grandeur!'"
	quotes[68]="'Im Luke Skywalker? Im here to rescue you!' '…Youre who?'"
	quotes[69]="'Everything is proceeding as I have foreseen.'"
	quotes[70]="'Bounty hunters! We dont need this scum.'"
	quotes[71]="'Boba Fett? Boba Fett? Where?'"
	quotes[72]="'Keep your distance, Chewie, but dont, yknow, look like youre keeping your distance.' (Grumbled questioning bark.) '…I dont know. Fly casual.'"
	quotes[73]="'What have you done?! Im BACKWARDS.'"
	quotes[74]="'You will find that it is you who are mistaken… about a great many things.'"
	quotes[75]="'Only a master of evil, Darth.'"
	quotes[76]="'We seem to be made to suffer. Its our lot in life.'"
	quotes[77]="'We have — ungh! — powerful friends. Youre going to regret this.' '…Im sure.″"
	quotes[78]="'Its against my programming to impersonate a deity.'"
	quotes[79]="'These arent the droids youre looking for.'"
	quotes[80]="'Arent you a little short for a Stormtrooper?'"
	quotes[81]="'Wait. I know that laugh…'"
	quotes[82]="'This is some rescue!'"
	quotes[83]="'Hes the brains, sweetheart!'"
	quotes[84]="'You are unwise to lower your defenses!'"
	quotes[85]="'Boy, its lucky you have these compartments!'"
	quotes[86]="'Travelling through hyperspace aint like dustin crops, boy!'"
	quotes[87]="'Theyre getting closer.' '…Oh yeah? Watch this.' (…Long pause — the engine sputters and dies.)"
	quotes[88]="'Dialogue-less: …Luke stares moodily at the two setting suns."
	quotes[89]="'Great, kid. Dont get cocky.'"
	quotes[90]="'You would prefer another target? A military target? Then name the system!'"
	quotes[91]="'R2-D2, you know better than to trust a strange computer!'"
	quotes[92]="'Luke, you switched off your targeting computer — whats wrong?' '…Nothing! Im all right.'"
	quotes[93]="'So, what do you think? You think a princess and a guy like me–'"
	quotes[94]="'I want them alive — no disintegrations!'"
	quotes[95]="'Ive just made a deal that will keep the Empire out of here forever.'"
	quotes[96]="'I have you now!'"
	quotes[97]="'I saw… a city in the clouds.'"
	quotes[98]="'Told you I did. Reckless is he. …Now, matters are worse.'"
	quotes[99]="'That boy is our last hope.'"
	quotes[100]="'…No. There is another.'"
	
	rannum=$RANDOM
	range=100
	let "rannum %= $range"
	QUOTE=${quotes[$rannum]}
}

function setPicture()
{
	
	#picture(week,day)=push strength	
	picture[0,0]=3; picture[1,0]=3;	picture[2,0]=3; 	picture[3,0]=3; 	picture[4,0]=3; 	picture[5,0]=3; 	picture[6,0]=3; 	picture[7,0]=3; 	picture[8,0]=3; 
	picture[0,1]=3; picture[1,1]=0;	picture[2,1]=0; 	picture[3,1]=0; 	picture[4,1]=0; 	picture[5,1]=0; 	picture[6,1]=0; 	picture[7,1]=0; 	picture[8,1]=0; 
	picture[0,2]=3; picture[1,2]=0;	picture[2,2]=5; 	picture[3,2]=0; 	picture[4,2]=5; 	picture[5,2]=0; 	picture[6,2]=5; 	picture[7,2]=5;	 	picture[8,2]=5; 
	picture[0,3]=3; picture[1,3]=0;	picture[2,3]=5; 	picture[3,3]=0; 	picture[4,3]=5; 	picture[5,3]=0; 	picture[6,3]=5; 	picture[7,3]=0; 	picture[8,3]=5; 
	picture[0,4]=3; picture[1,4]=0;	picture[2,4]=5; 	picture[3,4]=5; 	picture[4,4]=5; 	picture[5,4]=0; 	picture[6,4]=5; 	picture[7,4]=5;	 	picture[8,4]=5; 
	picture[0,5]=3; picture[1,5]=0;	picture[2,5]=5; 	picture[3,5]=0	; 	picture[4,5]=5; 	picture[5,5]=0; 	picture[6,5]=5; 	picture[7,5]=0; 	picture[8,5]=5; 
	picture[0,6]=3; picture[1,6]=3;	picture[2,6]=3; 	picture[3,6]=3; 	picture[4,6]=3; 	picture[5,6]=3; 	picture[6,6]=3; 	picture[7,6]=3; 	picture[8,6]=3; 
	
	picture[9,0]=3; 	picture[10,0]=3; 	picture[11,0]=3; 	picture[12,0]=3; 	picture[13,0]=3; 	picture[14,0]=3; 	picture[15,0]=3; 	picture[16,0]=3; 
	picture[9,1]=0; 	picture[10,1]=0; 	picture[11,1]=0; 	picture[12,1]=0; 	picture[13,1]=0; 	picture[14,1]=0; 	picture[15,1]=0; 	picture[16,1]=0; 
	picture[9,2]=0; 	picture[10,2]=5; 	picture[11,2]=5; 	picture[12,2]=0; 	picture[13,2]=5; 	picture[14,2]=5; 	picture[15,2]=0; 	picture[16,2]=5; 
	picture[9,3]=0; 	picture[10,3]=5; 	picture[11,3]=5; 	picture[12,3]=0; 	picture[13,3]=5; 	picture[14,3]=5; 	picture[15,3]=0; 	picture[16,3]=5; 
	picture[9,4]=0; 	picture[10,4]=5; 	picture[11,4]=0; 	picture[12,4]=0; 	picture[13,4]=5; 	picture[14,4]=0; 	picture[15,4]=0; 	picture[16,4]=0; 
	picture[9,5]=0; 	picture[10,5]=5; 	picture[11,5]=0; 	picture[12,5]=0; 	picture[13,5]=5; 	picture[14,5]=0; 	picture[15,5]=0; 	picture[16,5]=0; 
	picture[9,6]=3; 	picture[10,6]=3; 	picture[11,6]=3; 	picture[12,6]=3; 	picture[13,6]=3; 	picture[14,6]=3; 	picture[15,6]=3	 	picture[16,6]=3; 
	
	picture[17,0]=3; 	picture[18,0]=3; 	picture[19,0]=3; 	picture[20,0]=3; 	picture[21,0]=3; 	picture[22,0]=3; 	picture[23,0]=3; 	picture[24,0]=3; 
	picture[17,1]=0; 	picture[18,1]=0; 	picture[19,1]=0; 	picture[20,1]=0; 	picture[21,1]=0; 	picture[22,1]=0; 	picture[23,1]=0; 	picture[24,1]=0; 
	picture[17,2]=0; 	picture[18,2]=5; 	picture[19,2]=0; 	picture[20,2]=5; 	picture[21,2]=0; 	picture[22,2]=5; 	picture[23,2]=0; 	picture[24,2]=5; 
	picture[17,3]=5; 	picture[18,3]=5; 	picture[19,3]=0; 	picture[20,3]=5; 	picture[21,3]=0; 	picture[22,3]=5; 	picture[23,3]=0; 	picture[24,3]=5; 
	picture[17,4]=5; 	picture[18,4]=0; 	picture[19,4]=0; 	picture[20,4]=5; 	picture[21,4]=5; 	picture[22,4]=5; 	picture[23,4]=0; 	picture[24,4]=5; 
	picture[17,5]=5; 	picture[18,5]=0; 	picture[19,5]=0; 	picture[20,5]=5; 	picture[21,5]=0; 	picture[22,5]=5; 	picture[23,5]=0; 	picture[24,5]=5; 
	picture[17,6]=3; 	picture[18,6]=3; 	picture[19,6]=3; 	picture[20,6]=3;	picture[21,6]=3; 	picture[22,6]=3; 	picture[23,6]=3; 	picture[24,6]=3; 
	
	picture[25,0]=3; 	picture[26,0]=3; 	picture[27,0]=3; 	picture[28,0]=3; 	picture[29,0]=3; 	picture[30,0]=3; 	picture[31,0]=3; 	picture[32,0]=3; 
	picture[25,1]=0; 	picture[26,1]=0; 	picture[27,1]=0; 	picture[28,1]=0; 	picture[29,1]=0; 	picture[30,1]=0; 	picture[31,1]=0; 	picture[32,1]=0; 
	picture[25,2]=5; 	picture[26,2]=5; 	picture[27,2]=0; 	picture[28,2]=5; 	picture[29,2]=0; 	picture[30,2]=0; 	picture[31,2]=5; 	picture[32,2]=0; 
	picture[25,3]=0; 	picture[26,3]=5; 	picture[27,3]=0; 	picture[28,3]=5; 	picture[29,3]=0; 	picture[30,3]=0; 	picture[31,3]=5; 	picture[32,3]=0; 
	picture[25,4]=0; 	picture[26,4]=5; 	picture[27,4]=0; 	picture[28,4]=5; 	picture[29,4]=0; 	picture[30,4]=0; 	picture[31,4]=5; 	picture[32,4]=0; 
	picture[25,5]=5; 	picture[26,5]=5; 	picture[27,5]=0; 	picture[28,5]=5; 	picture[29,5]=5; 	picture[30,5]=0; 	picture[31,5]=5; 	picture[32,5]=0; 
	picture[25,6]=3; 	picture[26,6]=3; 	picture[27,6]=3; 	picture[28,6]=3; 	picture[29,6]=3; 	picture[30,6]=3; 	picture[31,6]=5; 	picture[32,6]=3; 
	
	picture[33,0]=3; 	picture[34,0]=3; 	picture[35,0]=3; 	picture[36,0]=3; 	picture[37,0]=3; 	picture[38,0]=3; 	picture[39,0]=3; 	picture[40,0]=3; 
	picture[33,1]=0; 	picture[34,1]=0; 	picture[35,1]=0; 	picture[36,1]=0; 	picture[37,1]=0; 	picture[38,1]=0; 	picture[39,1]=0; 	picture[40,1]=0; 
	picture[33,2]=5; 	picture[34,2]=5; 	picture[35,2]=0; 	picture[36,2]=0; 	picture[37,2]=5; 	picture[38,2]=5; 	picture[39,2]=5; 	picture[40,2]=0; 
	picture[33,3]=5; 	picture[34,3]=0; 	picture[35,3]=5; 	picture[36,3]=0; 	picture[37,3]=5; 	picture[38,3]=0; 	picture[39,3]=5; 	picture[40,3]=0; 
	picture[33,4]=5; 	picture[34,4]=0; 	picture[35,4]=5; 	picture[36,4]=0; 	picture[37,4]=5; 	picture[38,4]=5; 	picture[39,4]=5; 	picture[40,4]=0; 
	picture[33,5]=5; 	picture[34,5]=5; 	picture[35,5]=0; 	picture[36,5]=0; 	picture[37,5]=5; 	picture[38,5]=0; 	picture[39,5]=5; 	picture[40,5]=0; 
	picture[33,6]=3; 	picture[34,6]=3; 	picture[35,6]=3; 	picture[36,6]=3; 	picture[37,6]=3; 	picture[38,6]=3; 	picture[39,6]=3; 	picture[40,6]=3; 
	
	picture[41,0]=3; 	picture[42,0]=3; 	picture[43,0]=3; 	picture[44,0]=3; 	picture[45,0]=3; 	picture[46,0]=3; 	picture[47,0]=3; 	picture[48,0]=3; 
	picture[41,1]=0; 	picture[42,1]=0; 	picture[43,1]=0; 	picture[44,1]=0; 	picture[45,1]=0; 	picture[46,1]=0; 	picture[47,1]=0; 	picture[48,1]=0; 
	picture[41,2]=5; 	picture[42,2]=0; 	picture[43,2]=5; 	picture[44,2]=0; 	picture[45,2]=5; 	picture[46,2]=5; 	picture[47,2]=0; 	picture[48,2]=5; 
	picture[41,3]=5; 	picture[42,3]=0; 	picture[43,3]=5; 	picture[44,3]=0; 	picture[45,3]=5; 	picture[46,3]=0; 	picture[47,3]=0; 	picture[48,3]=5; 
	picture[41,4]=0; 	picture[42,4]=5; 	picture[43,4]=0; 	picture[44,4]=0; 	picture[45,4]=0; 	picture[46,4]=5; 	picture[47,4]=0; 	picture[48,4]=0; 
	picture[41,5]=0; 	picture[42,5]=5; 	picture[43,5]=0; 	picture[44,5]=0; 	picture[45,5]=5; 	picture[46,5]=5; 	picture[47,5]=0; 	picture[48,5]=5; 
	picture[41,6]=3; 	picture[42,6]=3; 	picture[43,6]=3; 	picture[44,6]=3; 	picture[45,6]=3; 	picture[46,6]=3; 	picture[47,6]=3; 	picture[48,6]=3; 
	
	picture[49,0]=3; 	picture[50,0]=3; 	picture[51,0]=3;  
	picture[49,1]=0; 	picture[50,1]=0; 	picture[51,1]=3;
	picture[49,2]=0; 	picture[50,2]=0; 	picture[51,2]=3;
	picture[49,3]=0; 	picture[50,3]=0; 	picture[51,3]=3;
	picture[49,4]=0; 	picture[50,4]=0; 	picture[51,4]=3;
	picture[49,5]=0; 	picture[50,5]=0; 	picture[51,5]=3;
	picture[49,6]=3; 	picture[50,6]=3; 	picture[51,6]=3;  
	

}

function makeHistory()
{
	echo "**KYLE MakeHistory passed value DEBUG: $1"
	#sleep 2
	for (( x = 0 ; x < $1 ; x++ )) do
		goDark 1
		gitCommit
	done
}

function main()
{
	currdate=$(gdate)
    sudo gdate -s "2013-12-22 EST 12:00:11"
	day=0
	totaldays=0
	week=0
	setPicture

	git init

	for (( i = 0 ; i < ${#picture[@]} ; i++ )) do
		
		##sleep 2
		makeHistory "${picture[$week,$day]}"
		#echo "Week $week, Day $day"
		 if [ $[ ($day + 1) % 7 ] -eq 0 ]; then
	 		 week=$[ $week + 1 ]
			 day=0
		 else 
			 day=$[ $day + 1 ]
		 fi
		 
		 totaldays=$[ $totaldays + 1 ]
		 gdate -s "+1 day"
	 done
	 
	 sudo gdate -s "$currdate"
	
}

main 

# goDark
# gitCommit
#gitPush