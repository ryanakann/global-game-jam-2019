using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BillboardDatShit : MonoBehaviour
{
    public Font font;

    bool dewit = false;

    /*
    public Camera mainCamera;

    private void Update() {
        transform.LookAt(transform.position + mainCamera.transform.rotation * Vector3.back,
            mainCamera.transform.rotation * Vector3.up);
    }
    */


    public void EVIL() {
        PlayerInput.allowMovement = false;
    }

    public void MOREEEEVIL() {
        PlayerInput.allowMovement = true;
    }

    public void ON() {
        Debug.Log("ON");
        dewit = true;
    }

    public void OFF() {
        Debug.Log("OFF");
        dewit = false;
    }

    private void OnGUI() {

        if (dewit) {
            GUIStyle style = new GUIStyle();
            style.font = font;
            style.fontSize = 18;
            
            // GUI.skin.label.font = font;

            Vector2 worldPoint = Camera.main.WorldToScreenPoint(transform.position);
            GUI.Label(
                new Rect(worldPoint.x - 100, (Screen.height - worldPoint.y) - 50, 200, 100),
                "Press E to Interact.", style
                );
        }
    }

}
