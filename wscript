#

top = '.'
out = '__build__'

def options(ctx):
    ctx.load('compiler_c')
    ctx.load('compiler_fc')
    
def configure(ctx):

    ctx.load('compiler_fc')
    ctx.env['FCFLAGS'] = ['-Wall', '-W', '-O2']
    ctx.check_fortran()
    ctx.check_fortran_verbose_flag()
    ctx.check_fortran_clib()
    #ctx.check_fortran_mangling()
    
def build(ctx):

    ctx(features='fc fcshlib',
        name ='f-hepevt',
        source='src/hepevt.f',
        target='f-hepevt',
        fcflags=['-fPIC',],
        lib=['gfortran',]
        )
