using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(TerrainHelper))]
public class TerrainHelperEditor : Editor {

	public override void OnInspectorGUI () {
		base.OnInspectorGUI();

		TerrainHelper targ = (TerrainHelper)target;

		if (GUILayout.Button("Flatten Terrain")) {
			targ.Flatten();
		}
	}
}
