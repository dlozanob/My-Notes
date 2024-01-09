# TensorFlow

[Documentation](https://www.tensorflow.org/api_docs)

- Import: `import tensorflow as tf`
- Version: `tf.__version__`
- Square power: `tf.square()`
- Mean: `tf.reduce_mean()`
- `tf.GradientTape()`
	- `.gradient(<current_loss>, [<model.w>, <model.b>])` -> `dw, db`

- `tf.keras`
	- Layer: `.layers.Dense(units=1, input_shape=[1])`
		- `.get_weights()` -> Array containing paremeter weights
	- Generate model (units=neurons):  `.Sequential([<layer1>, <layerN>])` -> Neural network
		- `.compile(optimizer='sgd', loss='mean_squared_error')`
		- `.fit(xs, ys, epochs=500)`

- Declare var: `tf.Variable(<num>)`

