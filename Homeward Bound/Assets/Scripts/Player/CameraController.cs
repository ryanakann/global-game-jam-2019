using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class CameraController : MonoBehaviour
{
	public Transform player;
	public LayerMask mask;

	[Header("Current")]
	public float minZoom = 5f;
	public float maxZoom = 20f;
	public float scrollSpeed = 1f;

	[Header("Default")]
	public float defaultMinZoom = 5f;
	public float defaultMaxZoom = 20f;
	[Range(0f, 5f)] public float defaultScrollSpeed = 1f;

	[Header("Ocean")]
	public float oceanMinZoom = 5f;
	public float oceanMaxZoom = 20f;
	[Range(0f, 5f)] public float oceanScrollSpeed = 1f;

	[Header("Mountain")]
	public float mountainMinZoom = 5f;
	public float mountainMaxZoom = 20f;
	[Range(0f, 5f)] public float mountainScrollSpeed = 1f;

	[Header("Forest")]
	public float forestMinZoom = 5f;
	public float forestMaxZoom = 20f;
	[Range(0f, 5f)] public float forestScrollSpeed = 1f;

	private CinemachineVirtualCamera virtualCam;
	private CinemachineFramingTransposer composer;

	private RaycastHit hit;

	public string ground;

    // Start is called before the first frame update
    void Start() {
		virtualCam = GetComponent<CinemachineVirtualCamera>();
		composer = virtualCam.GetCinemachineComponent<CinemachineFramingTransposer>();

	}

    // Update is called once per frame
    void Update() {
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
		print("Ground: " + ground);

		if (composer.m_CameraDistance < minZoom) {
			composer.m_CameraDistance += scrollSpeed * Time.deltaTime;
		} else if (composer.m_CameraDistance > maxZoom) {
			composer.m_CameraDistance -= scrollSpeed * Time.deltaTime;
		}

		if (composer.m_CameraDistance >= minZoom && composer.m_CameraDistance <= maxZoom) {
			composer.m_CameraDistance += Input.GetAxis("Mouse ScrollWheel") * scrollSpeed;
		} else {
			composer.m_CameraDistance = Mathf.Clamp(composer.m_CameraDistance, minZoom, maxZoom);
		}
	}
}
