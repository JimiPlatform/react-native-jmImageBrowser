import PropTypes from 'prop-types';
import React from 'react';
import {requireNativeComponent,NativeModules,View,Dimensions} from 'react-native';

export default class JMImageBrowserSreen extends React.Component {
    static propTypes = {
        ...View.propTypes,
        source: PropTypes.string,//图片路径，可传网络路径与本地路径
        width: PropTypes.number,
        height: PropTypes.number,
        placeholderPath:PropTypes.string,//默认图片地址
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
