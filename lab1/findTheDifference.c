char findTheDifference(char *s, char *t){
	int oldCount = 0;
	int newCount = 0;
	for(int i=0; i<strlen(s); i++){
		oldCount += (int)s[i];
	}
	for(int j=0; j<strlen(t); j++){
		newCount += (int)t[j];
	}
	return (char)(newCount - oldCount);
}
