using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public delegate void DeathDel(Vector3 pos);
public delegate void LifeDel();

public class DeathMachine : MonoBehaviour
{
    public GameObject deathPanel; //!!!!!
    public DeathDel DeathEvent;
    public LifeDel LifeEvent;

    public static DeathMachine instance;
    private void Awake()
    {
        if (!instance)
        {
            instance = this;
        }
        else if (instance != this)
        {
            Destroy(gameObject);
        }
    }
    void Start()
    {
        deathPanel.SetActive(false);
    }

    public void OnDeath(Vector3 respawn_position)
    {
        DeathEvent?.Invoke(respawn_position);
        deathPanel.SetActive(true);
    }

    public void OnLive()
    {
        LifeEvent?.Invoke();
        deathPanel.SetActive(false);
    }
}
