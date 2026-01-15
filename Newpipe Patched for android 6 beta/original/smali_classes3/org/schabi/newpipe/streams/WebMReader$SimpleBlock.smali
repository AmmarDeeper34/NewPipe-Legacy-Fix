.class public Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;
.super Ljava/lang/Object;
.source "WebMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/streams/WebMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleBlock"
.end annotation


# instance fields
.field public absoluteTimeCodeNs:J

.field public createdFromBlock:Z

.field public data:Ljava/io/InputStream;

.field public dataSize:I

.field public flags:B

.field private final ref:Lorg/schabi/newpipe/streams/WebMReader$Element;

.field public relativeTimeCode:S

.field public trackNumber:J


# direct methods
.method static bridge synthetic -$$Nest$fgetref(Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;)Lorg/schabi/newpipe/streams/WebMReader$Element;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->ref:Lorg/schabi/newpipe/streams/WebMReader$Element;

    return-object p0
.end method

.method constructor <init>(Lorg/schabi/newpipe/streams/WebMReader$Element;)V
    .locals 0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->ref:Lorg/schabi/newpipe/streams/WebMReader$Element;

    return-void
.end method
