# Vagrant_Embark_Base

A Vagrant-managed CentOS7 base box for use with the [Vagrant_Embark](https://github.com/hardyoyo/vagrant_embark) project. This base box gathers all the requirements for Vagrant-Embark, to give us a head start in provisioning an application. This is particularly helpful for Rails-based services.

## Blah blah blah, where's the box?

On [Vagrant Cloud](https://app.vagrantup.com/hardyoyo/boxes/embark-base), of course.

## Vagrant Plugin Requirements and Recommendations

Vagrant has a robust community of plugin developers, and some of the plugins are quite nice. [Installing a Vagrant plugin](https://www.vagrantup.com/docs/plugins/usage.html) is simple.

> #### TLDR, just tell me what to install...
>
> ... OK, fine, run this command to install a few Vagrant plugins...
>
> `vagrant plugin install vagrant-env vagrant-registration vagrant-hostsupdater`
>
> ... but, you'll really have a better time if you also run this command to
> install a few *more* plugins...
>
> `vagrant plugin install vagrant-vbguest vagrant-cachier vagrant-notify`

* [Vagrant-ENV](https://github.com/gosuri/vagrant-env) is *required*, in order to use this project.
* [Vagrant-registration](https://github.com/projectatomic/adb-vagrant-registration) is *strongly recommended*,
  if you elect to use a RedHat base VM image. It does not successfully register your VM with RHN, we use a
  shell script to handle the actual registration, however, it does still work to unregister your VM when you
  halt or destroy it, which is a nice convenience, and worth installing the plugin.

The following Vagrant plugins are not required, but they do make using Vagrant more enjoyable.

* [Vagrant-Hostsupdater](https://github.com/cogitatio/vagrant-hostsupdater) (or any of the [local domain resolution plugins](https://github.com/hashicorp/vagrant/wiki/Available-Vagrant-Plugins#local-domain-resolution) you might prefer)
* [Vagrant-VBGuest](https://github.com/dotless-de/vagrant-vbguest) - *Highly Recommended for VirtualBox* as it keeps VirtualBox Guest Additions up to date
* [Vagrant-Cachier](https://github.com/fgrehm/vagrant-cachier) - Caches packages between VMs. (Project now unmaintained, see URL)
* [Vagrant-Notify](https://github.com/fgrehm/vagrant-notify)


## Attribution

I've borrowed freely from the following projects:

* [Vagrant-DSpace](http://github.com/dspace/vagrant-dspace) (a bunch of shell provisioners)
* [Double-p/smtf-test](https://github.com/double-p/smtf-test) (inspiration for the Ansible Local provisioner layout)
* [Geerlingguy's Ansible-Vagrant Examples](https://github.com/geerlingguy/ansible-vagrant-examples)

## License

[MIT](https://github.com/hardyoyo/vagrant_embark_base/blob/master/LICENSE)
