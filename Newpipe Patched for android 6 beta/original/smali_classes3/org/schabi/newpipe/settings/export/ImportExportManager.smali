.class public final Lorg/schabi/newpipe/settings/export/ImportExportManager;
.super Ljava/lang/Object;
.source "ImportExportManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/export/ImportExportManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/settings/export/ImportExportManager$Companion;


# instance fields
.field private final fileLocator:Lorg/schabi/newpipe/settings/export/BackupFileLocator;


# direct methods
.method public static synthetic $r8$lambda$7ehNpzaesF-HYXeUi52yGat-qfk(Landroid/content/SharedPreferences;Ljava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/settings/export/ImportExportManager;->loadSerializedPrefs$lambda$0(Landroid/content/SharedPreferences;Ljava/io/InputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IgW3_UBr7XfEymN8SvL2yhtEQg4(Landroid/content/SharedPreferences;Ljava/io/OutputStream;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/settings/export/ImportExportManager;->exportDatabase$lambda$0$0(Landroid/content/SharedPreferences;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PStOoQgWOrE0iis8A3B9BIOzYdk(Landroid/content/SharedPreferences;Ljava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/settings/export/ImportExportManager;->loadJsonPrefs$lambda$0(Landroid/content/SharedPreferences;Ljava/io/InputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iWsnSWuwNnhrf6lHQXudoG1GUtU(Landroid/content/SharedPreferences;Ljava/io/OutputStream;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/settings/export/ImportExportManager;->exportDatabase$lambda$0$1(Landroid/content/SharedPreferences;Ljava/io/OutputStream;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/settings/export/ImportExportManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/settings/export/ImportExportManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/settings/export/ImportExportManager;->Companion:Lorg/schabi/newpipe/settings/export/ImportExportManager$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)V
    .locals 1

    const-string v0, "fileLocator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager;->fileLocator:Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    return-void
.end method

.method private static final exportDatabase$lambda$0$0(Landroid/content/SharedPreferences;Ljava/io/OutputStream;)V
    .locals 1

    .line 42
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 45
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 42
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final exportDatabase$lambda$0$1(Landroid/content/SharedPreferences;Ljava/io/OutputStream;)V
    .locals 1

    .line 54
    const-string v0, ""

    invoke-static {v0}, Lcom/grack/nanojson/JsonWriter;->indent(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriter$JsonWriterContext;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonWriter$JsonWriterContext;->on(Ljava/io/OutputStream;)Lcom/grack/nanojson/JsonAppendableWriter;

    move-result-object p1

    .line 56
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonAppendableWriter;->object(Ljava/util/Map;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonAppendableWriter;

    .line 57
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonAppendableWriter;->done()V

    return-void
.end method

.method private static final loadJsonPrefs$lambda$0(Landroid/content/SharedPreferences;Ljava/io/InputStream;)V
    .locals 5

    .line 154
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 156
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 157
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 161
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 162
    :cond_1
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 163
    :cond_2
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 164
    :cond_3
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 165
    :cond_4
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_5

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 166
    :cond_5
    instance-of v2, v0, Lcom/grack/nanojson/JsonArray;

    if-eqz v2, :cond_0

    .line 167
    check-cast v0, Ljava/lang/Iterable;

    .line 1617
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 167
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_7

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 1625
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    :cond_8
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 172
    :cond_9
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_a

    return-void

    .line 173
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to commit loadJsonPrefs"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final loadSerializedPrefs$lambda$0(Landroid/content/SharedPreferences;Ljava/io/InputStream;)V
    .locals 5

    .line 115
    new-instance v0, Lorg/schabi/newpipe/settings/export/PreferencesObjectInputStream;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/settings/export/PreferencesObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 117
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, *>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    .line 119
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 120
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 124
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 125
    :cond_1
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 126
    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 127
    :cond_3
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_4

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 128
    :cond_4
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_5

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 129
    :cond_5
    instance-of v3, v1, Ljava/util/Set;

    if-eqz v3, :cond_0

    .line 132
    check-cast v1, Ljava/util/Set;

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 137
    :cond_6
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 140
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 115
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 138
    :cond_7
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to commit loadSerializedPrefs"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final ensureDbDirectoryExists()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager;->fileLocator:Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    invoke-virtual {v0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->getDbDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager;->fileLocator:Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    invoke-virtual {v0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->getDbDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final exportDatabase(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V
    .locals 3

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Lorg/schabi/newpipe/streams/io/SharpOutputStream;

    invoke-virtual {p2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->openAndTruncateStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/schabi/newpipe/streams/io/SharpOutputStream;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    new-instance p2, Ljava/io/BufferedOutputStream;

    const/16 v2, 0x2000

    invoke-direct {p2, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    :try_start_0
    const-string p2, "newpipe.db"

    .line 34
    iget-object v1, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager;->fileLocator:Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    invoke-virtual {v1}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->getDb()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v0, p2, v1}, Lorg/schabi/newpipe/util/ZipHelper;->addFileToZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string p2, "newpipe.settings"

    .line 38
    new-instance v1, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/SharedPreferences;)V

    invoke-static {v0, p2, v1}, Lorg/schabi/newpipe/util/ZipHelper;->addFileToZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Lorg/schabi/newpipe/util/ZipHelper$OutputStreamConsumer;)V

    .line 51
    const-string p2, "preferences.json"

    .line 49
    new-instance v1, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/SharedPreferences;)V

    invoke-static {v0, p2, v1}, Lorg/schabi/newpipe/util/ZipHelper;->addFileToZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Lorg/schabi/newpipe/util/ZipHelper$OutputStreamConsumer;)V

    .line 59
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 29
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final exportHasJsonPrefs(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z
    .locals 1

    const-string v0, "zipFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    const-string v0, "preferences.json"

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/ZipHelper;->zipContainsFile(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final exportHasSerializedPrefs(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z
    .locals 1

    const-string v0, "zipFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    const-string v0, "newpipe.settings"

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/ZipHelper;->zipContainsFile(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final extractDb(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager;->fileLocator:Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    invoke-virtual {v0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->getDb()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "newpipe.db"

    invoke-static {p1, v1, v0}, Lorg/schabi/newpipe/util/ZipHelper;->extractFileFromZip(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager;->fileLocator:Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    invoke-virtual {v0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->getDbJournal()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager;->fileLocator:Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    invoke-virtual {v0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->getDbWal()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/settings/export/ImportExportManager;->fileLocator:Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    invoke-virtual {v0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->getDbShm()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return p1
.end method

.method public final loadJsonPrefs(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "zipFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferences"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda2;-><init>(Landroid/content/SharedPreferences;)V

    const-string p2, "preferences.json"

    invoke-static {p1, p2, v0}, Lorg/schabi/newpipe/util/ZipHelper;->extractFileFromZip(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Ljava/lang/String;Lorg/schabi/newpipe/util/ZipHelper$InputStreamConsumer;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 177
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final loadSerializedPrefs(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "zipFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferences"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lorg/schabi/newpipe/settings/export/ImportExportManager$$ExternalSyntheticLambda3;-><init>(Landroid/content/SharedPreferences;)V

    const-string p2, "newpipe.settings"

    invoke-static {p1, p2, v0}, Lorg/schabi/newpipe/util/ZipHelper;->extractFileFromZip(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Ljava/lang/String;Lorg/schabi/newpipe/util/ZipHelper$InputStreamConsumer;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
