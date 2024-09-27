package com.groupeisi.companyspringmvc.service;

import com.groupeisi.companyspringmvc.dao.IProductDao;
import com.groupeisi.companyspringmvc.dao.ProductDao;
import com.groupeisi.companyspringmvc.dto.ProductDto;
import com.groupeisi.companyspringmvc.entities.ProductEntity;
import com.groupeisi.companyspringmvc.mapper.ProductMapper;

import java.util.List;
import java.util.Optional;


public class ProductService implements IProductService {

    private IProductDao productDao = new ProductDao();

    @Override
    public Optional<List<ProductDto>> findAll() {
        List<ProductEntity> productEntities = productDao.list(new ProductEntity());
        List<ProductDto> productDtos = ProductMapper.toListProductDto(productEntities);
        return Optional.of(productDtos);
    }

    @Override
    public boolean save(ProductDto productDto) {
        ProductEntity productEntity = ProductMapper.toProductEntity(productDto);
        return productDao.save(productEntity);
    }

    @Override
    public Optional<ProductDto> findByRef(String ref) {
        Optional<ProductEntity> productEntity = productDao.findByRef(ref);
        return productEntity.map(ProductMapper::toProductDto);
    }

    @Override
    public boolean update(ProductDto productDto) {
        ProductEntity productEntity = ProductMapper.toProductEntity(productDto);
        return productDao.update(productEntity);
    }
}
