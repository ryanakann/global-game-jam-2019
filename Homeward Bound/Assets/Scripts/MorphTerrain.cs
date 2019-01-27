using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MorphTerrain : MonoBehaviour {
	Terrain terrain;
	int terrainWidth, terrainHeight;

	public float[,] heights;
	public float[,] initialHeights;
	public float[,] finalHeights;

	public float[,,] alphas;
	public float[,,] initialAlphas;
	public float[,,] finalAlphas;
	public int alphaDimensions;
	public int alphaWidth, alphaHeight;

	public float t;
	public bool lerping;

	public Terrain initialTerrain;
	public Terrain finalTerrain;
	public float speed = 1f;
	public bool useAnimationCurve = false;
	public AnimationCurve curve;

	public bool morphOnStart = false;

	// Start is called before the first frame update
	void Start () {
		t = 0f;
		lerping = false;
		UpdateReferences();
		SetInitial();
		if (morphOnStart) {
		    Lerp();
		}
	}

	void UpdateReferences () {
		if (!terrain) {
			terrain = GetComponent<Terrain>();
		}

		terrainWidth = terrain.terrainData.heightmapWidth;
		terrainHeight = terrain.terrainData.heightmapHeight;
		heights = terrain.terrainData.GetHeights(0, 0, terrainWidth, terrainHeight);
		initialHeights = initialTerrain.terrainData.GetHeights(0, 0, terrainWidth, terrainHeight);
		finalHeights = finalTerrain.terrainData.GetHeights(0, 0, terrainWidth, terrainHeight);

		//alphaWidth = terrain.terrainData.alphamapWidth;
		//alphaHeight = terrain.terrainData.alphamapHeight;
		//alphas = terrain.terrainData.GetAlphamaps(0, 0, alphaWidth, alphaHeight);
		//initialAlphas = initialTerrain.terrainData.GetAlphamaps(0, 0, alphaWidth, alphaHeight);
		//finalAlphas = finalTerrain.terrainData.GetAlphamaps(0, 0, alphaWidth, alphaHeight);
		////finalAlphas = 
		//alphaDimensions = alphas.GetLength(2);
	}

	void LerpHeight () {
		for (int i = 0; i < terrainWidth; i++) {
			for (int j = 0; j < terrainHeight; j++) {
				heights[j, i] = Mathf.Lerp(initialTerrain.terrainData.GetHeight(i, j),
										   finalTerrain.terrainData.GetHeight(i, j),
										   t) 
										   / terrain.terrainData.heightmapScale.y;


				//for (int k = 0; k < alphaDimensions; k++) {
				//	alphas[j, i, k] = Mathf.Lerp(initialTerrain.terrainData.GetAlphamaps(i, j, 1, 1)[i, j, k],
				//								 finalTerrain.terrainData.GetAlphamaps(i, j, 1, 1)[i, j, k], 
				//		                         t);
				//}
			}
			terrain.terrainData.SetHeights(0, 0, heights);
			//terrain.terrainData.SetAlphamaps(0, 0, alphas);
		}
	}

	public void Lerp () {
		StartCoroutine(LerpTerrain());
	}

	public void Lerp (float speed) {
		this.speed = speed;
		StartCoroutine(LerpTerrain());
	}

	IEnumerator LerpTerrain () {
		if (!lerping) {
			lerping = true;
			bool forwards = speed > 0f;
			float dir = forwards ? 1f : -1f;
			float animT = 0f;

			while ((forwards && t < 1f) || (!forwards && t > 0f)) {
				LerpHeight();

				t += speed * dir * Time.deltaTime * (useAnimationCurve ? curve.Evaluate(animT) : 1f);
				animT += speed * Time.deltaTime;
				yield return new WaitForEndOfFrame();
			}

			t = forwards ? 1f : 0f;
			lerping = false;
		}
	}

	public void SetInitial () {
		t = 0f;
		UpdateReferences();
		LerpHeight();
	}

	public void SetFinal () {
		t = 1f;
		UpdateReferences();
		LerpHeight();
	}
}
