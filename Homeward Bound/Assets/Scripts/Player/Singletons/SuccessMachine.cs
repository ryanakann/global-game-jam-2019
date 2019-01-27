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

    public void Succeed()
    {
        Respawner.instance.FadeOut(LocationMap.instance.home.position, Messages.Good());
        SuccessEvent?.Invoke();
    }
}
