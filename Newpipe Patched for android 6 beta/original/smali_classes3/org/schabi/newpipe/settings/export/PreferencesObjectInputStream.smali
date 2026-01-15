.class public Lorg/schabi/newpipe/settings/export/PreferencesObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "PreferencesObjectInputStream.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# static fields
.field private static final CLASS_WHITELIST:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 31
    const-string v9, "java.util.HashMap"

    const-string v10, "java.util.HashSet"

    const-string v0, "java.lang.Boolean"

    const-string v1, "java.lang.Byte"

    const-string v2, "java.lang.Character"

    const-string v3, "java.lang.Short"

    const-string v4, "java.lang.Integer"

    const-string v5, "java.lang.Long"

    const-string v6, "java.lang.Float"

    const-string v7, "java.lang.Double"

    const-string v8, "java.lang.Void"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/settings/export/PreferencesObjectInputStream;->CLASS_WHITELIST:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 3

    .line 52
    sget-object v0, Lorg/schabi/newpipe/settings/export/PreferencesObjectInputStream;->CLASS_WHITELIST:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    .line 0
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
