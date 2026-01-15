.class public final enum Lorg/schabi/newpipe/extractor/MediaFormat;
.super Ljava/lang/Enum;
.source "MediaFormat.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum AIF:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum AIFF:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum ALAC:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum FLAC:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum MP2:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum OGG:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TRANSCRIPT1:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TRANSCRIPT2:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TRANSCRIPT3:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum VTT:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WAV:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;


# instance fields
.field public final id:I

.field public final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final suffix:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$54r7QAjcA9AQAagOj1M2vTGGS0E(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 0

    .line 156
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MELahhwPjNSRlGmLOCKAOyMnOzE(ILorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 0

    .line 89
    iget p1, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$cktsB4uVuVyHXxlJxAtOFv62hH0(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 0

    .line 178
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 27

    .line 41
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v5, "mp4"

    const-string v6, "video/mp4"

    const-string v1, "MPEG_4"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "MPEG-4"

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 42
    new-instance v1, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v6, "3gp"

    const-string v7, "video/3gpp"

    const-string v2, "v3GPP"

    const/4 v3, 0x1

    const/16 v4, 0x10

    const-string v5, "3GPP"

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 43
    new-instance v2, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v7, "webm"

    const-string v8, "video/webm"

    const-string v3, "WEBM"

    const/4 v4, 0x2

    const/16 v5, 0x20

    const-string v6, "WebM"

    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 45
    new-instance v3, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v8, "m4a"

    const-string v9, "audio/mp4"

    const-string v4, "M4A"

    const/4 v5, 0x3

    const/16 v6, 0x100

    const-string v7, "m4a"

    invoke-direct/range {v3 .. v9}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 46
    new-instance v4, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v9, "webm"

    const-string v10, "audio/webm"

    const-string v5, "WEBMA"

    const/4 v6, 0x4

    const/16 v7, 0x200

    const-string v8, "WebM"

    invoke-direct/range {v4 .. v10}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 47
    new-instance v5, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v10, "mp3"

    const-string v11, "audio/mpeg"

    const-string v6, "MP3"

    const/4 v7, 0x5

    const/16 v8, 0x300

    const-string v9, "MP3"

    invoke-direct/range {v5 .. v11}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 48
    new-instance v6, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v11, "mp2"

    const-string v12, "audio/mpeg"

    const-string v7, "MP2"

    const/4 v8, 0x6

    const/16 v9, 0x310

    const-string v10, "MP2"

    invoke-direct/range {v6 .. v12}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->MP2:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 49
    new-instance v7, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v12, "opus"

    const-string v13, "audio/opus"

    const-string v8, "OPUS"

    const/4 v9, 0x7

    const/16 v10, 0x400

    const-string v11, "opus"

    invoke-direct/range {v7 .. v13}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 50
    new-instance v8, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v13, "ogg"

    const-string v14, "audio/ogg"

    const-string v9, "OGG"

    const/16 v10, 0x8

    const/16 v11, 0x500

    const-string v12, "ogg"

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/schabi/newpipe/extractor/MediaFormat;->OGG:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 51
    new-instance v9, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v14, "webm"

    const-string v15, "audio/webm"

    const-string v10, "WEBMA_OPUS"

    const/16 v11, 0x9

    const/16 v12, 0x200

    const-string v13, "WebM Opus"

    invoke-direct/range {v9 .. v15}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 52
    new-instance v10, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v15, "aiff"

    const-string v16, "audio/aiff"

    const-string v11, "AIFF"

    const/16 v12, 0xa

    const/16 v13, 0x600

    const-string v14, "AIFF"

    invoke-direct/range {v10 .. v16}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lorg/schabi/newpipe/extractor/MediaFormat;->AIFF:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 56
    new-instance v11, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v16, "aif"

    const-string v17, "audio/aiff"

    const-string v12, "AIF"

    const/16 v13, 0xb

    const/16 v14, 0x600

    const-string v15, "AIFF"

    invoke-direct/range {v11 .. v17}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lorg/schabi/newpipe/extractor/MediaFormat;->AIF:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 57
    new-instance v12, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v17, "wav"

    const-string v18, "audio/wav"

    const-string v13, "WAV"

    const/16 v14, 0xc

    const/16 v15, 0x700

    const-string v16, "WAV"

    invoke-direct/range {v12 .. v18}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lorg/schabi/newpipe/extractor/MediaFormat;->WAV:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 58
    new-instance v13, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v18, "flac"

    const-string v19, "audio/flac"

    const-string v14, "FLAC"

    const/16 v15, 0xd

    const/16 v16, 0x800

    const-string v17, "FLAC"

    invoke-direct/range {v13 .. v19}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lorg/schabi/newpipe/extractor/MediaFormat;->FLAC:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 59
    new-instance v14, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v19, "alac"

    const-string v20, "audio/alac"

    const-string v15, "ALAC"

    const/16 v16, 0xe

    const/16 v17, 0x900

    const-string v18, "ALAC"

    invoke-direct/range {v14 .. v20}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lorg/schabi/newpipe/extractor/MediaFormat;->ALAC:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 61
    new-instance v15, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v20, "vtt"

    const-string v21, "text/vtt"

    const-string v16, "VTT"

    const/16 v17, 0xf

    const/16 v18, 0x1000

    const-string v19, "WebVTT"

    invoke-direct/range {v15 .. v21}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lorg/schabi/newpipe/extractor/MediaFormat;->VTT:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 62
    new-instance v16, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v21, "ttml"

    const-string v22, "application/ttml+xml"

    const-string v17, "TTML"

    const/16 v18, 0x10

    const/16 v19, 0x2000

    const-string v20, "Timed Text Markup Language"

    invoke-direct/range {v16 .. v22}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v16, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 63
    new-instance v17, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v22, "srv1"

    const-string v23, "text/xml"

    const-string v18, "TRANSCRIPT1"

    const/16 v19, 0x11

    const/16 v20, 0x3000

    const-string v21, "TranScript v1"

    invoke-direct/range {v17 .. v23}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v17, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT1:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 64
    new-instance v18, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v23, "srv2"

    const-string v24, "text/xml"

    const-string v19, "TRANSCRIPT2"

    const/16 v20, 0x12

    const/16 v21, 0x4000

    const-string v22, "TranScript v2"

    invoke-direct/range {v18 .. v24}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v18, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT2:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 65
    new-instance v19, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v24, "srv3"

    const-string v25, "text/xml"

    const-string v20, "TRANSCRIPT3"

    const/16 v21, 0x13

    const/16 v22, 0x5000

    const-string v23, "TranScript v3"

    invoke-direct/range {v19 .. v25}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v19, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT3:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 66
    new-instance v20, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v25, "srt"

    const-string v26, "text/srt"

    const-string v21, "SRT"

    const/16 v22, 0x14

    const/16 v23, 0x6000

    const-string v24, "SubRip file format"

    invoke-direct/range {v20 .. v26}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v20, Lorg/schabi/newpipe/extractor/MediaFormat;->SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v21, v0

    const/16 v0, 0x15

    .line 36
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v22, 0x0

    aput-object v21, v0, v22

    const/16 v21, 0x1

    aput-object v1, v0, v21

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    aput-object v5, v0, v1

    const/4 v1, 0x6

    aput-object v6, v0, v1

    const/4 v1, 0x7

    aput-object v7, v0, v1

    const/16 v1, 0x8

    aput-object v8, v0, v1

    const/16 v1, 0x9

    aput-object v9, v0, v1

    const/16 v1, 0xa

    aput-object v10, v0, v1

    const/16 v1, 0xb

    aput-object v11, v0, v1

    const/16 v1, 0xc

    aput-object v12, v0, v1

    const/16 v1, 0xd

    aput-object v13, v0, v1

    const/16 v1, 0xe

    aput-object v14, v0, v1

    const/16 v1, 0xf

    aput-object v15, v0, v1

    const/16 v1, 0x10

    aput-object v16, v0, v1

    const/16 v1, 0x11

    aput-object v17, v0, v1

    const/16 v1, 0x12

    aput-object v18, v0, v1

    const/16 v1, 0x13

    aput-object v19, v0, v1

    const/16 v1, 0x14

    aput-object v20, v0, v1

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->$VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    .line 80
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->name:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    .line 82
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static getAllFromMimeType(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 155
    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 157
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 88
    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda3;-><init>(I)V

    .line 89
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 90
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 91
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    .line 92
    invoke-virtual {p0, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 2

    .line 177
    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 179
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0
.end method

.method public static getNameById(I)Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 36
    const-class v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 36
    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->$VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/MediaFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object v0
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    return-object v0
.end method
