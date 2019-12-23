আজকে আমরা  দেখার চেষ্টা করবো কিভাবে আমরা ফ্ল্যাটার ইনস্টল করতে পারি আমাদের লিনাক্স অপারেটিং সিস্টেম এর মধ্যে ।
প্রথমেই আমরা দেখবো আমাদের কি কি প্রয়োজনীয় টুল্স প্রয়োজন 
        ১. ডার্ট প্রোগ্রামিং ল্যাঙ্গুয়েজে । 
        ২. ফ্ল্যাটার স্টান্ডার্ট ডেভেলপমেন্ট কীট ।

১. ডার্ট প্রোগ্রামিং ল্যাঙ্গুয়েজে ইনস্টল করা পেপারমিন্ট অপারেটিং সিস্টেম এর মধ্যে -

```sh
# ডার্ট ফাইল নামানোর কমান্ড 
sudo apt-get update

 sudo apt-get install apt-transport-https

 sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'

 sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
```   
এরপর আমাদের স্ট্যাবল ভার্সনটা ইনস্টল করতে হবে -
```sh
# ইনস্টল করার জন্যে কমান্ড 
sudo apt update 
sudo apt install dart  

```

এখন আমরা আমাদের টার্মিনাল এপ্লিকেশন এর মধ্যে চেক করতে পারবো আমাদের ডার্ট ইনস্টল হয়েছে কিনা 
```sh
# ডার্টের ভার্সন দেখার কমান্ড 
dart  --version  
```

আমরা এখন দেখবো কিভাবে আমাদের টার্মিনাল এর সকল জগতে পাওয়ার জন্যে কিভাবে পাথ ভ্যারিয়েবল সেট করবো 

```sh
# আমাদের বর্তমানে যেই টার্মিনাল দেয়া আছি সেটাকে সেট করার কম্যান্ড 
export PATH="$PATH:/usr/lib/dart/bin" 
```

সকল উইন্ডো এর মধ্যে ডার্টকে পাওয়ার কমান্ড 
```sh 
echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.profile
```

<hr/>

২. ফ্ল্যাটার স্টান্ডার্ট ডেভেলপমেন্ট কীট ইনস্টল করা -

ফ্ল্যাটার ইনস্টল করতে পারি আমরা ফ্ল্যাটার ওয়েবসাইট থেকে একটা tar.gz  ফাইল নামাতে হবে এবং এটি এক্সট্র্যাক্ট করতে হবে, এক্সট্র্যাক্ট করে আমরা আমাদের হোম ফোল্ডার এর ভিতরে রাখবো এবং আমরা আমাদের পাথ ভ্যারিয়েবল সেট করবো -
```sh
# ফ্ল্যাটারকে পাথ ভ্যারিয়েবল সেট করা 
 export PATH="$PATH:/home/mehedi/flutter/bin" 
```
