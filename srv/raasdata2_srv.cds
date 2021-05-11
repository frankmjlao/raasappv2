using app.raasdata2 from '../db/raasdata2';
using WSBLOGSVIEW2 from '../db/raasdata2';
using RegionTextsView from '../db/raasdata2';

@requires : 'authenticated-user'

service RaasData2Service {

    entity Interactions_Header as projection on raasdata2.Interactions_Header;
    entity Interactions_Items  as projection on raasdata2.Interactions_Items;

    @readonly
    entity Blogs               as projection on WSBLOGSVIEW2;

    @readonly
    entity Regions             as projection on RegionTextsView;

}
