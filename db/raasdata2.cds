namespace app.raasdata2;

using { Country } from '@sap/cds/common';
type BusinessKey : String(10);
type SDate : DateTime;
type LText : String(1024);


entity Interactions_Header {
  key ID : Integer;
  ITEMS  : Composition of many Interactions_Items on ITEMS.INTHeader = $self;
  PARTNER  : BusinessKey;
  LOG_DATE  : SDate;
  BPCOUNTRY	: Country;

};
entity Interactions_Items {

	key INTHeader : association to Interactions_Header;
	key TEXT_ID : BusinessKey;
		LANGU	: String(2);
		LOGTEXT	: LText;
};


entity Blogs {
    url : String;
    title: localized String;
    type: localized String;
    actualtags: localized String;
    updated: localized String;
    created: localized String;
    language: localized String;
    answercount: localized String;
    followerscount: localized String;
    likecount: localized String;
    votecount: localized String;
    commentcount: localized String;
    author_displayName: localized String;
    author_username: localized String;
    collectionflag: localized String;
    scopeofkeyword: localized String;
    keywords: LText;
    numberofkeywordmatched: localized String;
    description: LText;
    key ws_transaction_id: Integer;
};