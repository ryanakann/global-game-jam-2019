using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

namespace AroundTheBend {
    [CustomEditor(typeof(Collectible))]
    public class CollectibleE : Editor {

        private Collectible c;

        public override void OnInspectorGUI () {
            c = (Collectible)target;

            SerializedProperty prop = serializedObject.GetIterator();
            prop.NextVisible(true);

            do {
                switch (prop.name.ToLower()) {
                    case "data":
                        var temp = EditorGUILayout.ObjectField("Scriptable Data",
                            c.data, typeof(CollectableData), false);
                        if (temp != c.data) {
                            c.data = (CollectableData)temp;
                            UpdateVisuals();
                        }
                        break;
                    default:
                        EditorGUILayout.PropertyField(prop);
                        break;
                }
            } while (prop.NextVisible(false));
			serializedObject.ApplyModifiedProperties();

            if (GUILayout.Button("Update Visuals"))
                UpdateVisuals();
        }

        private void UpdateVisuals () {
            if(c.data is FictionCrystal) {
                c.GetComponent<FPC_Display>()?.Colorize();
            }
        }
    }
}
