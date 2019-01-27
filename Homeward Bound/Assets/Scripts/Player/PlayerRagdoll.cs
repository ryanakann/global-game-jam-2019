using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerRagdoll : MonoBehaviour
{
    Animator anim;
    Rigidbody rb;
    List<Rigidbody> rbs;

    public Collider rFoot, lFoot;
    public Rigidbody hips;

    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponentInChildren<Animator>();
        rb = GetComponent<Rigidbody>();
        rbs = new List<Rigidbody>(transform.GetChild(0).GetComponentsInChildren<Rigidbody>());
        ActivateRagdoll(false);
    }

    public void ActivateRagdoll(bool act)
    {
        rb.freezeRotation = !act;
        rb.isKinematic = false;
        if (act && !GetComponent<CharacterJoint>()) {
            gameObject.AddComponent<CharacterJoint>().connectedBody = hips;
        }
        else if (GetComponent<CharacterJoint>())
        {
            Destroy(GetComponent<CharacterJoint>());
        }

        foreach (Rigidbody r in rbs)
        {
            r.isKinematic = !act;
            r.gameObject.GetComponent<Collider>().enabled = act;
        }

        lFoot.enabled = rFoot.enabled = !act;
        //lFoot.GetComponent<Rigidbody>().isKinematic = rFoot.GetComponent<Rigidbody>().isKinematic = act;

        anim.enabled = !act;
    }
}
