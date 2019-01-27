using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RandomRotation : MonoBehaviour
{
	public bool fuckyAxis = false;

    // Start is called before the first frame update
    void Start () {
		Vector2 rand = Random.insideUnitCircle.normalized;
		if (!fuckyAxis) {
			transform.forward = new Vector3(rand.x, 0f, rand.y);
		} else {
			transform.eulerAngles = Vector3.up * Random.Range(0, 360f);
		}
	}
}
