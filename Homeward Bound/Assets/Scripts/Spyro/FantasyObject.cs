using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace AroundTheBend {

    /// <summary>
    /// an object that can have two different states
    /// </summary>
    public class FantasyObject : MonoBehaviour {

        public enum ToggleType { Hide, Animator, Mesh}
        public ToggleType toggleType;
        public bool Active;
        [Tooltip("Distance from Player")]
        public float activationRadius = 10;

        [Header("Toggle by Acitve")]
        public GameObject realVersion;
        public GameObject fantasyVersion;

        [Header("Toggle by Animator")]
        public Animator anim;

        private GameObject player;

        void Start () {
            player = GameObject.FindGameObjectWithTag("Player");

            FantasyToggler.instance.FantasyToggleEvent += ToggleFantasyState;
            if (toggleType == ToggleType.Hide) ToggleByHide();
        }

        /// <summary>
        /// Toggles state of object if the player is closeby.
        /// If the activation radius is less than or equal to 0, toggling can occur
        /// </summary>
        public void ToggleFantasyState () {
            float distance = activationRadius;
            if (activationRadius > 0 && player != null)
                distance = Vector3.Distance(transform.position, player.transform.position);
            if (distance > activationRadius) return;

            switch (toggleType) {
                case ToggleType.Animator:
                    if (anim != null)
                        anim.SetBool("Active", Active);
                    break;
                case ToggleType.Hide:
                    ToggleByHide();
                    break;
            }

            Active = !Active;
        }

        /// <summary>
        /// Switches the visibility of Objects
        /// </summary>
        private void ToggleByHide () {
            realVersion?.SetActive(!Active);
            fantasyVersion?.SetActive(Active);
        }

        private void OnDrawGizmos () {
            Gizmos.color = new Color(1, 0.92f, 0.016f, 0.25f);
            Gizmos.DrawSphere(transform.position, activationRadius);
        }
    }
}
