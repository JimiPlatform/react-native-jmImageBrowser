
import PropTypes from 'prop-types';
import React from 'react';
import {requireNativeComponent,NativeModules} from 'react-native';
const _module = NativeModules.ImageBrowser;

export default class JMImageBrowser extends React.Component {
    static propTypes = {
        ...View.propTypes,
        urlStr: PropTypes.string,
        placeholderImage: PropTypes.object,
    }
    render() {
      console.log(`34536578679856746454332`);
      
      return <ImageBrowser {...this.props} />;
    }
}
var ImageBrowser = requireNativeComponent('ImageBrowser', JMImageBrowser);
