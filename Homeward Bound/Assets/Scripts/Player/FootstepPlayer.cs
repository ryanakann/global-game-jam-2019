using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FootstepPlayer : MonoBehaviour
{
	public AudioSource sound;
	void Start() {
		if (!sound) {
			sound = GetComponent<AudioSource>();
		}
	}
	public void Footstep() {
		sound.Play();
	}
}
