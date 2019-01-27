using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class GizmoLabel : MonoBehaviour {

	Terrain terrain;
	Vector3 offset;

	private void OnDrawGizmos () {
		if (!terrain) {
			terrain = GetComponent<Terrain>();
			offset = new Vector3(terrain.terrainData.size.x / 2f, 200f, terrain.terrainData.size.z / 2f);
		}

		Handles.Label(transform.position + offset, transform.name);
	}
}
