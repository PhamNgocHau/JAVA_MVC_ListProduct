package codegym.service;

import codegym.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    public static Map<Integer,Product> products;

    static{
        products = new HashMap<>();
        products.put(1,new Product(1,"Iphone X",1200,"Apple"));
        products.put(2,new Product(2,"Sam Sung",1000,"Sam Sunng"));
        products.put(3,new Product(3,"OPPO",800,"OPPO"));
        products.put(4,new Product(4,"Nokia",100,"Nokia"));
        products.put(5,new Product(5,"Huawei",100,"Huawei"));
    }
    @Override
    public ArrayList findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId() , product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id , product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
