using System.IO;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class LerpHeightMaps : EditorWindow {

	static string terrainName;
	static string path;
	static Texture2D initial;
	static Texture2D final;
	static int numSteps;

	[MenuItem("Tools/Terrain/Lerp Heightmaps")]
	public static void OpenWindow () {
		var window = GetWindow<LerpHeightMaps>("Lerp Heightmaps");
		window.Show();
	}

	public void OnGUI () {
		terrainName = EditorGUILayout.TextField("Terrain Name", terrainName);
		initial = (Texture2D)EditorGUILayout.ObjectField("Initial Heightmap", initial, typeof(Texture2D));
		final = (Texture2D)EditorGUILayout.ObjectField("Final Heightmap", final, typeof(Texture2D));
		numSteps = EditorGUILayout.IntField("Number of Steps", numSteps);

		if (GUILayout.Button("Lerp")) {
			//path = "Assets/Textures/" + terrainName
			LerpImage();
		}
	}

	public static void LerpImage () {
		//List<Texture2D> textures = new List<Texture2D>();

		AssetDatabase.CreateFolder("Assets/Textures", terrainName + " Morph");

		for (int i = 0; i < numSteps; i++) {
			Texture2D texture = LerpStep(initial, final, (float)i / (numSteps - 1));
			texture.Apply();

			path = Path.Combine(Application.dataPath, "Textures", terrainName + " Morph", terrainName + i.ToString() + ".jpg");
			//AssetDatabase.CreateAsset(texture.EncodeToPNG(), "Assets/Textures/" + terrainName + " Morph/" + terrainName + i.ToString() + ".jpg");
			File.WriteAllBytes(path, texture.EncodeToJPG());
		}
	}

	public static Texture2D LerpStep (Texture2D start, Texture2D end, float t) {
		Texture2D mid = new Texture2D(start.width, start.height);

		for (int i = 0; i < start.width; i++) {
			for (int j = 0; j < start.height; j++) {
				mid.SetPixel(i, j, Color.Lerp(start.GetPixel(i, j), end.GetPixel(i, j), t));
			}
		}
		mid.Apply();
		return mid;
	}
}
