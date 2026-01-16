package org.schabi.newpipe.player.helper;

import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.LoadControl;
import com.google.android.exoplayer2.upstream.DefaultAllocator;

public class LoadController extends DefaultLoadControl {

    public static final String TAG = "LoadController";
    private boolean preloadingEnabled = true;

    /**
     * Legacy Engine: 50s buffer for Android 6 / Snapdragon 435 stability.
     * @return a configured LoadControl instance
     */
    public static LoadControl getLoadControl() {
        return new LoadController();
    }

    @Override
    public void onPrepared() {
        preloadingEnabled = true;
        super.onPrepared();
    }

    @Override
    public void onStopped() {
        preloadingEnabled = true;
        super.onStopped();
    }

    @Override
    public void onReleased() {
        preloadingEnabled = true;
        super.onReleased();
    }

    /**
     * Determines if loading should continue based on preloading state.
     * @param playbackPositionUs the playback position in microseconds
     * @param bufferedDurationUs the buffered duration in microseconds
     * @param playbackSpeed the current playback speed
     * @return whether loading should continue
     */
    @Override
    public boolean shouldContinueLoading(final long playbackPositionUs,
                                         final long bufferedDurationUs,
                                         final float playbackSpeed) {
        if (!preloadingEnabled) {
            return false;
        }
        return super.shouldContinueLoading(
                playbackPositionUs, bufferedDurationUs, playbackSpeed);
    }


    public void disablePreloadingOfCurrentTrack() {
        preloadingEnabled = false;
    }
}
