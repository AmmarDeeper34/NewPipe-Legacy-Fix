.class final Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "PeertubeInstanceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeertubeInstanceCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 399
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 399
    check-cast p1, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    check-cast p2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;->areContentsTheSame(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)Z
    .locals 2

    .line 410
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 399
    check-cast p1, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    check-cast p2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;->areItemsTheSame(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)Z
    .locals 0

    .line 404
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
