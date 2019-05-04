var customers = ["Alice", "Bob", "Caroline", "Daniel", "Erika"]
print(customers)

let customerProvider = { customers.remove(at:0) }
print("The next is \(customerProvider())")

func serve(customer customerProvider: () -> String){
    print("The next customer is \(customerProvider())")
}

serve(customer: {customers.remove(at: 0)})

func serve(customer customerProvider: @autoclosure () -> String){
    print("The next is \(customerProvider())")
}

serve(customer: customers.remove(at: 0))

var customersProviders : [() -> String] = []

func collectCustomersProvider(
    _ customerProvider: @autoclosure @escaping () -> String){
        customersProviders.append(customerProvider)
    }

collectCustomersProvider(customers.remove(at: 0))
collectCustomersProvider(customers.remove(at: 0))

print("Prepared two customers \(customersProviders.count)")

for customerProvider in customersProviders {
    print("Now we are serving to \(customerProvider())")
}