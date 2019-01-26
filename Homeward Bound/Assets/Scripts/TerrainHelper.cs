using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TerrainHelper : MonoBehaviour {
	public float amount = 50f;

	public void Flatten () {
		Terrain terrain = GetComponent<Terrain>();
		int width = terrain.terrainData.heightmapWidth;
		int height = terrain.terrainData.heightmapHeight;
		float[,] data = terrain.terrainData.GetHeights(0, 0, width, height);

		float heightScale = terrain.terrainData.heightmapScale.y;
		float adjustedHeight = Mathf.Clamp(amount, 0f, heightScale) / heightScale;

		for (int i = 0; i < width; i++) {
			for (int j = 0; j < height; j++) {
				data[i, j] = adjustedHeight;
			}
		}
		terrain.terrainData.SetHeights(0, 0, data);
	}

	public void Raise () {
		Terrain terrain = GetComponent<Terrain>();
		int width = terrain.terrainData.heightmapWidth;
		int height = terrain.terrainData.heightmapHeight;
		float[,] data = terrain.terrainData.GetHeights(0, 0, width, height);

		float heightScale = terrain.terrainData.heightmapScale.y;

		for (int i = 0; i < width; i++) {
			for (int j = 0; j < height; j++) {
				float adjustedHeight = Mathf.Clamp(data[i, j] * heightScale + amount, 0f, heightScale) / heightScale;
				data[i, j] = adjustedHeight;
			}
		}
		terrain.terrainData.SetHeights(0, 0, data);
	}
}
