## *********************************************************
##
## File autogenerated for the start package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 245, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 290, 'description': 'steering wheel angle/deg', 'max': 50.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'sw_deg', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': -50.0, 'type': 'double'}, {'srcline': 290, 'description': '100%', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'speed', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': -100.0, 'type': 'double'}, {'srcline': 290, 'description': 'Current clean_mode', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'clean_mode', 'edit_method': "{'enum_description': 'clean_mode', 'enum': [{'srcline': 17, 'description': 'A small constant', 'srcfile': '/home/sunhao/prog/wild/src/start/cfg/calibration_wf.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Stop'}, {'srcline': 18, 'description': 'A medium constant', 'srcfile': '/home/sunhao/prog/wild/src/start/cfg/calibration_wf.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'Clean'}, {'srcline': 19, 'description': 'A medium constant', 'srcfile': '/home/sunhao/prog/wild/src/start/cfg/calibration_wf.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'Laji'}]}", 'default': 0, 'level': 0, 'min': -2147483648, 'type': 'int'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

calibration_wf_Stop = 0
calibration_wf_Clean = 1
calibration_wf_Laji = 2