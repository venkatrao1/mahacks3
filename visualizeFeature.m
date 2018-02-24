function cur_feat = visualizeFeature(feature_no,malignant,benign,features)
	cur_feat = features(feature_no,:);
	h1 = malignant(:,feature_no);
	h2 = benign(:,feature_no);
	[counts1,binCenters1]=hist(h1,10);
	[counts2,binCenters2]=hist(h2,10);
	clf;
	plot(binCenters1,counts1,'m-');
	hold on;
	grid off;
	axis("ticz");
	plot(binCenters2,counts2,'b-');
	legend({"malignant","benign"});
	title(strcat(cur_feat," in Breast Tumors"));
	xlabel(cur_feat);
	ylabel("amount");
end