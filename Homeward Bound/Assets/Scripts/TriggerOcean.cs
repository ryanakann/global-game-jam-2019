using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;
using UnityEngine.Rendering.PostProcessing;

public class TriggerOcean : MonoBehaviour {

	public MorphTerrain morphTerrain;
	public CinemachineVirtualCamera virtualCamera;
	private CinemachineTrackedDolly dolly;
	public float cutsceneLength;

	private float currentVelocity;
	public bool cutsceneStarted;

	public PostProcessVolume defaultVolume;
	public PostProcessVolume oceanVolume;


    public GameObject spawn_in;

	private void OnTriggerEnter (Collider other) {
        if (other.CompareTag("Player") && !cutsceneStarted) {
			if (morphTerrain) {
                if (spawn_in)
                    spawn_in.SetActive(true);
				GetComponent<Collider>().enabled = false;
				PlayerInput.allowMovement = false;
				morphTerrain.Lerp(0.75f / cutsceneLength);
				StartCoroutine(FollowDolly());
				StartCoroutine(FadeVolumes());
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

	public IEnumerator FadeVolumes () {
		float t = 0f;
		while (t < 1f) {
			print("Ocean T:" + t);
			defaultVolume.weight = 1 - t;
			oceanVolume.weight = t;
			t += 0.15f * Time.deltaTime;
			FindObjectOfType<BoatMovement>()?.InitializeBoat();
			yield return new WaitForEndOfFrame();
		}
	}

	public IEnumerator FollowDolly () {
		cutsceneStarted = true;
		virtualCamera.enabled = true;
		while (dolly.m_PathPosition < 0.85f) {
			dolly.m_PathPosition = Mathf.SmoothDamp(dolly.m_PathPosition, 1f, ref currentVelocity, cutsceneLength);
			yield return new WaitForEndOfFrame();
		}
		FindObjectOfType<BoatMovement>()?.SetSail();
		virtualCamera.enabled = false;
		cutsceneStarted = false;
        PlayerInput.allowMovement = true;
	}
}
