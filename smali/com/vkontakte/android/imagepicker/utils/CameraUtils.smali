.class public Lcom/vkontakte/android/imagepicker/utils/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# static fields
.field public static final ActivityResultId:I = 0x64

.field private static final JPEG_FILE_PREFIX:Ljava/lang/String; = "IMG_"

.field private static final JPEG_FILE_SUFFIX:Ljava/lang/String; = ".jpg"

.field private static final PREFIX:Ljava/lang/String; = "DCIM"

.field private static final SUFFIX:Ljava/lang/String; = "_TEMP"

.field private static mCurrentFile:Ljava/io/File;

.field private static mCurrentPath:Ljava/lang/String;

.field private static mStorageDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImageToGallery(Landroid/app/Activity;)V
    .locals 6
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 79
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, "scanner":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mCurrentPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 83
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "scanner":Landroid/content/Intent;
    :goto_0
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->closeOutput()Ljava/io/File;

    .line 92
    return-void

    .line 86
    :catch_0
    move-exception v3

    .line 88
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "Cannot add image to gallery"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static closeOutput()Ljava/io/File;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-object v0, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mCurrentPath:Ljava/lang/String;

    .line 70
    return-object v0
.end method

.method public static getCameraDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentPhotoFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mCurrentFile:Ljava/io/File;

    return-object v0
.end method

.method public static getCurrentPhotoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mCurrentPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceHasCamera()Z
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 132
    .local v0, "manager":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getOutput()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IMG_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->getStorageDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getStorageDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    if-nez v0, :cond_1

    .line 41
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    .line 43
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    .line 46
    :cond_0
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    .line 50
    :cond_1
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mStorageDir:Ljava/io/File;

    return-object v0
.end method

.method private static getTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static launchCamera(Landroid/app/Activity;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 106
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->getDeviceHasCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->getStorageDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "in":Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->prepareOutput()Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mCurrentFile:Ljava/io/File;

    .line 114
    const-string v2, "output"

    sget-object v3, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mCurrentFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_1
    sget-object v2, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mCurrentFile:Ljava/io/File;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mCurrentPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 125
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 118
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "Cannot start camera intent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 119
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->closeOutput()Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mCurrentFile:Ljava/io/File;

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
    .line 60
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->getOutput()Ljava/io/File;

    move-result-object v0

    .line 61
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->mCurrentPath:Ljava/lang/String;

    .line 63
    return-object v0
.end method
