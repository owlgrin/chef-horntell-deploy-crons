# horntell-crons-cookbook

Deploys the Horntell Cronjobs

## Supported Platforms

Ubuntu.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['horntell-crons']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### horntell-crons::default

Include `horntell-crons` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[horntell-crons::default]"
  ]
}
```

## License and Authors

Author:: YOUR_NAME (<YOUR_EMAIL>)
