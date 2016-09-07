App.productsChannel = 
  App.cable.subscriptions.create { channel: "ProductsChannel" },
    received: (data) -> $(".store #main").html(data.html)