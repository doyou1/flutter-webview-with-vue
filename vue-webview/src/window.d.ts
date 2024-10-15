declare global {
    interface Window {
        WebviewChannel: {
            postMessage: (message: string) => void;
        };
    }
}

export default {};