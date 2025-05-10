# Python

>[!Note]
>Packages path Windows: `C:\Users\USUARIO\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.11_qbz5n2kfra8p0\LocalCache\local-packages\Python311\site-packages`


- List all packages: `pip list`

- Merge elements into 1 tuple according to each index: `zip()`

```python
a = [1, 2, 3]
b = ['x', 'y', 'z']
c = zip(a, b) # ([1, 'x'], [2, 'y'], [3, 'z']])
```

- Create virtual environment: `python -m venv 'venv_name'`
	- Enter the venv:  .\\venv_name\\Scripts\\activate
	- Exit: `deactivate`

