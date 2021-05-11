//namespace app.raasdata2;

using {Country} from '@sap/cds/common';

context app.raasdata2 {
    type BusinessKey : String(10);
    type SDate : DateTime;
    type LText : String(1024);


    entity Interactions_Header {
        key ID        : Integer;
            ITEMS     : Composition of many Interactions_Items
                            on ITEMS.INTHeader = $self;
            PARTNER   : BusinessKey;
            LOG_DATE  : SDate;
            BPCOUNTRY : Country;

    };

    entity Interactions_Items {

        key INTHeader : Association to Interactions_Header;
        key TEXT_ID   : BusinessKey;
            LANGU     : String(2);
            LOGTEXT   : LText;
    };

}

@cds.persistence.exists
entity![WSBLOGSVIEW2]{
    key![URL]                    : String(5000)@title : 'URL';
    key![TITLE]                  : String(5000)@title : 'TITLE';
    key![TYPE]                   : String(5000)@title : 'TYPE';
    key![ACTUALTAGS]             : String(5000)@title : 'ACTUALTAGS';
    key![UPDATED]                : String(5000)@title : 'UPDATED';
    key![CREATED]                : String(5000)@title : 'CREATED';
    key![LANGUAGE]               : String(5000)@title : 'LANGUAGE';
    key![ANSWERCOUNT]            : String(5000)@title : 'ANSWERCOUNT';
    key![FOLLOWERSCOUNT]         : String(5000)@title : 'FOLLOWERSCOUNT';
    key![LIKECOUNT]              : String(5000)@title : 'LIKECOUNT';
    key![VOTECOUNT]              : String(5000)@title : 'VOTECOUNT';
    key![COMMENTCOUNT]           : String(5000)@title : 'COMMENTCOUNT';
    key![AUTHOR_DISPLAYNAME]     : String(5000)@title : 'AUTHOR_DISPLAYNAME';
    key![AUTHOR_USERNAME]        : String(5000)@title : 'AUTHOR_USERNAME';
    key![COLLECTIONFLAG]         : String(5000)@title : 'COLLECTIONFLAG';
    key![SCOPEOFKEYWORD]         : String(5000)@title : 'SCOPEOFKEYWORD';
    key![KEYWORDS]               : String(1024)@title : 'KEYWORDS';
    key![NUMBEROFKEYWORDMATCHED] : String(5000)@title : 'NUMBEROFKEYWORDMATCHED';
    key![DESCRIPTION]            : String(1024)@title : 'DESCRIPTION';
    key![WS_TRANSACTION_ID]      : Integer     @title : 'WS_TRANSACTION_ID';
}


@cds.persistence.exists 
Entity ![RegionTextsView] {
 key    ![REGION]: String(5)  @title: 'REGION' ; 
key     ![DESCRIPTION]: String(100)  @title: 'DESCRIPTION' ; 
}