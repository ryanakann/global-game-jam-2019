using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace AroundTheBend {
    
    public abstract class CollectableData : ScriptableObject {
        public abstract void Collect ();
    }

    //[CreateAssetMenu(fileName = "Crystal_00", menuName = "FictionCrystal")]
    public class FictionCrystal : CollectableData {
        public Color color;
        public int Points;

        public override void Collect () {
            Inventory.instance.FictionPoints += Points;
            HUD.instance.ShowFP();
        }
    }
}