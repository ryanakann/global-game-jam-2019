using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TerrainHelper : MonoBehaviour {
	public float defaultHeight = 0f;

	public void Flatten () {
		Terrain terrain = GetComponent<Terrain>();
		int width = terrain.terrainData.heightmapWidth;
		int height = terrain.terrainData.heightmapHeight;
		float[,] data = terrain.terrainData.GetHeights(0, 0, width, height);

		float heightScale = terrain.terrainData.heightmapScale.y;
		float adjustedHeight = Mathf.Clamp(defaultHeight, 0f, heightScale) / heightScale;

		for (int i = 0; i < width; i++) {
			for (int j = 0; j < height; j++) {
				data[i, j] = adjustedHeight;
			}
		}
		terrain.terrainData.SetHeights(0, 0, data);
	}
}
