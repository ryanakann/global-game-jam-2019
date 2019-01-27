using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public delegate void SuccessDel();

public class SuccessMachine : MonoBehaviour
{
    public static SuccessMachine instance;
    public SuccessDel SuccessEvent;

    private void Awake()
    {
        if (!instance)
        {
            instance = this;
        }
        else if (instance != this)
        {
            Destroy(gameObject);
            return;
        }
    }

    public void Succeed(Vector3 respawn_position)
    {
        Respawner.instance.FadeOut(respawn_position, "Today was a good day.");
        SuccessEvent?.Invoke();
    }
}
