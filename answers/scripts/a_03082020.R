
# assigning variable as function argument defined inside function ---------

function(x = z){
  z = 100
  x = z
  x
}


# evaluating expr in 1 env and assigning output in another env ------------
env = new.env()

f = function(x){
  delayedAssign(
    'var',
    {z = 1:20; mean(1:6)},
    eval.env = env,
    assign.env = .GlobalEnv
  )
  x
}

f(10)

# at this point var is stored as a promise in global environment as it's evaluation is not yet forced.
# and there is no way (atleast to my knowledge) to check whether an object is promise or not
ls()

# forcing evaluation
var

# variable z is not defined in global env
ls()

#variable z is defined in 'env' environment
ls(env)