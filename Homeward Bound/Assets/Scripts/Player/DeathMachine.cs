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

    Animation anim;

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
            return;
        }

        anim = GetComponent<Animation>();            
    }
    void Start()
    {
        deathPanel.SetActive(false);
    }

    public void Kill(Vector3 respawn_position)
    {
        DeathEvent?.Invoke(respawn_position);
        anim.Play();
    }

    public void Respawn()
    {
        LifeEvent?.Invoke();
    }
}
