using app.raasdata2 from '../db/raasdata2';

@requires: 'authenticated-user'

service RaasData2Service {

 entity Interactions_Header
	as projection on raasdata2.Interactions_Header;

 entity Interactions_Items
	as projection on  raasdata2.Interactions_Items;

entity Blogs
    as projection on raasdata2.Blogs;

}