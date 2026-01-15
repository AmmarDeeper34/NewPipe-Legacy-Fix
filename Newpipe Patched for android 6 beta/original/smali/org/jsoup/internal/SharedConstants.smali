.class public abstract Lorg/jsoup/internal/SharedConstants;
.super Ljava/lang/Object;
.source "SharedConstants.java"


# static fields
.field public static final FormSubmitTags:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    const-string v0, "select"

    const-string v1, "textarea"

    const-string v2, "input"

    const-string v3, "keygen"

    const-string v4, "object"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/SharedConstants;->FormSubmitTags:[Ljava/lang/String;

    return-void
.end method
