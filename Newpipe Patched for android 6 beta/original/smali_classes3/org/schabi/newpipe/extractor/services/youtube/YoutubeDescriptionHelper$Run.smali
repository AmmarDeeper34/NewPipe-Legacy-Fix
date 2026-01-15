.class final Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;
.super Ljava/lang/Object;
.source "YoutubeDescriptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Run"
.end annotation


# instance fields
.field final close:Ljava/lang/String;

.field final open:Ljava/lang/String;

.field openPosInOutput:I

.field final pos:I

.field final transformContent:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->openPosInOutput:I

    .line 64
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->open:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->close:Ljava/lang/String;

    .line 66
    iput p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    .line 67
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->transformContent:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public sameOpen(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;)Z
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->open:Ljava/lang/String;

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->open:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
