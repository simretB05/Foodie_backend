from flask import Flask, request, make_response,jsonify
import dbhelper
import apiHelper
import dbcreds
import uuid
import json
from flask_cors import CORS

app=Flask(__name__)

CORS(app)
# Client  API Registering a client/signin-up
@app.post('/api/client')
def post_new_client():
        uuid_value=uuid.uuid4()
        error=apiHelper.check_endpoint_info(request.json,["username","first_name","last_name","email","password","image_url"]) 
        if (error==None):
            token = str(uuid_value)
        elif(error != None):
          return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll insert_new_client(?,?,?,?,?,?,?)',[request.json.get("username"),request.json.get("first_name"), request.json.get("last_name"),request.json.get("email"),request.json.get("password"),request.json.get("image_url"),token])
        if(type(results)==list):
             return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500) 

# Client  API loging  client/login
@app.post('/api/login')
def post_new_login():
        error=apiHelper.check_endpoint_info(request.json,["email","password"]) 
        if (error != None):
         return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll client_login(?,?)',[request.json.get("email"),request.json.get("password")])
        if(type(results)==list):
             return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500) 

# Client  API get client info
@app.get('/api/client')
def get_client_info():
        error=apiHelper.check_endpoint_info(request.args,["client_id"]) 
        if (error !=None):
          return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll get_client_info(?)',[request.args.get("client_id")])
        if(type(results)==list):
            return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500) 
        
# Client  API delet client info
@app.delete('/api/client')
def remove_client():
        error=apiHelper.check_endpoint_info(request.json,["password"]) 
        if (error !=None):
          return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll delete_client(?)',[request.json.get("password")])
        if(type(results)==list):
            return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500) 
# Client  API Logout client token
@app.delete('/api/client-logout')
def logOut_client():
        error=apiHelper.check_endpoint_info(request.json,["token"]) 
        if (error !=None):
          return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll logOut_client(?)',[request.json.get("token")])
        if(type(results)==list):
            return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500) 
        
# Edite  Client Info  API 
@app.patch('/api/client')
def edite_client_info():
    error=apiHelper.check_endpoint_info(request.headers,["token"]) 
    if ( error !=None):
          return make_response(jsonify(error), 400)
    username=request.json.get("username") 
    first_name= request.json.get("first_name")
    last_name= request.json.get("last_name")
    email= request.json.get("email")
    password=request.json.get("password")
    image_url= request.json.get("image_url")
    if(username or first_name or last_name or email or password or image_url):
          username=username
          first_name= first_name
          last_name= last_name
          email= email
          password=password
          image_url= image_url
    else:
          username=None
          first_name=None
          last_name= None
          email= None
          password=None
          image_url=None
       
  
    results = dbhelper.run_procedure('CAll edite_client_prof(?,?,?,?,?,?,?)',[username,first_name,last_name,email,password,image_url,request.headers.get("token")])
    if(type(results)==list):
        return make_response(jsonify(results), 200)
    else:
        return make_response(jsonify(results), 500) 
        
# RESTAURANT  API Registering a RESTAURANT/signin-up
@app.post('/api/restaurant')
def post_new_restaurant():
        uuid_value=uuid.uuid4()
        error=apiHelper.check_endpoint_info(request.json,["name","address","phone_number","bio","city","banner_url","profile_url","email","password"]) 
        if (error==None):
            token = str(uuid_value)
        elif(error != None):
          return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll insert_new_restaurant(?,?,?,?,?,?,?,?,?,?)',[request.json.get("name"),request.json.get("address"), request.json.get("phone_number"),request.json.get("bio"),request.json.get("city"),request.json.get("banner_url"),request.json.get("profile_url"),request.json.get("email"),request.json.get("password"),token])
        if(type(results)==list):
             return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500) 

# Restaurant  API loging  RESTAURANT/login
@app.post('/api/restaurant-login')
def post_new_restaurant_login():
        error=apiHelper.check_endpoint_info(request.json,["email","password"]) 
        if (error != None):
         return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll restaurant_login(?,?)',[request.json.get("email"),request.json.get("password")])
        if(type(results)==list):
             return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500) 
        

# RESTURANT API get RESTURANT info
@app.get('/api/restaurant')
def get_restaurant_info():
        error=apiHelper.check_endpoint_info(request.args,["restaurant_id"]) 
        if (error !=None):
          return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll get_restaurant(?)',[request.args.get("restaurant_id")])
        if(type(results)==list):
            return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500) 
        

# RESTURANT API get all RESTURANT info
@app.get('/api/restaurants')
def get_all_restaurant():
      
        results = dbhelper.run_procedure('CAll get_all_restaurant()',[])
        if(type(results)==list):
            return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500) 
        
# Resturant  API delet Resturant info
@app.delete('/api/restaurant')
def remove_resturant():
        error=apiHelper.check_endpoint_info(request.json,["password"]) 
        if (error !=None):
          return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll delete_restaurant(?)',[request.json.get("password")])
        if(type(results)==list):
            return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500) 
        
# Restaurant  API Logout Restaurant token
@app.delete('/api/restaurant-logout')
def logOut_resturant():
        error=apiHelper.check_endpoint_info(request.json,["token"]) 
        if (error !=None):
          return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll logOut_restaurant(?)',[request.json.get("token")])
        if(type(results)==list):
            return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500) 
        
        
# Edite  Resturant update Info  API 
@app.patch('/api/restaurant')
def edite_rest_info():
    error=apiHelper.check_endpoint_info(request.headers,["token"]) 
    if ( error !=None):
          return make_response(jsonify(error), 400)
    name=request.json.get("name") 
    address= request.json.get("address")
    phone_number= request.json.get("phone_number")
    bio= request.json.get("bio")
    city=request.json.get("city")
    profile_url=request.json.get("profile_url")
    banner_url=request.json.get("banner_url")
    email= request.json.get("email")
    password=request.json.get("password")
    if(name or  address or phone_number or bio or city or profile_url or banner_url or email or password ):
          name=name
          address= address
          phone_number= phone_number
          bio=bio
          city=city
          profile_url= profile_url
          banner_url=banner_url
          email= email
          password=password
    else:
        name=name
        address= None
        phone_number=None
        bio= None
        city= None
        profile_url=  None
        banner_url= None
        email=  None
        password= None
    results = dbhelper.run_procedure('CAll  edite_restProf(?,?,?,?,?,?,?,?,?,?)',[name,address,phone_number,bio,city,profile_url,banner_url,email,password,request.headers.get("token")])
    if(type(results)==list):
        return make_response(jsonify(results), 200)
    else:
        return make_response(jsonify(results), 500) 
    
  # Menu GET, POST, DELETE, PATCH
  # Post menu
@app.post('/api/menu')
def post_new_menu():
        error=apiHelper.check_endpoint_info(request.json,["name","description","image_url","price"]) 
        errorHeader=apiHelper.check_endpoint_info(request.headers,["token"]) 
        if (error != None and errorHeader !=None):
          return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll insert_new_menu(?,?,?,?,?)',[request.json.get("name"),request.json.get("description"), request.json.get("image_url"), request.json.get("price"),request.headers.get("token")])
        if(type(results)==list):
             return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500) 
# get all Menu
# Get 
@app.get('/api/menu')
def get_all_menus():
        error=apiHelper.check_endpoint_info(request.args,["restaurant_id"]) 
        if (error != None):
          return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll get_all_menus(?)',[request.args.get("restaurant_id")])
        if(type(results)==list):
             return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500) 
# Delete Menu
@app.delete('/api/menu')
def delete_menu():
        
        error=apiHelper.check_endpoint_info(request.json,["menu_id"]) 
        if (error != None):
          return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll delete_menu(?)',[request.json.get("menu_id")])
        if(type(results)==list):
             return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500) 
# Edite Menu
@app.patch('/api/menu')
def edite_menu():
    error=apiHelper.check_endpoint_info(request.json,["menu_id"]) 
    errorHeader=apiHelper.check_endpoint_info(request.headers,["token"]) 
    if (error != None and errorHeader !=None):
      return make_response(jsonify(error), 400)
    menu_data=request.json.get("menu_data")
    print(menu_data)
    
    name = menu_data['name']
    description= menu_data['description']
    image_url= menu_data['image_url']
    price= menu_data['price']


    if(name or description or image_url or price ):
          name=name
          description=description
          image_url=image_url
          price=price
    else:
          name=None
          description=None
          image_url=None
          price=None
    results = dbhelper.run_procedure('CAll  edite_menu(?,?,?,?,?,?)',[request.json.get("menu_id"),name,description,image_url,price,request.headers.get("token")])

    if(type(results)==list):
        return make_response(jsonify(results), 200)
    else:
      return make_response(jsonify(results), 500) 
#  all  Client  side orders  Post API 
@app.post('/api/client-order')
def post_new_order():
    error = apiHelper.check_endpoint_info(request.json, ["client_id","restaurant_id","menu_id",]) 
    if error is not None:
        return make_response(jsonify(error), 400)
    client_id = request.json.get("client_id")
    menu_ids =  request.json.get("menu_id")
    restaurant_id = request.json.get("restaurant_id")
    
    for menu_id in menu_ids:
        id_num = int(menu_id)
        results = dbhelper.run_procedure('CALL add_new_order(?, ?, ?)', [client_id,restaurant_id ,id_num])
        
        if isinstance(results, list):
            return make_response(jsonify(results), 200)
        else:
            return make_response(jsonify(results), 500)

@app.get('/api/client-all-order')
def get_all_clientOrders():
      # error=apiHelper.check_endpoint_info(request.json,["is_complete","is_confirmed"]) 
      error=apiHelper.check_endpoint_info(request.headers,["token"]) 
      if (error !=None):
       return make_response(jsonify(error), 400)
      results = dbhelper.run_procedure('CAll get_all_clientOrders(?)',[request.headers.get("token")])
      if(type(results)==list):
            return make_response(jsonify(results), 200)
      else:
          return make_response(jsonify(results), 500) 
# all resturant side orders
        
@app.get('/api/restaurant-order')
def get_all_restOrders():
      error=apiHelper.check_endpoint_info(request.args,["token"]) 
      if (error != None):
        return make_response(jsonify(error), 400)
      results = dbhelper.run_procedure('CAll get_all_restorders(?)',[request.args.get("token")])
      if(type(results)==list):
            return make_response(jsonify(results), 200)
      else:
          return make_response(jsonify(results), 500) 
        
# order Patch Resturant-order confirmed orders
@app.patch('/api/restaurant-confirmed-order')
def edite_confirmed_order():       
        error=apiHelper.check_endpoint_info(request.json,["is_confirmed","order_id"]) 
        errorHeader=apiHelper.check_endpoint_info(request.headers,["token"]) 
        if (error != None and errorHeader !=None):
          return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll confirmed_rest_order(?,?,?)',[request.json.get("is_confirmed"),request.json.get("order_id"),request.headers.get("token")])
        if(type(results)==list):
              return make_response(jsonify(results), 200)
        else:
              return make_response(jsonify(results), 500) 
# order Patch Resturant-order complete orders
@app.patch('/api/restaurant-complete-order')
def edite_complete_order():
        error=apiHelper.check_endpoint_info(request.json,["is_complete","order_id"]) 
        if (error != None):
          return make_response(jsonify(error), 400)
        results = dbhelper.run_procedure('CAll complete_rest_order(?,?)',[request.json.get("is_complete"),request.json.get("order_id")])
        if(type(results)==list):
              return make_response(jsonify(results), 200)
        else:
              return make_response(jsonify(results), 500) 
        


if (dbcreds.production_mode == True):
    print("Running in Production Mode")
    import bjoern # type: ignore
    bjoern.run(app, "0.0.0.0", 5001)
else: 
    from flask_cors import CORS
    CORS(app)
    print("Running in Testing/Development Mode!")
    

app.run(debug=True) 
