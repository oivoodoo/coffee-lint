CoffeeLint = require './coffee-lint'

module.exports =

  configDefaults:
    lintOnSave: true
    config:'{
        "coffeescript_error": {
            "level": "error"
        },
        "arrow_spacing": {
            "name": "arrow_spacing",
            "level": "warn"
        },
        "no_tabs": {
            "name": "no_tabs",
            "level": "error"
        },
        "no_trailing_whitespace": {
            "name": "no_trailing_whitespace",
            "level": "error",
            "allowed_in_comments": false,
            "allowed_in_empty_lines": true
        },
        "max_line_length": {
            "name": "max_line_length",
            "value": 80,
            "level": "error",
            "limitComments": true
        },
        "line_endings": {
            "name": "line_endings",
            "level": "warn",
            "value": "unix"
        },
        "no_trailing_semicolons": {
            "name": "no_trailing_semicolons",
            "level": "error"
        },
        "indentation": {
            "name": "indentation",
            "value": 2,
            "level": "error"
        },
        "camel_case_classes": {
            "name": "camel_case_classes",
            "level": "error"
        },
        "colon_assignment_spacing": {
            "name": "colon_assignment_spacing",
            "level": "ignore",
            "spacing": {
                "left": 0,
                "right": 0
            }
        },
        "no_implicit_braces": {
            "name": "no_implicit_braces",
            "level": "ignore",
            "strict": false
        },
        "no_plusplus": {
            "name": "no_plusplus",
            "level": "warn"
        },
        "no_throwing_strings": {
            "name": "no_throwing_strings",
            "level": "error"
        },
        "no_backticks": {
            "name": "no_backticks",
            "level": "error"
        },
        "no_implicit_parens": {
            "name": "no_implicit_parens",
            "level": "ignore"
        },
        "no_empty_param_list": {
            "name": "no_empty_param_list",
            "level": "warn"
        },
        "no_stand_alone_at": {
            "name": "no_stand_alone_at",
            "level": "warn"
        },
        "space_operators": {
            "name": "space_operators",
            "level": "warn"
        },
        "duplicate_key": {
            "name": "duplicate_key",
            "level": "error"
        },
        "empty_constructor_needs_parens": {
            "name": "empty_constructor_needs_parens",
            "level": "warn"
        },
        "cyclomatic_complexity": {
            "name": "cyclomatic_complexity",
            "value": 10,
            "level": "warn"
        },
        "newlines_after_classes": {
            "name": "newlines_after_classes",
            "value": 3,
            "level": "warn"
        },
        "no_unnecessary_fat_arrows": {
            "name": "no_unnecessary_fat_arrows",
            "level": "warn"
        },
        "missing_fat_arrows": {
            "name": "missing_fat_arrows",
            "level": "ignore"
        },
        "non_empty_constructor_needs_parens": {
            "name": "non_empty_constructor_needs_parens",
            "level": "warn"
        }
    }'
  activate: =>
    @linter = new CoffeeLint()

  deactivate: =>
    @linter.destroy()
