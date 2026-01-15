.class public Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;
.super Ljava/lang/Object;
.source "SessionConnectorActionProvider.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;


# instance fields
.field private final context:Ljava/lang/ref/WeakReference;

.field private final data:Lorg/schabi/newpipe/player/notification/NotificationActionData;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/notification/NotificationActionData;Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;->data:Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 27
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;->context:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getCustomAction(Lcom/google/android/exoplayer2/Player;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .locals 3

    .line 43
    new-instance p1, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;->data:Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 44
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;->action()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;->data:Lorg/schabi/newpipe/player/notification/NotificationActionData;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;->data:Lorg/schabi/newpipe/player/notification/NotificationActionData;

    invoke-virtual {v2}, Lorg/schabi/newpipe/player/notification/NotificationActionData;->icon()I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 45
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object p1

    return-object p1
.end method

.method public onCustomAction(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 36
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
