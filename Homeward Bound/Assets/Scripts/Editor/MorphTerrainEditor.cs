using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(MorphTerrain))]
public class MorphTerrainEditor : Editor {

	public override void OnInspectorGUI () {
		base.OnInspectorGUI();

		MorphTerrain targ = (MorphTerrain)target;

		if (GUILayout.Button("Initial Terrain")) {
			targ.SetInitial();
		}

		if (GUILayout.Button("Final Terrain")) {
			targ.SetFinal();
		}
	}
}
