using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FictionCrystal : ScriptableObject { 
    public Color color;
    public int Points;

    public void Collect () {
        Inventory.instance.FictionPoints += Points;
    }
}
