using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class CameraController : MonoBehaviour
{
	public float minZoom = 5f;
	public float maxZoom = 20f;
	[Range(0f, 5f)] public float scrollSpeed = 1f;

	private CinemachineVirtualCamera virtualCam;
	private CinemachineFramingTransposer composer;

    // Start is called before the first frame update
    void Start() {
		virtualCam = GetComponent<CinemachineVirtualCamera>();
		composer = virtualCam.GetCinemachineComponent<CinemachineFramingTransposer>();

	}

    // Update is called once per frame
    void Update() {
		if (composer.m_CameraDistance >= minZoom && composer.m_CameraDistance <= maxZoom) {
			composer.m_CameraDistance += Input.GetAxis("Mouse ScrollWheel") * scrollSpeed;
		} else {
			composer.m_CameraDistance = Mathf.Clamp(composer.m_CameraDistance, minZoom, maxZoom);
		}
	}
}
