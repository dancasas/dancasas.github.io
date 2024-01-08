base_url = "./SMPLitex-dataset/textures/"
base_gif_url = "./SMPLitex-dataset/360-gifs/"

start_image = 200
end_image = 250  # Replace with the desired end image number
image_prefix = "SMPLitex-texture-"

# Creating the HTML code
html_code = ""

for image_number in range(start_image, end_image, 2):
    html_code += '<tr>\n'
    html_code += f'  <td colspan="2" align="center"><a href="{base_url}{image_prefix}{str(image_number).zfill(5)}.png">{image_prefix}{str(image_number).zfill(5)}</a></td>\n'
    html_code += f'  <td colspan="2" align="center"><a href="{base_url}{image_prefix}{str(image_number + 1).zfill(5)}.png">{image_prefix}{str(image_number + 1).zfill(5)}</a></td>\n'
    html_code += '</tr>\n'
    html_code += '<tr>\n'
    html_code += f'  <td><a href="{base_url}{image_prefix}{str(image_number).zfill(5)}.png"><img src="{base_url}{image_prefix}{str(image_number).zfill(5)}.png"  alt="{base_url}{image_prefix}{str(image_number).zfill(5)}" width = 100%></a></td>\n'
    html_code += f'  <td><img src="{base_gif_url}{image_prefix}{str(image_number).zfill(5)}.gif" alt="2" width = 100%></td>\n'
    html_code += f'  <td><a href="{base_url}{image_prefix}{str(image_number + 1).zfill(5)}.png"><img src="{base_url}{image_prefix}{str(image_number + 1).zfill(5)}.png"  alt="{base_url}{image_prefix}{str(image_number + 1).zfill(5)}" width = 100%></a></td>\n'
    html_code += f'  <td><img src="{base_gif_url}{image_prefix}{str(image_number + 1).zfill(5)}.gif" alt="2" width = 100%></td>\n'
    html_code += '</tr>'

# Writing the HTML code to a file
with open("SMPLitex-dataset-table.html", "w") as file:
    file.write(html_code)

print("HTML code written to SMPLitex-dataset-table.html")
