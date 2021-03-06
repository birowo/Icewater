
rule m3e9_512e56c988001932
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=m3e9.512e56c988001932"
     cluster="m3e9.512e56c988001932"
     cluster_size="70"
     filetype = "application/x-dosexec"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171111"
     license = "RIL-1.0 [Rick's Internet License] "
     family="virut virtob virux"
     md5_hashes="['00ec60d1f78ff796b6f984ced7890952','022527bc0b7ef0832962d3be41281679','3b96a4f0a987085580d6e092bf160a5c']"

   strings:
      $hex_string = { ed7a1d77e9d2a556379f4b7c42b873195cbb768d5aadcc9b6fbe46bd5ea4542ae1388ea7fd8bcf3e7be41b5d4f3a22c416400c344d3b10dc0f13482104b55a0d }

   condition:
      
      filesize > 65536 and filesize < 262144
      and $hex_string
}
