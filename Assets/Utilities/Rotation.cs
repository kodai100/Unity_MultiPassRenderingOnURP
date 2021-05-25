using UnityEngine;

namespace kodai100.Multipass
{
    public class Rotation : MonoBehaviour
    {

        [SerializeField] private float angularVelocity = 10;

        private float time = 0;
        
        private void Update()
        {
            time += Time.deltaTime;

            transform.rotation = Quaternion.Euler(0, time * angularVelocity, 0);
        }
    }

    
}

