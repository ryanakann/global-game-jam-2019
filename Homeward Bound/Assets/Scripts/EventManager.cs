using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EventManager : MonoBehaviour {

	public static EventManager instance;

	private void Awake () {
		if (!instance) {
			instance = this;
		} else {
			Destroy(gameObject);
		}
	}
}
