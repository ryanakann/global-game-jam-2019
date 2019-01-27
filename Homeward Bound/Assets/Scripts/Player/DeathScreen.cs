using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public delegate void DeathDel();

public class DeathScreen : MonoBehaviour
{
    public GameObject deathPanel; //!!!!!
    public DeathDel LifeEvent;
    public DeathDel DeathEvent;

    public static DeathScreen instance;
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

    public void OnDeath()
    {
        DeathEvent?.Invoke();
        deathPanel.SetActive(true);
    }

    public void OnLive()
    {
        LifeEvent?.Invoke();
        deathPanel.SetActive(false);
    }
}
