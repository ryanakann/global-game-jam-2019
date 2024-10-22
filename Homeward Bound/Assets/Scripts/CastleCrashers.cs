﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Animator))]
public class CastleCrashers : MonoBehaviour
{

    private Animator anim;
    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void ToggleCastle()
    {
        anim.SetTrigger("Toggle");
    }

	private void OnTriggerEnter (Collider other) {
		if (other.CompareTag("Player")) {
			ToggleCastle();
		}
	}

	private void OnTriggerExit (Collider other) {
		if (other.CompareTag("Player")) {
			ToggleCastle();
		}
	}
}
