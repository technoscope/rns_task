import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rns_task/BreweryModel.dart';
class BreweryDetailScreen extends StatefulWidget {
  BreweryModel Brewerymodel=new BreweryModel();
  BreweryDetailScreen({Key, this.Brewerymodel}) : super(key: Key);
  @override
  _BreweryDetailScreenState createState() => _BreweryDetailScreenState(Brewerymodel);
}
class _BreweryDetailScreenState extends State<BreweryDetailScreen> {
  BreweryModel Brewerymodel=new BreweryModel();
  _BreweryDetailScreenState(BreweryModel brewerymodel){
    this.Brewerymodel=brewerymodel;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Brewery Information",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18,color: Colors.black),
                    ),
                  ),
                ),
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.my_location,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Name",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(Brewerymodel.name.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                              )),                 ],
                      ),
                      SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.my_location,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Brewery Type",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(Brewerymodel.breweryType.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                              )),

                        ],
                      ),
                      SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.my_location,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Street ",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(Brewerymodel.street.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.my_location,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Address",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text(Brewerymodel.address2.toString()+"\n"+Brewerymodel.address3.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.location_city,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("city",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(Brewerymodel.city.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.location_city,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("State",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text(Brewerymodel.state.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.location_city,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Country province",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text(Brewerymodel.countyProvince.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          )  ],
                      ),
                      SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.location_city,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Country",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text(Brewerymodel.country.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          ) ],
                      ),
                      SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.location_city,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Postal Code",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text(Brewerymodel.postalCode.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          )  ],
                      ),
                      SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.my_location,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("latitude",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text(Brewerymodel.latitude.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          )   ],
                      ),
                      SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.my_location,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("longitude",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text(Brewerymodel.longitude.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          )     ],
                      ),
                      SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.phone,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Phone",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text(Brewerymodel.phone.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          )    ],
                      ),SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.date_range,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Website Url",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text(Brewerymodel.websiteUrl.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          )  ],
                      ),
                      SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.date_range,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Updated At",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text(Brewerymodel.updatedAt.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          ) ],
                      ),SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.date_range,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Created At",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text(Brewerymodel.createdAt.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          )],
                      ),SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.date_range,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Obdb Id",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text(Brewerymodel.obdbId.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          )],
                      ),SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                      Row(
                        children: [
                          SizedBox(width: 5.0,),
                          Icon(Icons.date_range,size: 15,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Id",style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Text(Brewerymodel.id.toString(),style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                            ),
                          )],
                      ),SizedBox(height: 5,child: Divider(color: Colors.grey,),),
                    ],
                  ),
                )
              ],
            )],
          )
    )
    ));
  }
}
