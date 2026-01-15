.class public Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudLikesInfoItemExtractor;
.super Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamInfoItemExtractor;
.source "SoundcloudLikesInfoItemExtractor.java"


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 1

    .line 8
    const-string v0, "track"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method
