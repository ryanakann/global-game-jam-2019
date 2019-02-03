using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace AroundTheBend {
    /// <summary>
    /// Written by Julian K
    /// </summary>
    public class Collectible : MonoBehaviour {

        public Animator anim;
        public Rigidbody rb;
        public CollectableData data;

        private SphereCollider sc;

        // Stages of Animation
        public bool IsReady { get { return SpawnTime <= 0; } }
        public bool Activated { get; private set; }
        private bool withinActivator;
        private bool killing;

        // Timing Controls
        public float SpawnCooldown = 1f;
        private float SpawnTime;

        private Vector3 Center {
            get {
                return ItemMagnetActivator.instance.transform.position - 
                    ItemMagnetActivator.instance.VerticalOffset * Vector3.up;
            }
        }

        //private readonly float epsilon = 0.011f;
        
        void Start () {
            SpawnTime = SpawnCooldown;
            rb = GetComponent<Rigidbody>();
            sc = GetComponentInChildren<SphereCollider>();
        }
        
        void Update () {
            SpawnTime -= IsReady ? 0 : Time.deltaTime;
            if(IsReady && withinActivator && !Activated)
                Activate();
            
            // if the magnet has triggered the collectable, 
            // move this gameobject towards the activator
            if (Activated) {
                ItemMagnetActivator ima = ItemMagnetActivator.instance;
                transform.position = Vector3.Lerp(transform.position,
                    Center, ima.Speed * Time.deltaTime);
                if (Vector3.Distance(transform.position,
                    ima.transform.position) <= ima.KillRadius
                     && !killing) {
                    Kill();
                }
            }
        }

        private void OnTriggerEnter (Collider collision) {
            if (collision.CompareTag("ItemActivator")) {
                withinActivator = true;
                //print("WITHIN");
                if (IsReady) {
                    Activate();
                }
            }

            //if (collision.CompareTag("Player") && Activated) {
            //    Kill();
            //}
        }

        private void OnTriggerExit (Collider collision) {
            if (collision.CompareTag("ItemActivator")) {
                print("without");
                withinActivator = false;
            }
        }

        /// <summary>
        /// Kill The object
        /// </summary>
        private void Kill () {
            //print("KILL!");
            killing = true;

            data?.Collect();

            // kill the item with an animation, 
            // if one exists
            if (anim != null) anim.SetTrigger("Kill");
            else Destroy(gameObject);
        }

        private void Activate () {
            Activated = true;
            // disable the rigidbody if one exists
            if (rb != null) rb.isKinematic = true;

            // disable colliders that may interfere with gameplay
            foreach(Collider col in GetComponentsInChildren<Collider>()) {
                if (!col.isTrigger) col.enabled = false;
            }
        }

        
        private void OnDrawGizmos () {
            if (sc == null) return;
            Gizmos.color = new Color(1, 0.92f, 0.016f, 0.25f);
            Gizmos.DrawSphere(sc.transform.position +  sc.center, sc.radius);
        }
    }
}
