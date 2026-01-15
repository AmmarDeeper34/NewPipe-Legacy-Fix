.class public final Lorg/schabi/newpipe/player/notification/NotificationActionData;
.super Ljava/lang/Object;
.source "NotificationActionData.java"


# instance fields
.field private final action:Ljava/lang/String;

.field private final icon:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->action:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->name:Ljava/lang/String;

    .line 40
    iput p3, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->icon:I

    return-void
.end method

.method public static fromNotificationActionEnum(Lorg/schabi/newpipe/player/Player;I)Lorg/schabi/newpipe/player/notification/NotificationActionData;
    .locals 15

    .line 66
    sget-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->ACTION_ICONS:[I

    aget v0, v0, p1

    .line 67
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120177

    .line 69
    const-string v3, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_REWIND"

    const v4, 0x7f120173

    const-string v5, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_PREVIOUS"

    const v6, 0x7f120169

    const-string v7, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_FAST_FORWARD"

    const v8, 0x7f12016d

    const-string v9, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_PLAY_NEXT"

    const/16 v10, 0x7d

    const/16 v11, 0x7b

    const/4 v12, -0x1

    const/4 v13, 0x1

    const-string v14, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.PLAY_PAUSE"

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 182
    :pswitch_0
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    const v0, 0x7f1200a7

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800fd

    const-string v2, "org.schabi.newpipe.player.MainPlayer.CLOSE"

    invoke-direct {p0, v2, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 169
    :pswitch_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    const-string v2, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.ACTION_SHUFFLE"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isShuffled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 170
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    const v0, 0x7f12017c

    .line 171
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080098

    invoke-direct {p0, v2, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 175
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    const v0, 0x7f12017b

    .line 176
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080097

    invoke-direct {p0, v2, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 148
    :pswitch_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getRepeatMode()I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "org.schabi.newpipe.player.MainPlayer..player.MainPlayer.REPEAT"

    if-ne v0, v2, :cond_1

    .line 149
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    const v0, 0x7f120174

    .line 150
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800bc

    invoke-direct {p0, v3, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getRepeatMode()I

    move-result p0

    if-ne p0, v13, :cond_2

    .line 155
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    const v0, 0x7f120176

    .line 156
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800be

    invoke-direct {p0, v3, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 161
    :cond_2
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    const v0, 0x7f120175

    .line 162
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800bd

    invoke-direct {p0, v3, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 117
    :pswitch_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result v0

    if-eq v0, v12, :cond_3

    .line 118
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result v0

    if-eq v0, v11, :cond_3

    .line 119
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result v0

    if-ne v0, v10, :cond_4

    .line 120
    :cond_3
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    const v0, 0x7f120318

    .line 121
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080119

    invoke-direct {p0, v14, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 127
    :cond_4
    :pswitch_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result v0

    const/16 v2, 0x80

    const v3, 0x7f120170

    if-ne v0, v2, :cond_5

    .line 128
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 129
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080147

    invoke-direct {p0, v14, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 132
    :cond_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_7

    .line 133
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result v0

    if-eq v0, v12, :cond_7

    .line 134
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result v0

    if-eq v0, v11, :cond_7

    .line 135
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentState()I

    move-result p0

    if-ne p0, v10, :cond_6

    goto :goto_0

    .line 141
    :cond_6
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    const v0, 0x7f120171

    .line 142
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800c2

    invoke-direct {p0, v14, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 136
    :cond_7
    :goto_0
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 137
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800c1

    invoke-direct {p0, v14, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 104
    :pswitch_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result p0

    if-le p0, v13, :cond_8

    .line 105
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 106
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800c0

    invoke-direct {p0, v9, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 110
    :cond_8
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 111
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08008c

    invoke-direct {p0, v7, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 91
    :pswitch_6
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result p0

    if-le p0, v13, :cond_9

    .line 92
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 93
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800c3

    invoke-direct {p0, v5, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 97
    :cond_9
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080096

    invoke-direct {p0, v3, v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 86
    :pswitch_7
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 87
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 81
    :pswitch_8
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 82
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 76
    :pswitch_9
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 77
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 71
    :pswitch_a
    new-instance p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 72
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1, v0}, Lorg/schabi/newpipe/player/notification/NotificationActionData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public action()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->action:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 198
    instance-of v0, p1, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    if-eqz v0, :cond_0

    .line 195
    check-cast p1, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->action:Ljava/lang/String;

    iget-object v1, p1, Lorg/schabi/newpipe/player/notification/NotificationActionData;->action:Ljava/lang/String;

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/schabi/newpipe/player/notification/NotificationActionData;->name:Ljava/lang/String;

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->icon:I

    iget p1, p1, Lorg/schabi/newpipe/player/notification/NotificationActionData;->icon:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 5

    .line 203
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->action:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->name:Ljava/lang/String;

    iget v2, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public icon()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->icon:I

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationActionData;->name:Ljava/lang/String;

    return-object v0
.end method
