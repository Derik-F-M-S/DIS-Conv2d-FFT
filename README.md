# DIS-Conv2d-FFT
## ECE-558 Digital Imaging Systems course project 1: This project involved creating padding functions and convolution functions as well as a 2D FFT function for digital image processing. 

###### This repo contains the code as well as the outputs for the for the first project from the ECE-558 Digital Imaging Systems course at NC State University. 

The task for this project included:
- Creating an image padding function from scratch
- Creating and implementing a 2d convolution function in spacial domain
- Implementing the 2D Fourier Transform using the built-in Matlab fft function
## Dependencies 
This project requires Python 3 for the padding and convolution sections along with the following python modules:
- Numpy 
- CV2

The 2DFFT portion of the project requires a standard instalation of Matlab.

## Structure 
The [code](./dfmunozs_project01/dfmunozs_code/) for this project is contained in a sigle directory with the following files: 
- [pd.py](./dfmunozs_project01/dfmunozs_code/pd.py) contains the padding function
- [q1.py](./dfmunozs_project01/dfmunozs_code/q1.py) contains the convolution function as well as the driver functions to test the convolution. 
- [q2.m ](./dfmunozs_project01/dfmunozs_code/q2.m) contains the 2D FFT implementation
 
The [Outputs](./dfmunozs_project01/Outputs/) folder contains the output files. The directory and file names describe what each output represents.

## Runing the code
The code for the padding and convolution was designed to be run on a Linux system as a python file using the python3 interpreter with command line arguments used to determine what files to run the convoltuion on as well as the type of padding and filter. 

Example run : `python3 q1.py -i 'lena.png' -k 'box' -p 0 -c 1 -o 'convlena.png' ` 
Running `python3 q1.py -h` should give a list of the valid command line arguments
- **Possible -k arguments:** 'box' , 'row derivative' , 'col derivative' , 'prewitt1' , 'prewitt2' , 'sobel1' , 'sobel2' , 'roberts1' , 'roberts2'
- **Possible padding -p arguments:** 0 , 1 , 2 , 3 (zero padding, wrap, edge, reflect)
- **Possible color -c arguments:** 0 , 1 (grayscale , RGB)

The q2 file should be run in Matlab as a matlab script file. 
