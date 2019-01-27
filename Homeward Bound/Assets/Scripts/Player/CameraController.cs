using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;
using UnityEngine.Rendering.PostProcessing;

public class CameraController : MonoBehaviour {
	public Transform player;
	public LayerMask mask;
	public string ground;
	public float secondsPerTransition = 5f;
	private float transitionsPerSecond;

	[Header("Current")]
	public float minZoom = 5f;
	public float maxZoom = 20f;
	public float scrollSpeed = 1f;

	[Header("Default")]
	public float defaultMinZoom = 5f;
	public float defaultMaxZoom = 20f;
	[Range(0f, 5f)] public float defaultScrollSpeed = 1f;
	public PostProcessVolume defaultVolume;

	[Header("Ocean")]
	public float oceanMinZoom = 5f;
	public float oceanMaxZoom = 20f;
	public bool oceanTriggered = false;
	[Range(0f, 5f)] public float oceanScrollSpeed = 1f;
	public PostProcessVolume oceanVolume;

	[Header("Mountain")]
	public float mountainMinZoom = 5f;
	public float mountainMaxZoom = 20f;
	public bool mountainTriggered = false;
	[Range(0f, 5f)] public float mountainScrollSpeed = 1f;
	public PostProcessVolume mountainVolume;

	[Header("Forest")]
	public float forestMinZoom = 5f;
	public float forestMaxZoom = 20f;
	public bool forestTriggered = false;
	[Range(0f, 5f)] public float forestScrollSpeed = 1f;
	public PostProcessVolume forestVolume;

	private CinemachineVirtualCamera virtualCam;
	private CinemachineFramingTransposer composer;

	private float refVel;

	private RaycastHit hit;

	// Start is called before the first frame update
	void Start () {
		virtualCam = GetComponent<CinemachineVirtualCamera>();
		composer = virtualCam.GetCinemachineComponent<CinemachineFramingTransposer>();
		composer.m_MaximumDistance = 1000f;
		composer.m_MinimumDistance = 5f;
	}

	// Update is called once per frame
	void Update () {
		composer.m_CameraDistance = Mathf.SmoothDamp(composer.m_CameraDistance, maxZoom, ref refVel, secondsPerTransition);

		if (Physics.Raycast(player.position, Vector3.down, out hit, float.PositiveInfinity, mask)) {
			if (hit.transform.name.Equals("Ocean")) {
				ground = "Ocean";
				minZoom = oceanMinZoom;
				maxZoom = oceanMaxZoom;
				scrollSpeed = oceanScrollSpeed;

				if (!oceanTriggered) return;

				if (oceanVolume.weight < 1f) {
					oceanVolume.weight += .15f * Time.deltaTime;

					if (defaultVolume.weight > 0f) {
						defaultVolume.weight -= .15f * Time.deltaTime;
					} else {
						defaultVolume.weight = 0f;
					}
				} else {
					oceanVolume.weight = 1f;
				}
			} else if (hit.transform.name.Equals("Mountain")) {
				ground = "Mountain";
				minZoom = mountainMinZoom;
				maxZoom = mountainMaxZoom;
				scrollSpeed = mountainScrollSpeed;

				if (!mountainTriggered) return;

				if (mountainVolume.weight < 1f) {
					mountainVolume.weight += .15f * Time.deltaTime;

					if (defaultVolume.weight > 0f) {
						defaultVolume.weight -= .15f * Time.deltaTime;
					} else {
						defaultVolume.weight = 0f;
					}
				} else {
					mountainVolume.weight = 1f;
				}

			} else if (hit.transform.name.Equals("Forest")) {
				ground = "Forest";
				minZoom = forestMinZoom;
				maxZoom = forestMaxZoom;
				scrollSpeed = forestScrollSpeed;

				if (!forestTriggered) return;

				if (forestVolume.weight < 1f) {
					forestVolume.weight += .15f * Time.deltaTime;

					if (defaultVolume.weight > 0f) {
						defaultVolume.weight -= .15f * Time.deltaTime;
					} else {
						defaultVolume.weight = 0f;
					}
				} else {
					forestVolume.weight = 1f;
				}
			} else {
				ground = "Default";
				minZoom = defaultMinZoom;
				maxZoom = defaultMaxZoom;
				scrollSpeed = defaultScrollSpeed;

				transitionsPerSecond = 1 / secondsPerTransition;

				if (defaultVolume.weight < 1f) {
					defaultVolume.weight += .25f * Time.deltaTime;

					if (oceanVolume.weight > 0f) {
						oceanVolume.weight -= .25f * Time.deltaTime;
					} else {
						oceanVolume.weight = 0f;
					}

					if (forestVolume.weight > 0f) {
						forestVolume.weight -= .25f * Time.deltaTime;
					} else {
						forestVolume.weight = 0f;
					}

					if (mountainVolume.weight > 0f) {
						mountainVolume.weight -= .2f * Time.deltaTime;
					} else {
						mountainVolume.weight = 0f;
					}
				} else {
					defaultVolume.weight = 1f;
				}
			}
		}
		//if (composer.m_CameraDistance < minZoom) {
		//} else if (composer.m_CameraDistance > maxZoom) {
		//	composer.m_CameraDistance -= 50f * Time.deltaTime;
		//}

		//if (composer.m_CameraDistance >= minZoom && composer.m_CameraDistance <= maxZoom) {
		//	composer.m_CameraDistance += Input.GetAxis("Mouse ScrollWheel") * scrollSpeed;
		//} else {
		//	composer.m_CameraDistance = Mathf.Clamp(composer.m_CameraDistance, minZoom, maxZoom);
		//}
	}
}
