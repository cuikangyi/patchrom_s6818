.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final DECODE_BUFFER_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "BitmapFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "opts"

    .prologue
    or-int v1, p1, p2

    if-ltz v1, :cond_0

    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem decoding into existing bitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "pathName"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "pathName"
    .parameter "opts"

    .prologue
    const/4 v2, 0x0

    .local v2, bm:Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .local v15, stream:Ljava/io/InputStream;
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    int-to-long v9, v0

    .local v9, length:J
    const-string v17, ".dcf"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, ".odf"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    :cond_0
    const/4 v8, 0x1

    .local v8, isDRM:Z
    :goto_0
    const/4 v11, 0x0

    .local v11, mimeType:Ljava/lang/String;
    if-eqz v8, :cond_b

    const-string v11, "application/vnd.oma.drm.content"

    new-instance v4, Landroid/drm/DrmManagerClient;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .local v4, drmclient:Landroid/drm/DrmManagerClient;
    const/4 v15, 0x0

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v6

    .local v6, fileLength:J
    const/16 v17, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v13

    .local v13, rightStatus:I
    if-nez v13, :cond_a

    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-direct {v3, v0, v11}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .local v3, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v17, "drm_path"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v3, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v17, "LENGTH"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v18, "preview_option"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const-string v17, "true"

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v12

    .local v12, resultInfo:Landroid/drm/DrmInfo;
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, status_req1:Ljava/lang/String;
    const-string v17, "BitmapFactory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "decodeFile :: processRequest status is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "success"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v12}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v17

    if-eqz v17, :cond_7

    new-instance v16, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v12}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v15           #stream:Ljava/io/InputStream;
    .local v16, stream:Ljava/io/InputStream;
    move-object/from16 v15, v16

    .end local v3           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v12           #resultInfo:Landroid/drm/DrmInfo;
    .end local v14           #status_req1:Ljava/lang/String;
    .end local v16           #stream:Ljava/io/InputStream;
    .restart local v15       #stream:Ljava/io/InputStream;
    :goto_2
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/drm/DrmManagerClient;->release()V

    .end local v4           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v6           #fileLength:J
    .end local v8           #isDRM:Z
    .end local v9           #length:J
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v13           #rightStatus:I
    :cond_1
    :goto_3
    if-eqz v15, :cond_2

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v15, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-eqz v15, :cond_3

    :try_start_1
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->setImagePath(Ljava/lang/String;)V

    :cond_4
    return-object v2

    .restart local v9       #length:J
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .restart local v3       #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .restart local v4       #drmclient:Landroid/drm/DrmManagerClient;
    .restart local v6       #fileLength:J
    .restart local v8       #isDRM:Z
    .restart local v11       #mimeType:Ljava/lang/String;
    .restart local v13       #rightStatus:I
    :cond_6
    :try_start_2
    const-string v17, "false"

    goto :goto_1

    .restart local v12       #resultInfo:Landroid/drm/DrmInfo;
    .restart local v14       #status_req1:Ljava/lang/String;
    :cond_7
    const-string v17, "BitmapFactory"

    const-string v18, "decodeFile :: custom api returned null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .end local v3           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v4           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v6           #fileLength:J
    .end local v8           #isDRM:Z
    .end local v9           #length:J
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v12           #resultInfo:Landroid/drm/DrmInfo;
    .end local v13           #rightStatus:I
    .end local v14           #status_req1:Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, e:Ljava/lang/Exception;
    :try_start_3
    const-string v17, "BitmapFactory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "decodeFile: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " failed!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v15, :cond_3

    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v17

    goto :goto_4

    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .restart local v4       #drmclient:Landroid/drm/DrmManagerClient;
    .restart local v6       #fileLength:J
    .restart local v8       #isDRM:Z
    .restart local v9       #length:J
    .restart local v11       #mimeType:Ljava/lang/String;
    .restart local v12       #resultInfo:Landroid/drm/DrmInfo;
    .restart local v13       #rightStatus:I
    .restart local v14       #status_req1:Ljava/lang/String;
    :cond_8
    :try_start_5
    const-string v17, "BitmapFactory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "decodeFile :: FAIL reason is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "INFO"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .end local v3           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v4           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v6           #fileLength:J
    .end local v8           #isDRM:Z
    .end local v9           #length:J
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v12           #resultInfo:Landroid/drm/DrmInfo;
    .end local v13           #rightStatus:I
    .end local v14           #status_req1:Ljava/lang/String;
    :catchall_0
    move-exception v17

    if-eqz v15, :cond_9

    :try_start_6
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_9
    :goto_5
    throw v17

    .restart local v4       #drmclient:Landroid/drm/DrmManagerClient;
    .restart local v6       #fileLength:J
    .restart local v8       #isDRM:Z
    .restart local v9       #length:J
    .restart local v11       #mimeType:Ljava/lang/String;
    .restart local v13       #rightStatus:I
    :cond_a
    :try_start_7
    const-string v17, "BitmapFactory"

    const-string v18, "decodeFile :: Rights not present. Handle here and show pop up for no license present"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v4           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v6           #fileLength:J
    .end local v13           #rightStatus:I
    :cond_b
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .end local v15           #stream:Ljava/io/InputStream;
    .restart local v16       #stream:Ljava/io/InputStream;
    move-object/from16 v15, v16

    .end local v16           #stream:Ljava/io/InputStream;
    .restart local v15       #stream:Ljava/io/InputStream;
    goto/16 :goto_3

    .end local v8           #isDRM:Z
    .end local v9           #length:J
    .end local v11           #mimeType:Ljava/lang/String;
    :catch_2
    move-exception v17

    goto/16 :goto_4

    :catch_3
    move-exception v18

    goto :goto_5
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "fd"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "fd"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Problem decoding into existing bitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .end local v0           #bm:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v2

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "res"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "res"
    .parameter "id"
    .parameter "opts"

    .prologue
    const/4 v0, 0x0

    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .local v3, value:Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v3}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {p0, v3, v2, v4, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v3           #value:Landroid/util/TypedValue;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Problem decoding into existing bitmap"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "BitmapFactory"

    const-string v5, "decodeResource failed! "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_1
    throw v4

    .restart local v3       #value:Landroid/util/TypedValue;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v3           #value:Landroid/util/TypedValue;
    :catch_3
    move-exception v5

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "res"
    .parameter "value"
    .parameter "is"
    .parameter "pad"
    .parameter "opts"

    .prologue
    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .restart local p4
    :cond_0
    iget v2, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    iget v0, p1, Landroid/util/TypedValue;->density:I

    .local v0, density:I
    if-nez v0, :cond_4

    const/16 v2, 0xa0

    iput v2, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .end local v0           #density:I
    :cond_1
    :goto_0
    iget v2, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v2, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :cond_2
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, tmpBitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->setImagePath(Landroid/util/TypedValue;)V

    :cond_3
    return-object v1

    .end local v1           #tmpBitmap:Landroid/graphics/Bitmap;
    .restart local v0       #density:I
    :cond_4
    const v2, 0xffff

    if-eq v0, v2, :cond_1

    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "is"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "is"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/16 v2, 0x4000

    const/4 v4, 0x1

    if-nez p0, :cond_1

    const/4 v7, 0x0

    .end local p0
    :cond_0
    :goto_0
    return-object v7

    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, p0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .local v10, is:Ljava/io/InputStream;
    move-object p0, v10

    .end local v10           #is:Ljava/io/InputStream;
    .restart local p0
    :cond_2
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v9, 0x1

    .local v9, finish:Z
    instance-of v0, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v6

    .local v6, asset:I
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz v0, :cond_6

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    :cond_3
    const/high16 v5, 0x3f80

    .local v5, scale:F
    const/4 v11, 0x0

    .local v11, targetDensity:I
    if-eqz p2, :cond_4

    iget v8, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .local v8, density:I
    iget v11, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-eqz v8, :cond_4

    if-eqz v11, :cond_4

    int-to-float v0, v11

    int-to-float v2, v8

    div-float v5, v0, v2

    .end local v8           #density:I
    :cond_4
    invoke-static {v6, p1, p2, v4, v5}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;ZF)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, bm:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_5

    if-eqz v11, :cond_5

    invoke-virtual {v7, v11}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_5
    const/4 v9, 0x0

    .end local v5           #scale:F
    .end local v6           #asset:I
    .end local v11           #targetDensity:I
    :goto_1
    if-nez v7, :cond_e

    if-eqz p2, :cond_e

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem decoding into existing bitmap"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v7           #bm:Landroid/graphics/Bitmap;
    .restart local v6       #asset:I
    :cond_6
    invoke-static {v6, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7       #bm:Landroid/graphics/Bitmap;
    goto :goto_1

    .end local v6           #asset:I
    .end local v7           #bm:Landroid/graphics/Bitmap;
    .restart local p0
    :cond_7
    const/4 v1, 0x0

    .local v1, tempStorage:[B
    if-eqz p2, :cond_8

    iget-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    :cond_8
    if-nez v1, :cond_9

    new-array v1, v2, [B

    :cond_9
    if-eqz p2, :cond_a

    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz v0, :cond_d

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    :cond_a
    const/high16 v5, 0x3f80

    .restart local v5       #scale:F
    const/4 v11, 0x0

    .restart local v11       #targetDensity:I
    if-eqz p2, :cond_b

    iget v8, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .restart local v8       #density:I
    iget v11, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-eqz v8, :cond_b

    if-eqz v11, :cond_b

    int-to-float v0, v11

    int-to-float v2, v8

    div-float v5, v0, v2

    .end local v8           #density:I
    :cond_b
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;ZF)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7       #bm:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_c

    if-eqz v11, :cond_c

    invoke-virtual {v7, v11}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_c
    const/4 v9, 0x0

    goto :goto_1

    .end local v5           #scale:F
    .end local v7           #bm:Landroid/graphics/Bitmap;
    .end local v11           #targetDensity:I
    :cond_d
    invoke-static {p0, v1, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7       #bm:Landroid/graphics/Bitmap;
    goto :goto_1

    .end local v1           #tempStorage:[B
    .end local p0
    :cond_e
    if-eqz v9, :cond_0

    invoke-static {v7, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private static finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bm"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/4 v9, 0x1

    const/high16 v12, 0x3f00

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .local v0, density:I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget v8, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .local v8, targetDensity:I
    if-eqz v8, :cond_0

    if-eq v0, v8, :cond_0

    iget v10, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eq v0, v10, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    .local v5, np:[B
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getLayoutBounds()[I

    move-result-object v3

    .local v3, lb:[I
    if-eqz v5, :cond_5

    invoke-static {v5}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v10

    if-eqz v10, :cond_5

    move v2, v9

    .local v2, isNinePatch:Z
    :goto_1
    iget-boolean v10, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v10, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    int-to-float v10, v8

    int-to-float v11, v0

    div-float v7, v10, v11

    .local v7, scale:F
    const/high16 v10, 0x3f80

    cmpl-float v10, v7, v10

    if-eqz v10, :cond_7

    move-object v6, p0

    .local v6, oldBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    add-float/2addr v10, v12

    float-to-int v10, v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v7

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v6, v10, v11, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, v6, :cond_3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v5, v7, p1}, Landroid/graphics/BitmapFactory;->nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/graphics/Bitmap;->setNinePatchChunk([B)V

    :cond_4
    if-eqz v3, :cond_7

    array-length v9, v3

    new-array v4, v9, [I

    .local v4, newLb:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v9, v3

    if-ge v1, v9, :cond_6

    aget v9, v3, v1

    int-to-float v9, v9

    mul-float/2addr v9, v7

    add-float/2addr v9, v12

    float-to-int v9, v9

    aput v9, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #isNinePatch:Z
    .end local v4           #newLb:[I
    .end local v6           #oldBitmap:Landroid/graphics/Bitmap;
    .end local v7           #scale:F
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .restart local v1       #i:I
    .restart local v2       #isNinePatch:Z
    .restart local v4       #newLb:[I
    .restart local v6       #oldBitmap:Landroid/graphics/Bitmap;
    .restart local v7       #scale:F
    :cond_6
    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->setLayoutBounds([I)V

    .end local v1           #i:I
    .end local v4           #newLb:[I
    .end local v6           #oldBitmap:Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {p0, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0
.end method

.method public static getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .local v2, bm:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v0, aURL:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .local v3, conn:Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .local v4, is:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v1, bis:Ljava/io/BufferedInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #aURL:Ljava/net/URL;
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #conn:Ljava/net/URLConnection;
    .end local v4           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static native nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;ZF)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;ZF)Landroid/graphics/Bitmap;
.end method

.method private static native nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static native nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B
.end method
