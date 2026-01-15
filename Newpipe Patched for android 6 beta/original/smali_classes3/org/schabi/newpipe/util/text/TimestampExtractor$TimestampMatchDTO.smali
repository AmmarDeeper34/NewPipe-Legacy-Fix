.class public Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;
.super Ljava/lang/Object;
.source "TimestampExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/util/text/TimestampExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimestampMatchDTO"
.end annotation


# instance fields
.field private final seconds:I

.field private final timestampEnd:I

.field private final timestampStart:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampStart:I

    .line 67
    iput p2, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampEnd:I

    .line 68
    iput p3, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds:I

    return-void
.end method


# virtual methods
.method public seconds()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->seconds:I

    return v0
.end method

.method public timestampEnd()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampEnd:I

    return v0
.end method

.method public timestampStart()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampStart:I

    return v0
.end method
