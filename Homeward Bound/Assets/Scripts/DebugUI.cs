using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DebugUI : MonoBehaviour {
	public bool debugEnabled = true;

	public Transform player;

	public Transform oceanWaypoint;
	public Transform mountainWaypoint;
	public Transform forestWaypoint;

	private void OnGUI () {
		if (!debugEnabled) return;

		if (GUILayout.Button("Ocean Teleport")) {
			player.position = oceanWaypoint.position;
		}
		if (GUILayout.Button("Mountain Teleport")) {
			player.position = mountainWaypoint.position;
		}
		if (GUILayout.Button("Forest Teleport")) {
			player.position = forestWaypoint.position;
		}
	}
}
