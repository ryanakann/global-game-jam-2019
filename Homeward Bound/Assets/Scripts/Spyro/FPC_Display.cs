using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace AroundTheBend {

    /// <summary>
    /// Displays Properties of Crystal in baseObject
    /// </summary>
    [RequireComponent(typeof(Collectible))]
    public class FPC_Display : MonoBehaviour {

        public Renderer baseObject;
        public FictionCrystal fc;
        
        void Awake () {
            Colorize();
        }

        public void Colorize () {
            Collectible col = GetComponent<Collectible>();
            if (col != null) {
                CollectableData temp = col.data;
                if (temp != null) {
                    if (baseObject != null && temp is FictionCrystal) {
                        fc = (FictionCrystal)temp;
                        foreach (Material m in baseObject.sharedMaterials) {
                            m.color = fc.color;
                            m.SetColor("_EmissionColor", .5f*fc.color);
                        }

                        foreach (Light l in baseObject.GetComponentsInChildren<Light>()) {
                            l.color = fc.color;
                        }
                    }
                }
            }
        }
    }
}