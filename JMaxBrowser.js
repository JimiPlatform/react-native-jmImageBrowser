import PropTypes from 'prop-types';
import React from 'react';
import {requireNativeComponent,NativeModules} from 'react-native';

export default class JMImageBrowserSreen extends React.Component {
    static propTypes = {
        ...View.propTypes,
        source: PropTypes.string,
        width: PropTypes.number,
        height: PropTypes.number,
    }
    static defaultProps = {
      width:300,
      width:300,
    }
    render() {
      return <JMImageBrowser {...this.props} />;
    }
}
var JMImageBrowser = requireNativeComponent('JMZoomImageView', JMImageBrowserSreen);
