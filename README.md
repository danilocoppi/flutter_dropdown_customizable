# Dropdown Customizable

This dropdown is a copy from default flutter dropdown with some customizations on menu list that is shown when selected.

## You should use it as the normal flutter dropdown

It can be called using the CustomDropdownButtonFormField or CustomDropdownButton same way as default flutter's dropdown.

It uses the same DropdownMenuItem as the default flutter's dropdown.

### Possible customization

* dropdownMenuRadius
  * Type: Integer
  * Defines the menu list's border radius
* dropdownMenuBorder
  * Type: Border
  * Customizes the Border with colors, width and more...
* dropdownMenuGradient
  * Type: Gradient
  * Apply a gradient color on background.
* dropdownMenuIgnoreOffset
  * Type: bool
  * Defines if the list menu should be shown aligned with the selected index or not.

### Sample

``` dart
  CustomDropdownButton<String>(
    // customizable params
    dropdownMenuRadius: 12,
    dropdownMenuBorder: Border.all(color: const Color(0xFF00FF00), width: 4),
    dropdownMenuIgnoreOffset: false,
    dropdownMenuGradient: LinearGradient(colors: [Color(0xFFFF0000), Color(0xFFFFFFFF)], begin: Alignment.topCenter, end: Alignment.bottomCenter),

    // default flutter's dropdown params
    value: dropdownValue,
    onChanged: (String newValue) {
      setState(() {
        dropdownValue = newValue;
      });
    },

    // default flutter's dropdown menuItens
    items: ['One', 'Two', 'Free', 'Four'].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
  );
```
