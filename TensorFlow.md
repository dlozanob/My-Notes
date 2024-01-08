# TensorFlow

[Documentation](https://www.tensorflow.org/api_docs)

- Import: `import tensorflow as tf`
- Version: `tf.__version__`
- Square power: `tf.square()`
- Mean: `tf.reduce_mean()`
- `tf.GradientTape()`
	- `.gradient(<current_loss>, [<model.w>, <model.b>])` -> `dw, db`

- `tf.keras`
	- Generate model (units=neurons):  `.Sequential([tf.keras.layers.Dense(units=1, input_shape=[1])])` -> `model`
		- `.compile(optimizer='sgd', loss='mean_squared_error')`
		- `.fit(xs, ys, epochs=500)`




