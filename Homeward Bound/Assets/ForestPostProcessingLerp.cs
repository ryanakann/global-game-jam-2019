using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;

public class ForestPostProcessingLerp : MonoBehaviour {
	public Transform player;
	public Transform forestStart;
	public Transform forestCenter;

	public PostProcessVolume defaultVolume;
	public PostProcessVolume forestVolume;

	float maxDistance;
	float currentDistance;
	float t;

	private void Start () {
		maxDistance = (forestStart.position - forestCenter.position).magnitude;
	}

	private void Update () {
		if ((currentDistance = (player.position - forestCenter.position).magnitude) < maxDistance) {
			t = currentDistance / maxDistance;
			print("T: " + t);
			defaultVolume.weight = t;
			forestVolume.weight = 1 - t;
		}
	}
}
