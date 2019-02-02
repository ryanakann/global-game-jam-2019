using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace AroundTheBend {
    [RequireComponent(typeof(SphereCollider))]
    public class ItemMagnetActivator : MonoBehaviour {

        public static ItemMagnetActivator instance;
        private SphereCollider col;

        public float Radius {
            get { return rad; }
            set { col.radius = rad = value; }
        }

        private float rad = 17.1f;

        private void Awake () {
            if (instance != null) {
                Destroy(this);
                return;
            }

            instance = this;
        }


        // Start is called before the first frame update
        void Start () {
            col = GetComponent<SphereCollider>();
        }

        // Update is called once per frame
        void Update () {
            
        }
    }
}
