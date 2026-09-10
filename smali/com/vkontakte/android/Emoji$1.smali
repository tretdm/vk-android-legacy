.class Lcom/vkontakte/android/Emoji$1;
.super Ljava/lang/Object;
.source "Emoji.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/Emoji;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 881
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 883
    new-instance v22, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 884
    .local v22, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x3fc00000    # 1.5f

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_0

    .line 885
    const/4 v4, 0x2

    move-object/from16 v0, v22

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 886
    :cond_0
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "emoji_c.jpg"

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 887
    .local v21, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 888
    .local v2, "color":Landroid/graphics/Bitmap;
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 889
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "emoji_a.jpg"

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 890
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 891
    .local v10, "alpha":Landroid/graphics/Bitmap;
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 892
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .local v5, "iw":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 893
    .local v9, "ih":I
    const-string v4, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "EMOJI INIT: c: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", a: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 895
    .local v3, "cpx":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 896
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 897
    mul-int v4, v5, v9

    new-array v11, v4, [I

    .line 898
    .local v11, "apx":[I
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v13, v5

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 899
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 900
    const/4 v10, 0x0

    .line 901
    const/4 v2, 0x0

    .line 902
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    array-length v4, v3

    move/from16 v0, v20

    if-lt v0, v4, :cond_4

    .line 906
    const/4 v11, 0x0

    .line 909
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/Emoji;->access$2(Landroid/graphics/Bitmap;)V

    .line 910
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$0()Landroid/graphics/Bitmap;

    move-result-object v12

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v3

    move v15, v5

    move/from16 v18, v5

    move/from16 v19, v9

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 911
    const/4 v3, 0x0

    .line 912
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$3()I

    move-result v4

    int-to-double v6, v4

    const-wide/high16 v12, 0x4043000000000000L    # 38.0

    mul-double/2addr v6, v12

    int-to-double v12, v9

    int-to-double v14, v5

    div-double/2addr v12, v14

    mul-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v9, v6

    .line 913
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$3()I

    move-result v4

    mul-int/lit8 v5, v4, 0x26

    .line 914
    const-string v4, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "EMOJI INIT: resizing to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    sget-boolean v4, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    if-eqz v4, :cond_1

    .line 916
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$0()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/BitmapHack;->hackBitmap(Landroid/graphics/Bitmap;)V

    .line 918
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$0()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v5, v9, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/Emoji;->access$2(Landroid/graphics/Bitmap;)V

    .line 920
    sget-boolean v4, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    if-eqz v4, :cond_2

    .line 921
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$0()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/BitmapHack;->hackBitmap(Landroid/graphics/Bitmap;)V

    .line 926
    :cond_2
    const-string v4, "vk"

    const-string v6, "Emoji init ok"

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    sget-object v4, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_3

    .line 935
    sget-object v4, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    new-instance v6, Lcom/vkontakte/android/Emoji$1$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/vkontakte/android/Emoji$1$1;-><init>(Lcom/vkontakte/android/Emoji$1;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 940
    .end local v2    # "color":Landroid/graphics/Bitmap;
    .end local v3    # "cpx":[I
    .end local v5    # "iw":I
    .end local v9    # "ih":I
    .end local v10    # "alpha":Landroid/graphics/Bitmap;
    .end local v11    # "apx":[I
    .end local v20    # "i":I
    .end local v21    # "is":Ljava/io/InputStream;
    .end local v22    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :goto_1
    return-void

    .line 903
    .restart local v2    # "color":Landroid/graphics/Bitmap;
    .restart local v3    # "cpx":[I
    .restart local v5    # "iw":I
    .restart local v9    # "ih":I
    .restart local v10    # "alpha":Landroid/graphics/Bitmap;
    .restart local v11    # "apx":[I
    .restart local v20    # "i":I
    .restart local v21    # "is":Ljava/io/InputStream;
    .restart local v22    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    aget v4, v3, v20

    const v6, 0xffffff

    and-int/2addr v4, v6

    aget v6, v11, v20

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v4, v6

    aput v4, v3, v20
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 939
    .end local v2    # "color":Landroid/graphics/Bitmap;
    .end local v3    # "cpx":[I
    .end local v5    # "iw":I
    .end local v9    # "ih":I
    .end local v10    # "alpha":Landroid/graphics/Bitmap;
    .end local v11    # "apx":[I
    .end local v20    # "i":I
    .end local v21    # "is":Ljava/io/InputStream;
    .end local v22    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v23

    .local v23, "x":Ljava/lang/Throwable;
    const-string v4, "vk"

    const-string v6, "Error loading emoji"

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
