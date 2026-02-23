podatek_Belki = function(przychod, koszt,typ_aktywa){
  zysk = przychod - koszt
  if(zysk <=0){
    return(0)
  }
  else {
    if (typ_aktywa == "kryptowaluty"){
      if(zysk <= 85528){
        return((zysk*0.18))
      }
      else {
        return(85528*0.18 + (zysk-85528)*0.32)
      }
    }
    else if (typ_aktywa == "obligacje" || typ_aktywa == "akcje"){
      return(zysk*0.19)
    }
    else{
      print("nieznane aktywo")
    }
    
  }
}