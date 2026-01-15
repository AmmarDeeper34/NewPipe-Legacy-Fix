.class public Lorg/schabi/newpipe/info_list/InfoItemBuilder;
.super Ljava/lang/Object;
.source "InfoItemBuilder.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private onChannelSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;

.field private onCommentsSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;

.field private onPlaylistSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;

.field private onStreamSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getOnChannelSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->onChannelSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;

    return-object v0
.end method

.method public getOnCommentsSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->onCommentsSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;

    return-object v0
.end method

.method public getOnPlaylistSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->onPlaylistSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;

    return-object v0
.end method

.method public getOnStreamSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->onStreamSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;

    return-object v0
.end method

.method public setOnChannelSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->onChannelSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;

    return-void
.end method

.method public setOnCommentsSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->onCommentsSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;

    return-void
.end method

.method public setOnPlaylistSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->onPlaylistSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;

    return-void
.end method

.method public setOnStreamSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->onStreamSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;

    return-void
.end method
