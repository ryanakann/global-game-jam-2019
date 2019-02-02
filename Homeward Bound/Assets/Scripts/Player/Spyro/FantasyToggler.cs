using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace AroundTheBend {

    public delegate void ToggleFantasy ();

    /// <summary>
    /// Toggles objects between their real and fantasy counterparts
    /// Written by Julian K;
    /// </summary>
    public class FantasyToggler : MonoBehaviour {

        public static FantasyToggler instance;
        public ToggleFantasy FantasyToggleEvent;

        private void Awake () {
            if (instance != null) {
                Destroy(this);
                return;
            }

            instance = this;
        }

        // Start is called before the first frame update
        void Start () {

        }

        // Update is called once per frame
        void Update () {
            if (Input.GetButtonDown("Headband")) {
                FantasyToggleEvent?.Invoke();
            }
        }
    }
}
