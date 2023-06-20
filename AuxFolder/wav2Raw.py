##########################################################################################
# Generador de datos hexadecimales de archivos .wav para la sintetización en Verilog
#
# Los audios deben almacenarse en una carpeta llamada 'Audios'
# El formato debe ser .wav, se recomienda usar conversores:
# - https://audio.online-convert.com/convert-to-wav
# - https://cloudconvert.com/wav-converter
# Los audios deben tener una frecuencia de muestreo de 44.1 kHz, 16 bits por palabra
# Recomiendo usar:
# - https://online-audio-converter.com/
#
# Verificar que 'time' no tenga valores muy grandes, el archivo generado podría
# tener errores
###########################################################################################

import numpy as np
import matplotlib.pyplot as plt
import wave

############################### MODIFICAR ################################
audioName = '' # Nombre del archivo (sin la extensión) -> Ej: testAudio
time = 5 # [s]
##########################################################################

audioData = []
sampRate = 0


def getRawData():
    global sampRate
    wav = wave.open("./Audios/{}.wav".format(audioName), "r")
    raw = wav.readframes(-1)
    raw = np.frombuffer(raw, np.int16)
    
    sampRate = wav.getframerate()
    print('Frame Rate is:{} Hz'.format(sampRate))

    # Trimming audio to 'time' secs
    # WARNING: Too big value for 'time' would overflow 'min()' function
    raw = raw[15000: 15000+sampRate*time]

    minValue = abs(min(raw))
    for i in raw:
        audioData.append(int(i) + minValue)

    #plt.plot(audioData[0:48])
    #plt.show()

def genFiles():
    windowSize = sampRate/100

    data = ''
    f = open("./AudioData/{}.txt".format(audioName), "w")

    try:
        WC = 0
        for j in audioData:

            currentWord = int(j)
            currentWord = hex(currentWord)[2:]
            lineEnder = ' '

            if (WC + 1)%5 == 0:
                lineEnder = '\n'
            data += currentWord + lineEnder

            WC += 1
    except:
        print("Catched exception")

    f.write("@00000\n" + data)
    
    f.close()


if __name__ == "__main__":
    getRawData()
    genFiles()