using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;
using UnityEngine.Rendering.PostProcessing;

public class CameraController : MonoBehaviour {
	public Transform player;
	public LayerMask mask;
	public string ground;

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
	[Range(0f, 5f)] public float oceanScrollSpeed = 1f;
	public PostProcessVolume oceanVolume;

	[Header("Mountain")]
	public float mountainMinZoom = 5f;
	public float mountainMaxZoom = 20f;
	[Range(0f, 5f)] public float mountainScrollSpeed = 1f;
	public PostProcessVolume mountainVolume;

	[Header("Forest")]
	public float forestMinZoom = 5f;
	public float forestMaxZoom = 20f;
	[Range(0f, 5f)] public float forestScrollSpeed = 1f;
	public PostProcessVolume forestVolume;

	private CinemachineVirtualCamera virtualCam;
	private CinemachineFramingTransposer composer;

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
		if (Physics.Raycast(transform.position, Vector3.down, out hit, float.PositiveInfinity, mask)) {
			if (hit.transform.name.Contains("Ocean")) {
				ground = "Ocean";
				minZoom = oceanMinZoom;
				maxZoom = oceanMaxZoom;
				scrollSpeed = oceanScrollSpeed;
			} else if (hit.transform.name.Contains("Mountain")) {
				ground = "Mountain";
				minZoom = mountainMinZoom;
				maxZoom = mountainMaxZoom;
				scrollSpeed = mountainScrollSpeed;
			} else if (hit.transform.name.Contains("Forest")) {
				ground = "Forest";
				minZoom = forestMinZoom;
				maxZoom = forestMaxZoom;
				scrollSpeed = forestScrollSpeed;
			} else {
				ground = "Default";
				minZoom = defaultMinZoom;
				maxZoom = defaultMaxZoom;
				scrollSpeed = defaultScrollSpeed;
			}
		}

		if (composer.m_CameraDistance < minZoom) {
			composer.m_CameraDistance += 0.25f * Time.deltaTime;
		} else if (composer.m_CameraDistance > maxZoom) {
			composer.m_CameraDistance -= 0.25f * Time.deltaTime;
		}

		if (composer.m_CameraDistance >= minZoom && composer.m_CameraDistance <= maxZoom) {
			composer.m_CameraDistance += Input.GetAxis("Mouse ScrollWheel") * scrollSpeed;
		} else {
			composer.m_CameraDistance = Mathf.Clamp(composer.m_CameraDistance, minZoom, maxZoom);
		}
	}
}
