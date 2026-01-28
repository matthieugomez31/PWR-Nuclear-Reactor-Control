import matplotlib.pyplot as plt
import numpy as np
from sklearn.metrics import mean_squared_error

def une_vanne():
    x=np.linspace(880,8000,8000)
    ouvS=np.linspace(0.11,0.84,500)
    Cv_by= 5683 - np.sqrt((x**2*3040**2)/(3040**2+x**2))
    ouvby=(5683 - np.sqrt(((ouvS*8000)**2*3040**2)/(3040**2+(ouvS*8000)**2)))/8000
    #Cv_by=5683.5/2-np.sqrt((x**2*3040**2)/(3040**2+x**2))
    #ouvby=(5683.5/2-np.sqrt(((ouvS*8000)**2*3040**2)/(3040**2+(ouvS*8000)**2)))/8000

    coeff=np.polyfit(ouvS,ouvby,3)
    id1=0.344*(1-ouvS)**3 + 0.363
    id2=coeff[2]*ouvS+coeff[1]*ouvS**2+coeff[0]*ouvS**3+coeff[3]


    plt.plot(ouvS,ouvby,label="solution analytique")
    plt.plot(ouvS,id1,label='interpolation $a \cdot (1-x)^3 + b$')
    plt.title("$ouv_{by}$ en fonction de $ouv_{s}$")
    plt.ylabel("$ouv_{by}(ouv_{s})$")
    plt.xlabel("$ouv_{s}$")
    #plt.plot(ouvS,id2,label='np')
    print(coeff)
    #mse=mean_squared_error(ouvby,id1)
    #mse2=mean_squared_error(ouvby,id2)
    #print(f"ax**3 : {mse}")
    #print(f"ax**3 : {mse2}")
    plt.legend()
    plt.show()

def deux_vannes():
    x=np.linspace(424,8000,8000)
    ouvS=np.linspace(0.053,1,500)
    Cv_by=5683 - 2*np.sqrt((x**2*3040**2)/(3040**2+x**2))
    ouvby=(5683 - 2*np.sqrt(((ouvS*8000)**2*3040**2)/(3040**2+(ouvS*8000)**2)))/8000
    #Cv_by=5683.5/2-np.sqrt((x**2*3040**2)/(3040**2+x**2))
    #ouvby=(5683.5/2-np.sqrt(((ouvS*8000)**2*3040**2)/(3040**2+(ouvS*8000)**2)))/8000

    coeff=np.polyfit(ouvS,ouvby,3)
    id1=0.712*(1-ouvS)**3
    id2=coeff[2]*ouvS+coeff[1]*ouvS**2+coeff[0]*ouvS**3+coeff[3]


    plt.plot(ouvS,ouvby,label="solution analytique")
    plt.plot(ouvS,id1,label='interpolation $a \cdot (1-x)^3 + b$')
    plt.title("$ouv_{by}$ en fonction de $ouv_{s}$")
    plt.ylabel("$ouv_{by}(ouv_{s})$")
    plt.xlabel("$ouv_{s}$")
    #plt.plot(ouvS,id2,label='np')
    print(coeff)
    #mse=mean_squared_error(ouvby,id1)
    #mse2=mean_squared_error(ouvby,id2)
    #print(f"ax**3 : {mse}")
    #print(f"ax**3 : {mse2}")
    plt.legend()
    plt.show()

une_vanne()