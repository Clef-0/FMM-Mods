# Adding magnets to objects Recolorized 1984 edition
# Warning this updated guide is for blender 4.0 it may not work for later version_

1. Extract the render model of the object you wish to add magnets to using tagtool.
2. If the extracted model data type is .amf make sure when you are about to import set the scale multiplier to ``0.328``, if its .dae leave it at normal.
3. Once the model has been imported make sure the rotation and location is at 0,0,0
3. After that, On object mode click on Add -> Mesh -> Cube, and name it ``magnetMarker`` and set the scaling to 0.025, 0.025, 0.025.
4. Move the magnetMarker cube to where you wanted the magnet to be
5. Execute the *exporting markers* script in the python console **(shift+f4)**
6. Take the json dump and append it to magnets.json with the render model name stringid as the key
7. Reload the map ( can also do game.start on console to be more efficient )


# ***Useful shortcut key for blender***
S = Scaling
R= Rotation
G= Location (Press X, Y, or Z to change specific axis)
Alt+G = Specific Axis View.
Shift+F5 = Viewport mode

# ***Tips***
- It's best to figure out one of the axis first rather than triangulating them by manipulating the cube scaling type
   if you are trying to figure out the precise **Y** axis then its better to set the cube Y scaling to **0**, etc 
- Always remember that the cube scaling/rotation DOES NOT MATTER but its location of origin are (The orange dot when you select the cube)
- Make the marker symmetrical if possible ( doesn't really apply to every object )
- Don't put too much magnet marker, always think of every magnet placement and whether they're useful or not for forge
- Round up the location; is it really that important to set the location to 5.8999.... when you can set it as 5.9?
- Use dxvk for improved performance when theres too many magnet marker on screen OR any wrapper that disable directbuffermapping.



#########Exporting Marker(s) :
import json
print(json.dumps([ [round(a, 5) for a in o.location] for o in bpy.data.objects if o.name.startswith('magnetMarker')]))


########Exporting Marker(s) Sorted :
import json
import bpy

locations = [[round(a, 5) for a in o.location] for o in bpy.data.objects if o.name.startswith('magnetMarker')]
sorted_locations = sorted(locations, key=lambda item: item[0])

print(json.dumps(sorted_locations))


########Importing Marker(s) : 

import bpy
magnet = [[X, Y, Z], [X, Y, Z], [X, Y, Z]]

for location in magnet:
    bpy.ops.mesh.primitive_cube_add(scale=(0.025, 0.025, 0.025), location=location)
    bpy.context.active_object.name = 'magnetMarker'



########Automatically adding magnetmarkers on object edges, must be run in text editor ( shift+f11 )
import bpy
import numpy as np

#Change the distance threshold value if you want more magnet or less.
def add_cube_to_vertices(obj, distance_threshold=0.01):
    bpy.context.view_layer.objects.active = obj
    bpy.ops.object.mode_set(mode='OBJECT')

    existing_locations = np.empty((0, 3), float)

    for vertex in obj.data.vertices:
        location = obj.matrix_world @ vertex.co
        location_vector = np.array(location.to_tuple())

        distances = np.sum((location_vector - existing_locations) ** 2, axis=1)
        if np.all(distances >= distance_threshold ** 2):
            bpy.ops.mesh.primitive_cube_add(size=0.025, enter_editmode=False, align='WORLD', location=location_vector)
            cube_obj = bpy.context.active_object
            cube_obj.name = "magnetMarker"
            existing_locations = np.vstack([existing_locations, location_vector])

# Replace 'default:default' with the name of your existing 3D model
selected_object = bpy.context.scene.objects.get('default:default')

if selected_object is not None:
    add_cube_to_vertices(selected_object)
else:
    print("Error: Object not found.")


########Automatically adding magnet marker on object edge and middle points, must be run in text editor ( shift+f11 )
import bpy
import numpy as np

def add_marker_at_location(obj, location_vector):
    bpy.ops.mesh.primitive_cube_add(size=0.025, enter_editmode=False, align='WORLD', location=location_vector)
    cube_obj = bpy.context.active_object
    cube_obj.name = "magnetMarker"
#Change the distance threshold value if you want more magnet or less.
def add_cube_to_vertices(obj, distance_threshold=0.01):
    bpy.context.view_layer.objects.active = obj
    bpy.ops.object.mode_set(mode='OBJECT')

    existing_locations = np.empty((0, 3), float)

    for vertex in obj.data.vertices:
        location = np.array(obj.matrix_world @ vertex.co)

        distances = np.sum((location - existing_locations) ** 2, axis=1)
        if np.all(distances >= distance_threshold ** 2):
            add_marker_at_location(obj, location)
            existing_locations = np.vstack([existing_locations, location])

    for edge in obj.data.edges:
        vertex1 = obj.data.vertices[edge.vertices[0]]
        vertex2 = obj.data.vertices[edge.vertices[1]]

        location1 = np.array(obj.matrix_world @ vertex1.co)
        location2 = np.array(obj.matrix_world @ vertex2.co)

        midpoint_vector = (location1 + location2) / 2.0

        distances = np.sum((midpoint_vector - existing_locations) ** 2, axis=1)
        if np.all(distances >= distance_threshold ** 2):
            add_marker_at_location(obj, midpoint_vector)
            existing_locations = np.vstack([existing_locations, midpoint_vector])

# Replace 'default:default' with the name of your existing 3D model
selected_object = bpy.context.scene.objects.get('default:default')

if selected_object is not None:
    add_cube_to_vertices(selected_object)
else:
    print("Error: Object not found.")