# AngularTemplate

The handy way to utilize angular templates in rails using Sprockets

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'angular_template'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install angular_template
```

## Usage

Just put your angular templates in folder constructed by following pattern: `#{module}/templates/template_name`. This `module` can be a chain of modules. Eg. `application.ui.toolbox`. It means, templates for module `application.ui.toolbox` should be placed in folder `ui/toolbox/templates`. Also module `application.ui.toolbox.templates` will be created.


For example, this template:

```html
<!-- templates/some_template.ahtml -->
<div>{name}</div>
```

will be converted into:

```javascript
angular.module('application.templates').run(function($templateCache){
  $templateCache.put('some_template', '<!-- templates/some_template.ahtml -->\n<div>{name}</div>')
});
```

and this:

```html
<!-- ui/toolbox/templates/some_template.ahtml -->
<div>{name}</div>
```

into:

```javascript
angular.module('application.ui.toolbox.templates').run(function($templateCache){
  $templateCache.put('ui/toolbox/some_template', '<!-- ui/toolbox/templates/some_template.ahtml -->\n<div>{name}</div>')
});
```

Respectively they can be accessed by using following paths:

```
templateUrl: 'some_template'
templateUrl: 'ui/toolbox/some_template'
```

## Contributing

1. Fork it ( https://github.com/undr/angular_template/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
