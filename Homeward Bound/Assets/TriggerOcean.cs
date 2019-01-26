using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class TriggerOcean : MonoBehaviour {

	public MorphTerrain morphTerrain;
	public CinemachineVirtualCamera virtualCamera;
	private CinemachineTrackedDolly dolly;
	public float cutsceneLength;

	private float currentVelocity;
	public bool cutsceneStarted;

	private void OnTriggerEnter (Collider other) {
		if (other.CompareTag("Player") && !cutsceneStarted) {
			print("Let's go!");
			if (morphTerrain) {
				morphTerrain.Lerp(0.75f / cutsceneLength);
				StartCoroutine(FollowDolly());
			}
		}

	}

	private void Start () {
		if (virtualCamera.enabled) {
			virtualCamera.enabled = false;
		}
		dolly = virtualCamera.GetCinemachineComponent<CinemachineTrackedDolly>();
		cutsceneStarted = false;
	}

	public IEnumerator FollowDolly () {
		cutsceneStarted = true;
		virtualCamera.enabled = true;
		while (dolly.m_PathPosition < 0.75f) {
			dolly.m_PathPosition = Mathf.SmoothDamp(dolly.m_PathPosition, 1f, ref currentVelocity, cutsceneLength);
			yield return new WaitForEndOfFrame();
		}
		virtualCamera.enabled = false;
		cutsceneStarted = false;
	}
}
