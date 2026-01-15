.class public abstract Lorg/schabi/newpipe/util/ListHelper;
.super Ljava/lang/Object;
.source "ListHelper.java"


# static fields
.field private static final AUDIO_FORMAT_EFFICIENCY_RANKING:Ljava/util/List;

.field private static final AUDIO_FORMAT_QUALITY_RANKING:Ljava/util/List;

.field private static final AUDIO_TRACK_TYPE_RANKING:Ljava/util/List;

.field private static final AUDIO_TRACK_TYPE_RANKING_DESCRIPTIVE:Ljava/util/List;

.field private static final HIGH_RESOLUTION_LIST:Ljava/util/Set;

.field private static final SUPPORTED_ITAG_IDS:Ljava/util/List;

.field private static final VIDEO_FORMAT_QUALITY_RANKING:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$GEduBGJHjF_p_e-350KBOzSh0ic(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 876
    invoke-virtual {p1, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$H2z7gYTDbN7nqtc_eq90hqokK8Y(Lorg/schabi/newpipe/extractor/stream/VideoStream;)I
    .locals 1

    .line 531
    sget-object v0, Lorg/schabi/newpipe/util/ListHelper;->VIDEO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$H8vADy73sK432Md79ry_jTOuTs0(Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/AudioStream;)I
    .locals 0

    .line 778
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KhPY2r2B5PDEIZrn1Yc8N-2YH5A(IILorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 2

    .line 211
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->TORRENT:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-eq v0, v1, :cond_2

    .line 212
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-ne v0, v1, :cond_0

    .line 213
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-eq v0, v1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    .line 215
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/schabi/newpipe/util/ListHelper;->SUPPORTED_ITAG_IDS:Ljava/util/List;

    .line 216
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object p1

    iget p1, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$LVAYF6WJWT45-ZbHMfb_cuXscd0(Ljava/util/Locale;)Ljava/lang/Boolean;
    .locals 1

    .line 862
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 863
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 862
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PI41iGvDy0vaTR6yRK_UHWqcVyY(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 1

    .line 189
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object p0

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->TORRENT:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$R-hXPbpjtob6-vrgGv4chOe-r3s(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Boolean;
    .locals 0

    .line 857
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S_k3TYzFm_YkdJ86TUQheCkS2Ik(Ljava/util/Comparator;Ljava/util/List;Ljava/util/List;)I
    .locals 1

    const/4 v0, 0x0

    .line 366
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ym_K-TWtQOXZPWZ4u_KnchNzCxw(Ljava/util/Comparator;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 367
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, p0}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic $r8$lambda$dLx24jm-sRbJFsXlpTvzQUMgbGI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/ListHelper;->compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ih1mcIoUu5nX68PVEIcYpuslfJA(ZLorg/schabi/newpipe/extractor/stream/VideoStream;)Z
    .locals 2

    if-nez p0, :cond_1

    .line 483
    sget-object p0, Lorg/schabi/newpipe/util/ListHelper;->HIGH_RESOLUTION_LIST:Ljava/util/Set;

    .line 484
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object p1

    const-string v0, "p\\d+$"

    const-string v1, "p"

    .line 486
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 484
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$nlc0XXRsDCyj0xxGpbt2iWOtBRw(ZLorg/schabi/newpipe/extractor/stream/AudioTrackType;Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 851
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->ORIGINAL:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    const/4 v1, 0x1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne p2, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {p1, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public static synthetic $r8$lambda$qXiiWsx53S3p8YYvk8-4U4-OYIk(Lorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/MediaFormat;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne p2, p0, :cond_1

    const/4 v0, 0x1

    .line 774
    :cond_1
    invoke-static {p1, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public static synthetic $r8$lambda$sUBAEgOave8HkEGXv9mM5RZTUcM(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 0

    .line 175
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$vANw1WxIBlxP5EgOIkUpS0Q-oTs(Ljava/util/Comparator;Ljava/util/List;Ljava/util/List;)I
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 61

    .line 38
    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 39
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/ListHelper;->VIDEO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    .line 42
    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 43
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    .line 46
    invoke-static {v0, v2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_FORMAT_EFFICIENCY_RANKING:Ljava/util/List;

    .line 48
    const-string v0, "1440p"

    const-string v1, "2160p"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/ListHelper;->HIGH_RESOLUTION_LIST:Ljava/util/Set;

    .line 50
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->DESCRIPTIVE:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->SECONDARY:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    sget-object v2, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->DUBBED:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    sget-object v3, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->ORIGINAL:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 51
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_TRACK_TYPE_RANKING:Ljava/util/List;

    .line 55
    invoke-static {v1, v2, v3, v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_TRACK_TYPE_RANKING_DESCRIPTIVE:Ljava/util/List;

    const/16 v0, 0x11

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x12

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x22

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x23

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x3b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x4e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x16

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0x25

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x26

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x2b

    .line 67
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x2c

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2d

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x2e

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0xab

    .line 68
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v27, 0xac

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v28, 0x8b

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x8c

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x8d

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0xf9

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0xfa

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v33, 0xfb

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0xa0

    .line 69
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const/16 v35, 0x85

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    const/16 v36, 0x86

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const/16 v37, 0x87

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    const/16 v38, 0xd4

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    const/16 v39, 0x88

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    const/16 v40, 0x12a

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    const/16 v41, 0x89

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    const/16 v42, 0x12b

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    const/16 v43, 0x10a

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const/16 v44, 0x116

    .line 70
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    const/16 v45, 0xf2

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    const/16 v46, 0xf3

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    const/16 v47, 0xf4

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    const/16 v48, 0xf5

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    const/16 v49, 0xf6

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    const/16 v50, 0xf7

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    const/16 v51, 0xf8

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    const/16 v52, 0x10f

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    const/16 v53, 0x110

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    const/16 v54, 0x12e

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    const/16 v55, 0x12f

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    const/16 v56, 0x134

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    const/16 v57, 0x139

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    const/16 v58, 0x13b

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    const/16 v59, 0x11

    const/16 v0, 0x2f

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v60, 0x0

    aput-object v1, v0, v60

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v5, v0, v1

    const/4 v1, 0x3

    aput-object v7, v0, v1

    const/4 v1, 0x4

    aput-object v9, v0, v1

    const/4 v1, 0x5

    aput-object v10, v0, v1

    const/4 v1, 0x6

    aput-object v11, v0, v1

    const/4 v1, 0x7

    aput-object v13, v0, v1

    const/16 v1, 0x8

    aput-object v15, v0, v1

    const/16 v1, 0x9

    aput-object v17, v0, v1

    const/16 v1, 0xa

    aput-object v19, v0, v1

    const/16 v1, 0xb

    aput-object v21, v0, v1

    const/16 v1, 0xc

    aput-object v23, v0, v1

    const/16 v1, 0xd

    aput-object v25, v0, v1

    const/16 v1, 0xe

    aput-object v26, v0, v1

    const/16 v1, 0xf

    aput-object v27, v0, v1

    const/16 v1, 0x10

    aput-object v28, v0, v1

    aput-object v29, v0, v59

    aput-object v30, v0, v4

    const/16 v1, 0x13

    aput-object v31, v0, v1

    const/16 v1, 0x14

    aput-object v32, v0, v1

    const/16 v1, 0x15

    aput-object v33, v0, v1

    aput-object v34, v0, v12

    const/16 v1, 0x17

    aput-object v35, v0, v1

    const/16 v1, 0x18

    aput-object v36, v0, v1

    const/16 v1, 0x19

    aput-object v37, v0, v1

    const/16 v1, 0x1a

    aput-object v38, v0, v1

    const/16 v1, 0x1b

    aput-object v39, v0, v1

    const/16 v1, 0x1c

    aput-object v40, v0, v1

    const/16 v1, 0x1d

    aput-object v41, v0, v1

    const/16 v1, 0x1e

    aput-object v42, v0, v1

    const/16 v1, 0x1f

    aput-object v43, v0, v1

    const/16 v1, 0x20

    aput-object v44, v0, v1

    const/16 v1, 0x21

    aput-object v45, v0, v1

    aput-object v46, v0, v6

    aput-object v47, v0, v8

    aput-object v48, v0, v2

    aput-object v49, v0, v14

    aput-object v50, v0, v16

    const/16 v1, 0x27

    aput-object v51, v0, v1

    const/16 v1, 0x28

    aput-object v52, v0, v1

    const/16 v1, 0x29

    aput-object v53, v0, v1

    const/16 v1, 0x2a

    aput-object v54, v0, v1

    aput-object v55, v0, v18

    aput-object v56, v0, v20

    aput-object v57, v0, v22

    aput-object v58, v0, v24

    .line 64
    invoke-static {v0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/ListHelper;->SUPPORTED_ITAG_IDS:Ljava/util/List;

    return-void
.end method

.method private static compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 685
    const-string v0, ""

    const-string v1, "[^\\d.]"

    const-string v2, "1"

    const-string v3, "0p\\d+$"

    :try_start_0
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 686
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 685
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 687
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 688
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 687
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p0, p1

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method private static computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2

    .line 398
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f12005c

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 405
    :goto_0
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->getResolutionLimit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 407
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 408
    invoke-static {p2, p1}, Lorg/schabi/newpipe/util/ListHelper;->compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_2

    :cond_1
    return-object p2

    :cond_2
    return-object p1
.end method

.method private static getAudioFormatComparator(Landroid/content/Context;)Ljava/util/Comparator;
    .locals 2

    const v0, 0x7f1200ca

    const v1, 0x7f1200cc

    .line 747
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultFormat(Landroid/content/Context;II)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    .line 749
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->isLimitingDataUsage(Landroid/content/Context;)Z

    move-result p0

    invoke-static {v0, p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioFormatComparator(Lorg/schabi/newpipe/extractor/MediaFormat;Z)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method static getAudioFormatComparator(Lorg/schabi/newpipe/extractor/MediaFormat;Z)Ljava/util/Comparator;
    .locals 3

    if-eqz p1, :cond_0

    .line 764
    sget-object v0, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_FORMAT_EFFICIENCY_RANKING:Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    .line 766
    :goto_0
    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda7;-><init>()V

    .line 767
    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 769
    invoke-static {v1}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    .line 772
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda8;-><init>()V

    new-instance v2, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/extractor/MediaFormat;)V

    invoke-static {p1, v2}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    .line 777
    invoke-static {p0, v1}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda10;

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda10;-><init>(Ljava/util/List;)V

    invoke-static {p0, p1}, Lj$/util/Comparator$-EL;->thenComparingInt(Ljava/util/Comparator;Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static getAudioFormatIndex(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)I
    .locals 3

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 150
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 151
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 152
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method static getAudioIndexByHighestRank(Ljava/util/List;Ljava/util/Comparator;)I
    .locals 1

    if-eqz p0, :cond_1

    .line 546
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 551
    invoke-interface {v0, p1}, Lj$/util/stream/Stream;->max(Ljava/util/Comparator;)Lj$/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 553
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static getAudioTrackComparator(Landroid/content/Context;)Ljava/util/Comparator;
    .locals 4

    .line 805
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 806
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->getPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    const v2, 0x7f120388

    .line 808
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const v3, 0x7f120385

    .line 811
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 814
    invoke-static {v1, v2, p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioTrackComparator(Ljava/util/Locale;ZZ)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method static getAudioTrackComparator(Ljava/util/Locale;ZZ)Ljava/util/Comparator;
    .locals 2

    .line 845
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 847
    sget-object p2, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_TRACK_TYPE_RANKING_DESCRIPTIVE:Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/schabi/newpipe/util/ListHelper;->AUDIO_TRACK_TYPE_RANKING:Ljava/util/List;

    .line 849
    :goto_0
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda1;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-static {v0, v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 856
    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Comparator$-CC;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    .line 855
    invoke-static {p1, v0, p0}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 859
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p2}, Lj$/util/Comparator$-CC;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p2

    .line 858
    invoke-static {p0, p1, p2}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;-><init>()V

    new-instance p2, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;

    invoke-direct {p2}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;-><init>()V

    .line 861
    invoke-static {p2}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p2}, Lj$/util/Comparator$-CC;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p2

    .line 860
    invoke-static {p0, p1, p2}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method private static getAudioTrackNameComparator()Ljava/util/Comparator;
    .locals 3

    .line 873
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    move-result-object v0

    .line 875
    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;-><init>()V

    new-instance v2, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda20;

    invoke-direct {v2, v0}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda20;-><init>(Ljava/util/Locale;)V

    .line 876
    invoke-static {v2}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 875
    invoke-static {v0}, Lj$/util/Comparator$-CC;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 878
    invoke-static {}, Lj$/util/Comparator$-CC;->naturalOrder()Ljava/util/Comparator;

    move-result-object v2

    .line 877
    invoke-static {v2}, Lj$/util/Comparator$-CC;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I
    .locals 1

    .line 130
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioTrackComparator(Landroid/content/Context;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioFormatComparator(Landroid/content/Context;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    .line 129
    invoke-static {p1, p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioIndexByHighestRank(Ljava/util/List;Ljava/util/Comparator;)I

    move-result p0

    return p0
.end method

.method public static getDefaultAudioTrackGroup(Landroid/content/Context;Ljava/util/List;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 135
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioTrackComparator(Landroid/content/Context;)Ljava/util/Comparator;

    move-result-object p0

    .line 140
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda11;-><init>(Ljava/util/Comparator;)V

    .line 141
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->max(Ljava/util/Comparator;)Lj$/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 143
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static getDefaultFormat(Landroid/content/Context;II)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 653
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 655
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 657
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 656
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 661
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/ListHelper;->getMediaFormatFromKey(Landroid/content/Context;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultResolutionIndex(Landroid/content/Context;Ljava/util/List;)I
    .locals 2

    const v0, 0x7f1200d7

    const v1, 0x7f1200d9

    .line 83
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/util/ListHelper;->computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method static getDefaultResolutionIndex(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/util/List;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p3, :cond_3

    .line 429
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 433
    invoke-static {p3, v1}, Lorg/schabi/newpipe/util/ListHelper;->sortStreamList(Ljava/util/List;Z)Ljava/util/List;

    .line 434
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 439
    :cond_1
    invoke-static {p0, p2, p3}, Lorg/schabi/newpipe/util/ListHelper;->getVideoStreamIndex(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/util/List;)I

    move-result p0

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I
    .locals 2

    const v0, 0x7f1200dd

    const v1, 0x7f1200df

    .line 642
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultFormat(Landroid/content/Context;II)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    const v1, 0x7f12005c

    .line 645
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 644
    invoke-static {p1, p0, v0, p2}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionIndex(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static getFilteredAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 5

    if-nez p1, :cond_0

    .line 297
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 300
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 302
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioFormatComparator(Landroid/content/Context;)Ljava/util/Comparator;

    move-result-object p0

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 305
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object v3

    sget-object v4, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->TORRENT:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-eq v3, v4, :cond_1

    .line 306
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object v3

    sget-object v4, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-ne v3, v4, :cond_2

    .line 307
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v3

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    if-eqz v3, :cond_3

    .line 314
    invoke-interface {p0, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1

    .line 315
    :cond_3
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 320
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_5

    .line 321
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Lorg/schabi/newpipe/util/ListHelper;->getAudioTrackNameComparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 326
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 0

    if-nez p0, :cond_0

    .line 387
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 390
    :cond_0
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 391
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 392
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getGroupedAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 4

    if-nez p1, :cond_0

    .line 340
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 343
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 345
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 346
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 351
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_3

    .line 358
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_3
    invoke-static {}, Lorg/schabi/newpipe/util/ListHelper;->getAudioTrackNameComparator()Ljava/util/Comparator;

    move-result-object p1

    .line 363
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioFormatComparator(Landroid/content/Context;)Ljava/util/Comparator;

    move-result-object p0

    .line 365
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda18;-><init>(Ljava/util/Comparator;)V

    .line 366
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda19;-><init>(Ljava/util/Comparator;)V

    .line 367
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 368
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static getMediaFormatFromKey(Landroid/content/Context;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    const v0, 0x7f1204c6

    .line 668
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0

    :cond_0
    const v0, 0x7f1204c2

    .line 670
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0

    :cond_1
    const v0, 0x7f1204bf

    .line 672
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0

    :cond_2
    const v0, 0x7f120048

    .line 674
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0

    :cond_3
    const v0, 0x7f12003f

    .line 676
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 677
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPlayableStreams(Ljava/util/List;I)Ljava/util/List;
    .locals 2

    .line 209
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v0

    .line 210
    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1, v0}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda22;-><init>(II)V

    invoke-static {p0, v1}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getPopupDefaultResolutionIndex(Landroid/content/Context;Ljava/util/List;)I
    .locals 2

    const v0, 0x7f1200d4

    const v1, 0x7f1200d6

    .line 109
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/util/ListHelper;->computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static getPopupResolutionIndex(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)I
    .locals 0

    .line 124
    invoke-static {p0, p2, p1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static getResolutionIndex(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)I
    .locals 0

    .line 98
    invoke-static {p0, p2, p1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method private static getResolutionLimit(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 710
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->isMeteredNetwork(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 712
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v2, 0x7f120229

    .line 713
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12022a

    .line 715
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 714
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 716
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    return-object p0

    :cond_1
    return-object v1
.end method

.method public static getSortedResolutionList(Landroid/content/res/Resources;IIZ)Ljava/util/List;
    .locals 1

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    .line 266
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez p3, :cond_0

    return-object v0

    .line 271
    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    .line 273
    invoke-interface {v0, p1, p0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-object v0
.end method

.method public static getSortedStreamVideosList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZZ)Ljava/util/List;
    .locals 9

    .line 239
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f12042d

    .line 242
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 241
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const v0, 0x7f1200dd

    const v1, 0x7f1200df

    .line 243
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultFormat(Landroid/content/Context;II)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v3

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    .line 246
    invoke-static/range {v3 .. v8}, Lorg/schabi/newpipe/util/ListHelper;->getSortedStreamVideosList(Lorg/schabi/newpipe/extractor/MediaFormat;ZLjava/util/List;Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getSortedStreamVideosList(Lorg/schabi/newpipe/extractor/MediaFormat;ZLjava/util/List;Ljava/util/List;ZZ)Ljava/util/List;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p5, :cond_0

    .line 475
    new-array p5, v2, [Ljava/util/List;

    aput-object p2, p5, v1

    aput-object p3, p5, v0

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 476
    :cond_0
    new-array p5, v2, [Ljava/util/List;

    aput-object p3, p5, v1

    aput-object p2, p5, v0

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 478
    :goto_0
    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda13;

    invoke-direct {p3}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda13;-><init>()V

    .line 480
    invoke-interface {p2, p3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda14;

    invoke-direct {p3}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda14;-><init>()V

    .line 481
    invoke-interface {p2, p3}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda15;

    invoke-direct {p3, p1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda15;-><init>(Z)V

    .line 483
    invoke-interface {p2, p3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 487
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 489
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 491
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 492
    invoke-virtual {p5}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 496
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 497
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p5

    if-ne p5, p0, :cond_2

    .line 498
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 503
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, p4}, Lorg/schabi/newpipe/util/ListHelper;->sortStreamList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getStreamsOfSpecifiedDelivery(Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Ljava/util/List;
    .locals 1

    .line 174
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 188
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getVideoStreamIndex(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/util/List;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 583
    const-string v3, "p\\d+$"

    const-string v4, "p"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    .line 585
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_6

    if-nez v1, :cond_0

    const/4 v13, 0x0

    goto :goto_1

    .line 588
    :cond_0
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v13}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v13

    .line 589
    :goto_1
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v14}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v14

    .line 590
    invoke-virtual {v14, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-ne v13, v1, :cond_1

    .line 592
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    move v8, v7

    :cond_1
    if-ne v13, v1, :cond_2

    .line 596
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v9, v7

    :cond_2
    if-ne v10, v6, :cond_3

    .line 600
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move v10, v7

    :cond_3
    if-ne v11, v6, :cond_4

    .line 605
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v11, v7

    :cond_4
    if-ne v12, v6, :cond_5

    .line 609
    invoke-static {v15, v5}, Lorg/schabi/newpipe/util/ListHelper;->compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_5

    move v12, v7

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    if-eq v8, v6, :cond_7

    return v8

    :cond_7
    if-eq v9, v6, :cond_8

    return v9

    :cond_8
    if-eq v10, v6, :cond_9

    return v10

    :cond_9
    if-eq v11, v6, :cond_a

    return v11

    :cond_a
    return v12
.end method

.method public static isHighResolutionSelected(Ljava/lang/String;ILandroid/content/res/Resources;)Z
    .locals 0

    .line 280
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 282
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static isLimitingDataUsage(Landroid/content/Context;)Z
    .locals 0

    .line 699
    invoke-static {p0}, Lorg/schabi/newpipe/util/ListHelper;->getResolutionLimit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isMeteredNetwork(Landroid/content/Context;)Z
    .locals 1

    .line 728
    const-class v0, Landroid/net/ConnectivityManager;

    .line 729
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    .line 730
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static sortStreamList(Ljava/util/List;Z)Ljava/util/List;
    .locals 2

    .line 529
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda55;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda16;-><init>()V

    .line 530
    invoke-static {v0, v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda17;-><init>()V

    .line 531
    invoke-static {v0, v1}, Lj$/util/Comparator$-EL;->thenComparingInt(Ljava/util/Comparator;Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 529
    invoke-static {v0}, Lj$/util/Comparator$-CC;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    invoke-static {v0}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method
