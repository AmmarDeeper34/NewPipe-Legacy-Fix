.class public abstract Lorg/schabi/newpipe/util/ZipHelper;
.super Ljava/lang/Object;
.source "ZipHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/util/ZipHelper$OutputStreamConsumer;,
        Lorg/schabi/newpipe/util/ZipHelper$InputStreamConsumer;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$_zXtqb4bbAOfFgg617JLv7KFE9o(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3

    .line 128
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v0, 0x800

    .line 135
    new-array v0, v0, [B

    .line 136
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 138
    :goto_1
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v1, v0, v2, p0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 141
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    .line 136
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method

.method public static addFileToZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 4

    const/16 v0, 0x800

    .line 103
    new-array v1, v0, [B

    .line 104
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 106
    :try_start_0
    new-instance p2, Ljava/util/zip/ZipEntry;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_0
    const/4 p1, 0x0

    .line 109
    invoke-virtual {v2, v1, p1, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 110
    invoke-virtual {p0, v1, p1, p2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 112
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    return-void

    .line 104
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static addFileToZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 67
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 68
    :try_start_0
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/util/ZipHelper;->addFileToZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 67
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static addFileToZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Lorg/schabi/newpipe/util/ZipHelper$OutputStreamConsumer;)V
    .locals 1

    .line 83
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    :try_start_0
    invoke-interface {p2, v0}, Lorg/schabi/newpipe/util/ZipHelper$OutputStreamConsumer;->acceptStream(Ljava/io/OutputStream;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 86
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 88
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 89
    :try_start_1
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/util/ZipHelper;->addFileToZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 88
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :catchall_2
    move-exception p0

    .line 83
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static extractFileFromZip(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 126
    new-instance v0, Lorg/schabi/newpipe/util/ZipHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lorg/schabi/newpipe/util/ZipHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/util/ZipHelper;->extractFileFromZip(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Ljava/lang/String;Lorg/schabi/newpipe/util/ZipHelper$InputStreamConsumer;)Z

    move-result p0

    return p0
.end method

.method public static extractFileFromZip(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Ljava/lang/String;Lorg/schabi/newpipe/util/ZipHelper$InputStreamConsumer;)Z
    .locals 3

    .line 157
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Lorg/schabi/newpipe/streams/io/SharpInputStream;

    .line 158
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/streams/io/SharpInputStream;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 160
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 161
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 162
    invoke-interface {p2, v0}, Lorg/schabi/newpipe/util/ZipHelper$InputStreamConsumer;->acceptStream(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    const/4 p0, 0x0

    return p0

    .line 157
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static isValidZipFile(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z
    .locals 3

    .line 192
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Lorg/schabi/newpipe/streams/io/SharpInputStream;

    .line 193
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/streams/io/SharpInputStream;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x1

    .line 195
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zipContainsFile(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Ljava/lang/String;)Z
    .locals 3

    .line 178
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Lorg/schabi/newpipe/streams/io/SharpInputStream;

    .line 179
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/streams/io/SharpInputStream;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 182
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 183
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    const/4 p0, 0x0

    return p0

    .line 178
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method
