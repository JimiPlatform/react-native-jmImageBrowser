using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace J.Max.Browser.RNJMaxBrowser
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNJMaxBrowserModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNJMaxBrowserModule"/>.
        /// </summary>
        internal RNJMaxBrowserModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNJMaxBrowser";
            }
        }
    }
}
