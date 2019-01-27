using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Fungus;
using UnityEngine.UI;

public delegate void RespawnDel(Vector3 respawn_position);

public class Respawner : MonoBehaviour
{
    public static Respawner instance;

    public RespawnDel RespawnEvent;

    Flowchart flow;

    public GameObject fade_panel;
    public AnimationClip fadeout, fadein;
    Animation anim;

    Vector3 respawn_position;
    string message;

    float fadeout_time = 0.1f;

    bool dying;

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
        flow = GetComponent<Flowchart>();
        anim = GetComponent<Animation>();
    }

    public void FadeOut(Vector3 respawn_position, string message)
    {
        if (!dying)
        {
            dying = true;
            fade_panel.SetActive(true);
            anim.clip = fadeout;
            anim.Play();
            this.respawn_position = respawn_position;
            this.message = message;
        }
    }

    public void Messsage()
    {
        flow.SetStringVariable("EndMessage", message);
        flow.ExecuteBlock("Repose");
    }

    public void FadeIn()
    {
        dying = false;
        anim.clip = fadein;
        anim.Play();
        RespawnEvent?.Invoke(respawn_position);
    }

    public void AblePanel()
    {
        fade_panel.SetActive(fade_panel.activeSelf);
    }
}
