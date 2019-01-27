using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider))]
[RequireComponent(typeof(AudioSource))]
public class CollisionToAudio : MonoBehaviour
{
	public float minSens = 2.0f;
	public float maxSens = 4.0f;
	private float range;
    private AudioSource audio;
    // Start is called before the first frame update
    void Start()
    {
        audio = GetComponent<AudioSource>();
		range = maxSens-minSens;
    }

	void OnCollisionEnter(Collision collision)
    {
        if (collision.impulse.magnitude > minSens) {
			audio.volume = Mathf.Clamp01((collision.impulse.magnitude-minSens) / range);
        	audio.Play();
		}
    }

}
