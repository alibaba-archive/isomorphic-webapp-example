
Isomorphic Webapp Example
----

Simplified solution of https://addons.talk.ai/

### Development

Install dependencies:

```
npm i
```

Development:

```
node-dev app.coffee
webpack-dev-server --hot --host=0.0.0.0
```

Deployment:

```
webpack --config webpack.production.coffee
NODE_ENV=production node-dev app.coffee
```

### License

MIT
