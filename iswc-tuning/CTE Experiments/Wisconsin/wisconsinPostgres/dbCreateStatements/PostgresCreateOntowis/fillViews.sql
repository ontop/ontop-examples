INSERT INTO view12
Select * from Tab1  join Tab2  ON Tab1.unique2Tab1= Tab2.unique2Tab2;

insert into view123
Select * from Tab1, Tab2, Tab3  WHERE Tab1.unique2Tab1= Tab2.unique2Tab2 AND Tab2.unique2Tab2= Tab3.unique2Tab3;

insert into view1234
Select * from Tab1, Tab2, Tab3, Tab4 WHERE Tab1.unique2Tab1= Tab2.unique2Tab2 AND Tab2.unique2Tab2= Tab3.unique2Tab3 AND Tab3.unique2Tab3= Tab4.unique2Tab4;

insert into view12345
Select * from Tab1, Tab2, Tab3, Tab4, Tab5 WHERE Tab1.unique2Tab1= Tab2.unique2Tab2 AND Tab2.unique2Tab2= Tab3.unique2Tab3 AND Tab3.unique2Tab3= Tab4.unique2Tab4 AND Tab4.unique2Tab4= Tab5.unique2Tab5;
