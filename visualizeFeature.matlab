function cur_feat = visualizeFeature(feature_no,malignant,benign,features)
	cur_feat = features(feature_no,:);
	h1 = malignant(:,1);
	h2 = benign(:,1);
	[counts1,binCenters1]=hist(h1,10);
	[counts2,binCenters2]=hist(h2,10);
	plot(binCenters1,counts1,'r-');
	hold on;
	plot(binCenters2,counts2,'g-');
	grid on;
	legend({"malignant","benign"});
end