using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

namespace AroundTheBend {

    [System.Serializable]
    public class Section {
        public Animator Anim;
        public bool Active, StayActive;
        public float CooldownTime = 5f;
        [HideInInspector] public float showTime;

        public void Start () {
            if (Active && !StayActive)
                showTime = CooldownTime;
        }

        public void Update () {
            if (!StayActive) {
                showTime -= Time.deltaTime;
                if (showTime <= 0) {
                    Hide();
                }
            }
        }

        public void Show () {
            Active = true;
            Anim?.SetBool("Active", Active);
            showTime = CooldownTime;
        }

        public void Hide () {
            StayActive = Active = false;
            Anim?.SetBool("Active", Active);
        }
    }

    public class HUD : MonoBehaviour {

        public static HUD instance;
        public float tranSpeed = 1.5f;
        
        [Header("Sections")]
        public Section FictionPointsObject;
        public Section EquipFrameObject;
        public Section LivesObject;

        [Header("Values")]
        public TextMeshProUGUI FPText;
        public TextMeshProUGUI LVText;

        private void Awake () {
            if (instance != null) {
                Destroy(this);
                return;
            }

            instance = this;
        }

        // Start is called before the first frame update
        void Start () {
            FictionPointsObject.Start();
            EquipFrameObject.Start();
        }

        // Update is called once per frame
        void Update () {
            FictionPointsObject.Update();
            EquipFrameObject.Update();
            FPText.text = "" + (int)Mathf.Lerp(int.Parse(FPText.text), 
                Inventory.instance.FictionPoints, 
                tranSpeed * Time.deltaTime);
            LVText.text = "" + Inventory.instance.Lives;
        }

        public void ShowFP () {
            FictionPointsObject.Show();
        }
        
        public void ShowEQ () {
            EquipFrameObject.Show();
        }

        public void ShowLV () {
            EquipFrameObject.Show();
        }

        public void ShowAll () {
            ShowFP();
            ShowLV();
        }
    }
}