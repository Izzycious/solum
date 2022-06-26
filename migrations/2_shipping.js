const shipping = artifacts.require('Shipping');
export default function (deployer) {
    deployer.deploy(shipping);
};