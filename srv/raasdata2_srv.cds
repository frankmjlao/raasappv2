using app.raasdata2 from '../db/raasdata2';
using WSBLOGSVIEW3  from '../db/raasdata2';
//using RegionTextsView from '../db/raasdata2';

@requires : 'authenticated-user'

service RaasData2Service {

    entity Interactions_Header as projection on raasdata2.Interactions_Header;
    entity Interactions_Items  as projection on raasdata2.Interactions_Items;
    //entity Blogs               as projection on raasdata2.Blogs;


    @readonly
    entity Blogs               as projection on WSBLOGSVIEW3;

    //@readonly
    //entity Regions             as projection on RegionTextsView;

}
