from bottle import *
import redis
import os.path
import random
import requests
import string

r = redis.StrictRedis(db=12, decode_responses=True)


@route("/")
def ooo():
    redirect("/panel/dashboard")

@route("/index.html")
def ooo():
    redirect("/dashboard")

@route("/login", method="POST")
def wewek():
    username = request.forms.get("user").lower()
    password = request.forms.get("pw")
    real_pw = r.get(str(username)+"password")
    print(username, password, real_pw)
    if str(real_pw) == str(password):
        print("is")
        if str(real_pw) != "None":
            print("is 2")
            response.set_cookie("user", username, secret="flo123")
            redirect("/panel/dashboard")

@route('/login')
def serve_static_file():
    if request.get_cookie("user", secret="flo123"):
        redirect("/panel/dashboard")
    else:
        return static_file("login.html", "/root/boxedpanel/horizontal")

@route("/logout")
def lol():
    response.set_cookie("user", "none", secret="flo123", expires=1)
    redirect("/panel/dashboard")

@route("/invoice-<invoice>")
def wieiwe(invoice):
    if not request.get_cookie("user", secret="flo123"):
        redirect("/panel/dashboard")
    invoice_id = invoice
    amount = r.get(invoice+"amount")
    if str(amount) == "None":
        redirect("/panel/dashboard")
    gateway = r.get(invoice+"method")
    if str(gateway) == "None":
        redirect("/panel/dashboard")
    if str(gateway) == "paypal":
        gateway = "PayPal"
    elif str(gateway) == "ideal":
        gateway = "iDeal"
    elif str(gateway) == "crypto":
        gateway = "Cryptocurrencies (Bitcoin, Litecoin etc.)"
    elif str(gateway) == "skrill":
        gateway = "Skrill"
    elif str(gateway) == "cc":
        gateway = "Credit card"
    elif str(gateway) == "psc":
        gateway= "PaySafeCard"
    elif str(gateway) == "phone":
        gateway = "Phone"
    elif str(gateway) == "neteller":
        gateway = "Neteller"
    username = request.get_cookie("user", secret="flo123")
    if str(username) == "None":
        redirect("/panel/login")
    name = r.get(username+"name")
    address = r.get(username+"address")
    city = r.get(username+"city")
    country = r.get(username+"country")
    email = r.get(username+"email")
    date = r.get(username+"date")
    due_date = r.get(invoice_id+"due_date")
    date = r.get(invoice_id+"date")
    tax = int(amount) / 100 * 21
    print(tax)
    amount_aftertax = int(amount)-float(tax)
    total_amount = amount
    print(total_amount)
    return template("pages-invoice.html", root="/root/boxedpanel/horizontal", tax=tax, total_amount=total_amount, num=invoice_id, gateway=gateway, name=name, address=address, city=city, country=country, email=email, date=date, due_date=due_date, amount=amount, amount_aftertax=amount_aftertax)

@route("/generatePayment", method="POST")
def lool():
    username = request.get_cookie("user", secret="flo123")
    if str(username) == "None":
        redirect("/panel/login")
    method = request.forms.get("method")
    amount = request.forms.get("amount")
    if str(method) == "PayPal":
        method = "paypal"
    elif str(method) == "iDeal":
        method = "ideal"
    elif str(method) == "Cryptocurrencies (Bitcoin, Litecoin etc.)":
        method = "crypto"
    elif str(method) == "Skrill":
        method = "skrill"
    elif str(method) == "Credit card":
        method = "cc"
    elif str(method) == "PaySafeCard":
        method = "psc"
    elif str(method) == "Phone":
        method = "phone"
    elif str(method) == "Neteller":
        method = "neteller"
    import uuid
    payment_id = str(uuid.uuid4())
    r.set(payment_id+"amount", amount)
    r.set(payment_id+"method", method)
    redirect("/panel/invoice-"+payment_id)

@route('/dashboard')
def serve_static_file():
    if request.get_cookie("user", secret="flo123"):
        username = request.get_cookie("user", secret="flo123")
        balance = r.get(username+"balance")
        if str(balance) == "None":
            r.set(username+"balance", "0")
            balance = "0"
        ticketamount = r.get(username+"ticketamount")
        if str(ticketamount) == "None":
            r.set(str(username)+"ticketamount", "0")
        active_num_prod = 0
        active_prodcuts = r.smembers(username+"products")
        for x in active_prodcuts:
            active_num_prod+=1
        active_num_tick = 0
        support_pin = r.get(username+"pin")
        if str(support_pin) == "None":
            new_pin = ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(6))
            r.set(username+"pin", new_pin)
            support_pin = new_pin
        return template("index2.html", username=username, balance=balance, active_products=active_num_prod, active_tickets=active_num_tick, support_pin=support_pin)
    else:
        redirect("/panel/login")

@route('/services')
def serve_static_file():
    if not request.get_cookie("user", secret="flo123"):
        redirect("/panel/dashboard")
    username = request.get_cookie("user", secret="flo123")
    return template("services.html", root="/root/boxedpanel/horizontal", username=username)

@route('/order')
def serve_static_file():
    return static_file("order.html", "/root/boxedpanel/horizontal")

@route('/assets/<filename:path>')
def send_static(filename):
    return static_file(filename, root="/root/boxedpanel/assets/")


@route('/css/<filename:path>')
def send_static(filename):
    return static_file(filename, root="/root/boxedpanel/horizontal/css/")


@route('/scss/<filename:path>')
def send_static(filename):
    return static_file(filename, root="/root/boxedpanel/horizontal/scss/")


@route('/js/<filename:path>')
def send_static(filename):
    return static_file(filename, root="/root/boxedpanel/horizontal/js/")


run(host="", port=8080, debug=True)
