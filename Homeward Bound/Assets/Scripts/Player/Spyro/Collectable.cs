using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace AroundTheBend {
    /// <summary>
    /// Written by Julian K
    /// </summary>
    public class Collectable : MonoBehaviour {

        public Animator anim;
        public Rigidbody rb;

        // Stages of Animation
        public bool IsReady { get { return SpawnTime <= 0; } }
        public bool Activated { get; private set; }
        private bool withinActivator;
        private bool killing;

        // Timing Controls
        public float SpawnCooldown = 1f;
        private float SpawnTime;

        private readonly float epsilon = 0.011f;


        // Start is called before the first frame update
        void Start () {
            SpawnTime = SpawnCooldown;
            rb = GetComponent<Rigidbody>();
        }

        // Update is called once per frame
        void Update () {
            SpawnTime -= Time.deltaTime;
            if(IsReady && withinActivator && !Activated) {
                Activated = true;
            }

            // if the magnet has triggered the collectable, 
            // move this gameobject towards the activator
            if (Activated) {
                transform.position = Vector3.Lerp(transform.position,
                    ItemMagnetActivator.instance.transform.position, Time.deltaTime);
                if(Vector3.Distance(transform.position, 
                    ItemMagnetActivator.instance.transform.position) <= epsilon
                     && !killing) {
                    killing = true;

                    // kill the item with an animation, 
                    // if one exists
                    if (anim != null) anim.SetTrigger("Kill");
                    else Destroy(gameObject);
                }
            }
        }

        private void OnCollisionEnter (Collision collision) {
            if (collision.collider.tag == "ItemActivator") {
                withinActivator = true;
                if (IsReady) {
                    Activated = true;
                    // disable the rigidbody if one exists
                    if (rb != null) rb.isKinematic = true;
                }
            }
        }

        private void OnCollisionExit (Collision collision) {
            if (collision.collider.tag == "ItemActivator" )
                withinActivator = false;
        }
    }
}
