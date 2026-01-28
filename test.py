import matplotlib.pyplot as plt
import numpy as np


def deux_vannes():
    x1 = np.linspace(424,8000)
    y1 = 5683 - 2*np.sqrt((x1**2*3040**2)/(x1**2+3040**2))
    x2 = x1/8000
    y2 = y1/8000

    # Créer une figure avec deux sous-graphiques côte à côte
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

    # Premier graphe
    ax1.plot(x1,y1)
    ax1.set_title("$CV_{by}$ en fonction de $CV_s$")
    ax1.set_ylabel("$CV_{by}(CV_s)$")
    ax1.set_xlabel("$CV_s$")

    # Deuxième graphe
    ax2.plot(x2,y2)
    ax2.set_title("$ouv_{by}$ en fonction de $ouv_{s}$")
    ax2.set_ylabel("$ouv_{by}(ouv_{s})$")
    ax2.set_xlabel("$ouv_{s}$")

    # Afficher les graphiques
    plt.tight_layout()  # Ajuste l'espacement entre les sous-graphiques
    plt.show()

def une_vanne():
    x1 = np.linspace(880,8000)
    y1 = 5683 - np.sqrt((x1**2*3040**2)/(x1**2+3040**2))
    x2 = x1/8000
    y2 = y1/8000

    # Créer une figure avec deux sous-graphiques côte à côte
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

    # Premier graphe
    ax1.plot(x1,y1)
    ax1.set_title("$CV_{by}$ en fonction de $CV_s$")
    ax1.set_ylabel("$CV_{by}(CV_s)$")
    ax1.set_xlabel("$CV_s$")

    # Deuxième graphe
    ax2.plot(x2,y2)
    ax2.set_title("$ouv_{by}$ en fonction de $ouv_{s}$")
    ax2.set_ylabel("$ouv_{by}(ouv_{s})$")
    ax2.set_xlabel("$ouv_{s}$")

    # Afficher les graphiques
    plt.tight_layout()  # Ajuste l'espacement entre les sous-graphiques
    plt.show()

une_vanne()