#import ecell
#ecell.ecs.setDMSearchPath('xxx' + ecell.ecs.getDMSearchPath())

loadModel( MODEL_FILE )                # Load the model.

Vm = createEntityStub('Variable:/CELL/MEMBRANE:Vm') # Create a stub object of 

Vm0 = Vm['Value']

run(1000000)

Vm100 = Vm['Value']

message( 'Vm: 0 = ' + str( Vm0 ) + ', 100 = '  + str( Vm100 ))
