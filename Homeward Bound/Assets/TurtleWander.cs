using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class TurtleWander : MonoBehaviour
{
	public float speed = 5f;
	float t;
	float sinT;
	float direction;
	Vector3 targetDirection;
	float magnitude;
	float firstAngle;
	float secondAngle;
	float targetAngle;

	Vector3 initial;
	Vector3 target;
	Rigidbody rb;

	Vector3 refVel;

	private void Start () {
		t = 0f;
		rb = GetComponent<Rigidbody>();
		initial = transform.position;
		target = transform.GetChild(0).position;
		targetDirection = (initial - target);
		magnitude = targetDirection.magnitude;
		targetDirection.Normalize();
		transform.right = targetDirection * direction;
		firstAngle = transform.eulerAngles.y - 30f;
		secondAngle = firstAngle + 180f;
	}

	private void Update () {
		sinT = (Mathf.Sin(t * Mathf.PI * speed / magnitude) + 1) / 2f;
		direction = Mathf.Sign(Mathf.Cos(t * Mathf.PI * speed / magnitude));
		//if (direction > 0) {
		//	targetAngle = firstAngle;
		//} else {
		//	targetAngle = secondAngle;
		//}
		t += Time.deltaTime;
		transform.position = Vector3.Lerp(initial, target, sinT);
		//transform.eulerAngles = Vector3.SmoothDamp(transform.eulerAngles, Vector3.up * targetAngle, ref refVel, 1f);
		transform.right = targetDirection * direction;
	}
}
