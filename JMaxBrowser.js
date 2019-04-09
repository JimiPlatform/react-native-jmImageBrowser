import PropTypes from 'prop-types';
import React from 'react';
import {requireNativeComponent,NativeModules,View,Dimensions} from 'react-native';

export default class JMImageBrowserSreen extends React.Component {
    static propTypes = {
        ...View.propTypes,
        source: PropTypes.string,
        width: PropTypes.number,
        height: PropTypes.number,
    }
   static defaultProps = {
    ...Platform.select({
        ios:{
            width:Dimensions.get('window').width,
            height:Dimensions.get('window').height,
        },
        android:{
        }
    }),

   }
    render() {
      return <JMImageBrowser {...this.props} />;
    }
}
var JMImageBrowser = requireNativeComponent('JMZoomImageView', JMImageBrowserSreen);
