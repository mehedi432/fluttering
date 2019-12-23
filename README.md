## ফ্লাটারিং <hr/>
### আজকে আমরা  দেখার চেষ্টা করবো কিভাবে আমরা ফ্ল্যাটার ইনস্টল করতে পারি আমাদের লিনাক্স অপারেটিং সিস্টেম এর মধ্যে ।
##### প্রথমেই আমরা দেখবো আমাদের কি কি প্রয়োজনীয় টুল্স প্রয়োজন<br/> 
          ১. ডার্ট প্রোগ্রামিং ল্যাঙ্গুয়েজে । <br/>
          ২. ফ্ল্যাটার স্টান্ডার্ট ডেভেলপমেন্ট কীট ।<br/>

১. ডার্ট প্রোগ্রামিং ল্যাঙ্গুয়েজে ইনস্টল করা পেপারমিন্ট অপারেটিং সিস্টেম এর মধ্যে -<br/>

```sh
sudo apt-get update

 sudo apt-get install apt-transport-https

 sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'

 sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
```   
এরপর আমাদের স্ট্যাবল ভার্সনটা ইনস্টল করতে হবে -
```sh
sudo apt update 
sudo apt install dart  

```

