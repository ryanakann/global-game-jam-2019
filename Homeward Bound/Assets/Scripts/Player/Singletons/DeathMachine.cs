using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public delegate void DeathDel();

public class DeathMachine : MonoBehaviour
{
    public static DeathMachine instance;
    public DeathDel DeathEvent;

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

    public void Kill(Vector3 respawn_position)
    {
        Respawner.instance.FadeOut(respawn_position, "Life is hard...");
        DeathEvent?.Invoke();
    }
}
