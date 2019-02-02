using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

namespace AroundTheBend {
    [CustomEditor(typeof(ItemMagnetActivator))]
    public class IMAEditor : Editor {

        public override void OnInspectorGUI () {
            base.OnInspectorGUI();

            ItemMagnetActivator ima = (ItemMagnetActivator)target;
            float temp = EditorGUILayout.FloatField("Radius", ima.Radius);
            if (temp != ima.Radius) {
                ima.Radius = temp;
            }
        }
    }
}