package com.chainsys.warehouse.model;

import org.springframework.beans.factory.annotation.Autowired;

public class PackagesPackageDeliveryDetailsDTO {
@Autowired
private WarehousePackages packages;
public WarehousePackages getPackages() {
	return packages;
}
public void setPackages(WarehousePackages packages) {
	this.packages = packages;
}
public PackageDeliveryDetails getPackageDeliveryDetails() {
	return packageDeliveryDetails;
}
public void setPackageDeliveryDetails(PackageDeliveryDetails packageDeliveryDetails) {
	this.packageDeliveryDetails = packageDeliveryDetails;
}
private PackageDeliveryDetails packageDeliveryDetails;

}
