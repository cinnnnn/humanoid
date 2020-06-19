import xmlrpc.client

with xmlrpc.client.ServerProxy("http://localhost:50405/") as proxy:
    print("3 is even: %s" % str(proxy.render_view_tree()))
    #print("100 is even: %s" % str(proxy.is_even(100)))