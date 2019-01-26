using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MorphTerrain : MonoBehaviour {
	Terrain terrain;
	int terrainWidth, terrainHeight;
	float[,] heights;
	private float t;

	public Terrain initialTerrain;
	public Terrain finalTerrain;
	public float speed = 1f;
	public bool useAnimationCurve = false;
	public AnimationCurve curve;

	// Start is called before the first frame update
	void Start () {
		t = 0f;

		terrain = GetComponent<Terrain>();
		terrainWidth = terrain.terrainData.heightmapWidth;
		terrainHeight = terrain.terrainData.heightmapHeight;
		heights = terrain.terrainData.GetHeights(0, 0, terrainWidth, terrainHeight);

		StartCoroutine(LerpTerrain());
	}

	IEnumerator LerpTerrain () {
		bool forwards = speed > 0f;
		float dir = forwards ? 1f : -1f;
		float animT = 0f;

		while ((forwards && t < 1f) || (!forwards && t > 0f)) {
			for (int i = 0; i < terrainWidth; i++) {
				for (int j = 0; j < terrainHeight; j++) {
					heights[i, j] = Mathf.Lerp(initialTerrain.terrainData.GetHeight(i, j),
											   finalTerrain.terrainData.GetHeight(i, j),
											   t) / terrain.terrainData.heightmapScale.y;
				}
			}
			terrain.terrainData.SetHeights(0, 0, heights);

			t += speed * dir * Time.deltaTime * (useAnimationCurve ? curve.Evaluate(animT) : 1f);
			animT += speed * Time.deltaTime;
			yield return new WaitForEndOfFrame();
		}

		t = forwards ? 1f : 0f;
	}
}
