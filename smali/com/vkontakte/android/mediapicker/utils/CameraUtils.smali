.class public Lcom/vkontakte/android/mediapicker/utils/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# static fields
.field private static final DeviceCameraFolderName:Ljava/lang/String; = "Camera"

.field private static final JpegFIleSuffix:Ljava/lang/String; = ".jpg"

.field private static final JpegFilePrefix:Ljava/lang/String; = "IMG_"

.field public static final PHOTO_TAKEN_RESULT:I = 0x64

.field private static final VKCameraFolderName:Ljava/lang/String; = "VK Camera"

.field private static hasCamera:Z

.field private static hasCameraInitialized:Z

.field private static mCurrentFile:Ljava/io/File;

.field private static mCurrentPath:Ljava/lang/String;

.field private static mCurrentTitle:Ljava/lang/String;

.field private static mStorageDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->hasCameraInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImageToGallery(Landroid/app/Activity;)V
    .locals 12
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v11, 0x0

    .line 110
    sget-object v7, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentPath:Ljava/lang/String;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentTitle:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v7}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->isExternalStorageMounted(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 117
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->isMediaScannerScanning()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_2

    .line 121
    :try_start_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v6, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 126
    .local v3, "time":J
    const-string v7, "_data"

    sget-object v8, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v7, "title"

    sget-object v8, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentTitle:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v7, "_display_name"

    sget-object v8, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentTitle:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v7, "datetaken"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    const-string v7, "date_added"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const-string v7, "date_modified"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v7, "mime_type"

    const-string v8, "image/jpeg"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 136
    .local v5, "uri":Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "So, added image to gallery? "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "time":J
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    :goto_1
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->closeOutput()Ljava/io/File;

    goto :goto_0

    .line 138
    :catch_0
    move-exception v2

    .line 140
    .local v2, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string v7, "Cannot insert image, choosing an easy way"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v2, v8}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 142
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    sget-object v9, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentPath:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "image/jpeg"

    aput-object v10, v8, v9

    new-instance v9, Lcom/vkontakte/android/mediapicker/utils/CameraUtils$1;

    invoke-direct {v9}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils$1;-><init>()V

    invoke-static {p0, v7, v8, v9}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 163
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 165
    .local v1, "t":Ljava/lang/Throwable;
    const-string v7, "Cannot add image to gallery"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v7, v1, v8}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 155
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_3
    const-string v7, "Media scanner is running, we hope that we don\'t need to call the scanner"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 160
    :cond_3
    const-string v7, "External storage is not mounted, so we are skipping mediascanner stuff"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method private static closeOutput()Ljava/io/File;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    sput-object v0, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentPath:Ljava/lang/String;

    .line 87
    return-object v0
.end method

.method public static deleteImage()V
    .locals 5

    .prologue
    .line 94
    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentFile:Ljava/io/File;

    if-nez v1, :cond_1

    .line 106
    .local v0, "throwable":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 99
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x32

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 100
    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .restart local v0    # "throwable":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot delete file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getCameraDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentPhotoFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentFile:Ljava/io/File;

    return-object v0
.end method

.method public static getCurrentPhotoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceHasCamera()Z
    .locals 2

    .prologue
    .line 209
    sget-boolean v1, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->hasCameraInitialized:Z

    if-eqz v1, :cond_0

    .line 210
    sget-boolean v1, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->hasCamera:Z

    .line 217
    .local v0, "manager":Landroid/content/pm/PackageManager;
    :goto_0
    return v1

    .line 212
    .end local v0    # "manager":Landroid/content/pm/PackageManager;
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 214
    .restart local v0    # "manager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->hasCameraInitialized:Z

    .line 215
    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->hasCamera:Z

    .line 217
    sget-boolean v1, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->hasCamera:Z

    goto :goto_0
.end method

.method private static getOutput()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->getStorageDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IMG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Image file output: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 71
    return-object v0
.end method

.method private static getStorageDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    if-nez v0, :cond_1

    .line 48
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    .line 50
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    .line 53
    :cond_0
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    .line 57
    :cond_1
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    return-object v0
.end method

.method private static getTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVKCameraDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "VK Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isExternalStorageMounted(Z)Z
    .locals 2
    .param p0, "allowReadonly"    # Z

    .prologue
    .line 232
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isMediaScannerScanning()Z
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 239
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    if-nez v0, :cond_1

    move v7, v9

    .line 263
    .local v6, "cursor":Landroid/database/Cursor;
    .local v7, "isRunning":Z
    :cond_0
    :goto_0
    return v7

    .line 242
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "isRunning":Z
    :cond_1
    const/4 v7, 0x0

    .line 243
    .restart local v7    # "isRunning":Z
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "volume"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 245
    .restart local v6    # "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne v0, v10, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 251
    .local v8, "state":Ljava/lang/String;
    const-string v0, "external"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 253
    if-nez v7, :cond_3

    .line 256
    const-string v0, "State of the mediascanner is %s"

    new-array v1, v10, [Ljava/lang/Object;

    if-nez v8, :cond_2

    const-string v8, "null"

    .end local v8    # "state":Ljava/lang/String;
    :cond_2
    aput-object v8, v1, v9

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static launchCamera(Landroid/app/Activity;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 183
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->getDeviceHasCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->getStorageDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "in":Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->prepareOutput()Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentFile:Ljava/io/File;

    .line 191
    const-string v2, "output"

    sget-object v3, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_1
    sget-object v2, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentFile:Ljava/io/File;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 202
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 195
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "Cannot start camera intent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 196
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->closeOutput()Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentFile:Ljava/io/File;

    goto :goto_1
.end method

.method private static prepareOutput()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->getOutput()Ljava/io/File;

    move-result-object v0

    .line 77
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentPath:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->mCurrentTitle:Ljava/lang/String;

    .line 80
    return-object v0
.end method
