.class public Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
.super Ljava/lang/Object;
.source "ItagItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;
    }
.end annotation


# static fields
.field private static final ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;


# instance fields
.field private approxDurationMs:J

.field private audioChannels:I

.field private audioLocale:Ljava/util/Locale;

.field private audioTrackId:Ljava/lang/String;

.field private audioTrackName:Ljava/lang/String;

.field private audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

.field public avgBitrate:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private contentLength:J

.field public fps:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private height:I

.field public final id:I

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field private isDrc:Z

.field public final itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

.field private lastModified:J

.field private final mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

.field private quality:Ljava/lang/String;

.field public resolutionString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sampleRate:I

.field private targetDurationSec:I

.field private width:I

.field private xtags:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 81

    .line 28
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v3, 0x11

    const-string v4, "144p"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v6, 0x24

    const-string v7, "240p"

    invoke-direct {v5, v6, v1, v2, v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v11, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v14, 0x12

    const-string v15, "360p"

    invoke-direct {v2, v14, v1, v11, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v9, 0x22

    invoke-direct {v8, v9, v1, v11, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v10, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v12, 0x23

    const-string v13, "480p"

    invoke-direct {v10, v12, v1, v11, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v16, 0x11

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v17, 0x24

    const/16 v6, 0x3b

    invoke-direct {v3, v6, v1, v11, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v9, 0x4e

    invoke-direct {v6, v9, v1, v11, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v9, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v19, 0x12

    const/16 v14, 0x16

    const-string v12, "720p"

    invoke-direct {v9, v14, v1, v11, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v21, 0x16

    new-instance v14, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v22, v9

    const/16 v9, 0x25

    move-object/from16 v23, v0

    const-string v0, "1080p"

    invoke-direct {v14, v9, v1, v11, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v9, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v25, v2

    const/16 v2, 0x26

    invoke-direct {v9, v2, v1, v11, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v26, 0x26

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v27, v9

    sget-object v9, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v33, v3

    const/16 v3, 0x2b

    invoke-direct {v2, v3, v1, v9, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v34, 0x2b

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v35, v2

    const/16 v2, 0x2c

    invoke-direct {v3, v2, v1, v9, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v36, 0x2c

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v37, v3

    const/16 v3, 0x2d

    invoke-direct {v2, v3, v1, v9, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v38, 0x2d

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v39, v2

    const/16 v2, 0x2e

    invoke-direct {v3, v2, v1, v9, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v40, 0x2e

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    move-object/from16 v41, v3

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v42, v5

    const/16 v5, 0xab

    move-object/from16 v43, v6

    const/16 v6, 0x80

    invoke-direct {v1, v5, v2, v3, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v6, 0xac

    move-object/from16 v44, v1

    const/16 v1, 0x100

    invoke-direct {v5, v6, v2, v3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v1, 0x257

    move-object/from16 v30, v9

    const/16 v9, 0x20

    invoke-direct {v3, v1, v2, v6, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v9, 0x8b

    move-object/from16 v45, v3

    const/16 v3, 0x30

    invoke-direct {v1, v9, v2, v6, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v9, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v46, 0x30

    const/16 v3, 0x8c

    move-object/from16 v47, v1

    const/16 v1, 0x80

    invoke-direct {v9, v3, v2, v6, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v3, 0x8d

    move-object/from16 v48, v5

    const/16 v5, 0x100

    invoke-direct {v1, v3, v2, v6, v5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v5, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v6, 0x258

    move-object/from16 v49, v1

    const/16 v1, 0x23

    invoke-direct {v3, v6, v2, v5, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v1, 0xf9

    move-object/from16 v28, v9

    const/16 v9, 0x32

    invoke-direct {v6, v1, v2, v5, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v9, 0xfa

    move-object/from16 v50, v3

    const/16 v3, 0x46

    invoke-direct {v1, v9, v2, v5, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v9, 0xfb

    move-object/from16 v51, v1

    const/16 v1, 0xa0

    invoke-direct {v3, v9, v2, v5, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v5, v10

    sget-object v10, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    invoke-direct {v2, v1, v10, v11, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v9, 0x18a

    invoke-direct {v1, v9, v10, v11, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v9, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v52, v1

    const/16 v1, 0x85

    invoke-direct {v9, v1, v10, v11, v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v53, v2

    const/16 v2, 0x18b

    invoke-direct {v1, v2, v10, v11, v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v54, v1

    const/16 v1, 0x86

    invoke-direct {v2, v1, v10, v11, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v55, v2

    const/16 v2, 0x18c

    invoke-direct {v1, v2, v10, v11, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v56, v1

    const/16 v1, 0x87

    invoke-direct {v2, v1, v10, v11, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v57, v2

    const/16 v2, 0xd4

    invoke-direct {v1, v2, v10, v11, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v58, v1

    const/16 v1, 0x18d

    invoke-direct {v2, v1, v10, v11, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v59, v2

    const/16 v2, 0x88

    invoke-direct {v1, v2, v10, v11, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v60, v1

    const/16 v1, 0x18e

    invoke-direct {v2, v1, v10, v11, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    move-object v1, v8

    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v32, v12

    const-string v12, "720p60"

    move-object/from16 v61, v13

    const/16 v13, 0x3c

    move-object/from16 v62, v9

    const/16 v9, 0x12a

    move-object/from16 v20, v1

    move-object/from16 v64, v2

    move-object/from16 v65, v3

    move-object/from16 v18, v27

    move-object/from16 v24, v28

    move-object/from16 v1, v30

    move-object/from16 v3, v32

    move-object/from16 v2, v61

    const/16 v61, 0x22

    const/16 v63, 0x23

    const/16 v66, 0x25

    const/16 v67, 0x20

    const/16 v68, 0x32

    invoke-direct/range {v8 .. v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    move-object/from16 v69, v8

    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v9, 0x89

    invoke-direct {v8, v9, v10, v11, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v9, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v12, 0x18f

    invoke-direct {v9, v12, v10, v11, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    move-object v12, v8

    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v13, v12

    const-string v12, "1080p60"

    move-object/from16 v27, v13

    const/16 v13, 0x3c

    move-object/from16 v28, v9

    const/16 v9, 0x12b

    move-object/from16 v70, v27

    move-object/from16 v71, v28

    invoke-direct/range {v8 .. v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v9, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v12, 0x190

    const-string v13, "1440p"

    invoke-direct {v9, v12, v10, v11, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v12, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v72, v5

    const/16 v5, 0x10a

    move-object/from16 v73, v6

    const-string v6, "2160p"

    invoke-direct {v12, v5, v10, v11, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v74, v8

    const/16 v8, 0x191

    invoke-direct {v5, v8, v10, v11, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v11, 0x116

    invoke-direct {v8, v11, v10, v1, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v11, 0xf2

    invoke-direct {v4, v11, v10, v1, v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v11, 0xf3

    invoke-direct {v7, v11, v10, v1, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v11, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v15, 0xf4

    invoke-direct {v11, v15, v10, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v15, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v75, v4

    const/16 v4, 0xf5

    invoke-direct {v15, v4, v10, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v76, v5

    const/16 v5, 0xf6

    invoke-direct {v4, v5, v10, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v5, 0xf7

    invoke-direct {v2, v5, v10, v1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v5, 0xf8

    invoke-direct {v3, v5, v10, v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v5, 0x10f

    invoke-direct {v0, v5, v10, v1, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v13, 0x110

    invoke-direct {v5, v13, v10, v1, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v27, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const-string v31, "720p60"

    const/16 v32, 0x3c

    const/16 v28, 0x12e

    move-object/from16 v29, v10

    invoke-direct/range {v27 .. v32}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    move-object/from16 v1, v27

    new-instance v27, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const-string v31, "1080p60"

    const/16 v28, 0x12f

    invoke-direct/range {v27 .. v32}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    move-object/from16 v13, v27

    new-instance v27, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const-string v31, "1440p60"

    const/16 v28, 0x134

    invoke-direct/range {v27 .. v32}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    move-object/from16 v77, v0

    move-object/from16 v79, v1

    move-object/from16 v78, v27

    move-object/from16 v0, v29

    move-object/from16 v10, v30

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v80, v2

    const/16 v2, 0x139

    invoke-direct {v1, v2, v0, v10, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v27, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const-string v31, "2160p60"

    const/16 v28, 0x13b

    invoke-direct/range {v27 .. v32}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    const/16 v0, 0x39

    new-array v0, v0, [Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/4 v2, 0x0

    aput-object v23, v0, v2

    const/4 v2, 0x1

    aput-object v42, v0, v2

    const/4 v2, 0x2

    aput-object v25, v0, v2

    const/4 v2, 0x3

    aput-object v20, v0, v2

    const/4 v2, 0x4

    aput-object v72, v0, v2

    const/4 v2, 0x5

    aput-object v33, v0, v2

    const/4 v2, 0x6

    aput-object v43, v0, v2

    const/4 v2, 0x7

    aput-object v22, v0, v2

    const/16 v2, 0x8

    aput-object v14, v0, v2

    const/16 v2, 0x9

    aput-object v18, v0, v2

    const/16 v2, 0xa

    aput-object v35, v0, v2

    const/16 v2, 0xb

    aput-object v37, v0, v2

    const/16 v2, 0xc

    aput-object v39, v0, v2

    const/16 v2, 0xd

    aput-object v41, v0, v2

    const/16 v2, 0xe

    aput-object v44, v0, v2

    const/16 v2, 0xf

    aput-object v48, v0, v2

    const/16 v2, 0x10

    aput-object v45, v0, v2

    aput-object v47, v0, v16

    aput-object v24, v0, v19

    const/16 v2, 0x13

    aput-object v49, v0, v2

    const/16 v2, 0x14

    aput-object v50, v0, v2

    const/16 v2, 0x15

    aput-object v73, v0, v2

    aput-object v51, v0, v21

    const/16 v2, 0x17

    aput-object v65, v0, v2

    const/16 v2, 0x18

    aput-object v53, v0, v2

    const/16 v2, 0x19

    aput-object v52, v0, v2

    const/16 v2, 0x1a

    aput-object v62, v0, v2

    const/16 v2, 0x1b

    aput-object v54, v0, v2

    const/16 v2, 0x1c

    aput-object v55, v0, v2

    const/16 v2, 0x1d

    aput-object v56, v0, v2

    const/16 v2, 0x1e

    aput-object v57, v0, v2

    const/16 v2, 0x1f

    aput-object v58, v0, v2

    aput-object v59, v0, v67

    const/16 v2, 0x21

    aput-object v60, v0, v2

    aput-object v64, v0, v61

    aput-object v69, v0, v63

    aput-object v70, v0, v17

    aput-object v71, v0, v66

    aput-object v74, v0, v26

    const/16 v2, 0x27

    aput-object v9, v0, v2

    const/16 v2, 0x28

    aput-object v12, v0, v2

    const/16 v2, 0x29

    aput-object v76, v0, v2

    const/16 v2, 0x2a

    aput-object v8, v0, v2

    aput-object v75, v0, v34

    aput-object v7, v0, v36

    aput-object v11, v0, v38

    aput-object v15, v0, v40

    const/16 v2, 0x2f

    aput-object v4, v0, v2

    aput-object v80, v0, v46

    const/16 v2, 0x31

    aput-object v3, v0, v2

    aput-object v77, v0, v68

    const/16 v2, 0x33

    aput-object v5, v0, v2

    const/16 v2, 0x34

    aput-object v79, v0, v2

    const/16 v2, 0x35

    aput-object v13, v0, v2

    const/16 v2, 0x36

    aput-object v78, v0, v2

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const/16 v1, 0x38

    aput-object v27, v0, v1

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V
    .locals 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 235
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 236
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 248
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 261
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    .line 262
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 263
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 182
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 183
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 184
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 185
    iput p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 233
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 235
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 236
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 261
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    .line 262
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 263
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 156
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 157
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 158
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 159
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    const/16 p1, 0x1e

    .line 160
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V
    .locals 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 233
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 235
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 236
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 261
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    .line 262
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 263
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 171
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 172
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 173
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 174
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    .line 175
    iput p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 233
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 235
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 236
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 248
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 261
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    .line 262
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 263
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 194
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 195
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 196
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 197
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 198
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 199
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 200
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    .line 201
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 202
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    .line 203
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    .line 204
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    .line 205
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    .line 206
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    .line 207
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    .line 208
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    .line 209
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    .line 210
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    .line 211
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    .line 212
    iget-wide v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 213
    iget-wide v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 214
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    .line 215
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    .line 216
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 217
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    return-void
.end method

.method public static getItag(I)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 5

    .line 118
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 119
    iget v4, v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    if-ne p0, v4, :cond_0

    .line 120
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    invoke-direct {p0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not supported"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getApproxDurationMs()J
    .locals 2

    .line 526
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    return-wide v0
.end method

.method public getAudioChannels()I
    .locals 1

    .line 457
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    return v0
.end method

.method public getAudioLocale()Ljava/util/Locale;
    .locals 1

    .line 639
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getAudioTrackId()Ljava/lang/String;
    .locals 1

    .line 581
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioTrackName()Ljava/lang/String;
    .locals 1

    .line 600
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .locals 1

    .line 619
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object v0
.end method

.method public getAverageBitrate()I
    .locals 1

    .line 415
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    return v0
.end method

.method public getBitrate()I
    .locals 1

    .line 275
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public getFps()I
    .locals 1

    .line 318
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 291
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    return v0
.end method

.method public getIndexEnd()I
    .locals 1

    .line 360
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    return v0
.end method

.method public getIndexStart()I
    .locals 1

    .line 352
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    return v0
.end method

.method public getInitEnd()I
    .locals 1

    .line 344
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    return v0
.end method

.method public getInitStart()I
    .locals 1

    .line 336
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    return v0
.end method

.method public getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionString()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 429
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    return v0
.end method

.method public getTargetDurationSec()I
    .locals 1

    .line 489
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 283
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    return v0
.end method

.method public setApproxDurationMs(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    .line 543
    :goto_0
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    return-void
.end method

.method public setAudioChannels(I)V
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 474
    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    return-void
.end method

.method public setAudioLocale(Ljava/util/Locale;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    return-void
.end method

.method public setAudioTrackId(Ljava/lang/String;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    return-void
.end method

.method public setAudioTrackName(Ljava/lang/String;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    return-void
.end method

.method public setAudioTrackType(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    .line 279
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    return-void
.end method

.method public setCodec(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    return-void
.end method

.method public setContentLength(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    .line 571
    :goto_0
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    return-void
.end method

.method public setFps(I)V
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 332
    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 295
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    return-void
.end method

.method public setIndexEnd(I)V
    .locals 0

    .line 364
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    return-void
.end method

.method public setIndexStart(I)V
    .locals 0

    .line 356
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    return-void
.end method

.method public setInitEnd(I)V
    .locals 0

    .line 348
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    return-void
.end method

.method public setInitStart(I)V
    .locals 0

    .line 340
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    return-void
.end method

.method public setIsDrc(Ljava/lang/Boolean;)V
    .locals 0

    .line 678
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->isDrc:Z

    return-void
.end method

.method public setLastModified(J)V
    .locals 0

    .line 702
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->lastModified:J

    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 443
    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    return-void
.end method

.method public setTargetDurationSec(I)V
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 512
    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 287
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    return-void
.end method

.method public setXtags(Ljava/lang/String;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->xtags:Ljava/lang/String;

    return-void
.end method
