.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;
.super Ljava/lang/Object;
.source "ImagePickerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

.field private final synthetic val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

.field private final synthetic val$noFilter:Z

.field private final synthetic val$size:I

.field private final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;IZLcom/vkontakte/android/imagepicker/utils/ActionCallback;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput p3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$size:I

    iput-boolean p4, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$sync:Z

    iput-object p5, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    iput-boolean p6, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$noFilter:Z

    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 985
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 986
    .local v8, "prefix":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 988
    .local v10, "totalMs":J
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getPath()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$size:I

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$10(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Ljava/lang/String;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-result-object v7

    .line 990
    .local v7, "bitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->getFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$sync:Z

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 1036
    .end local v7    # "bitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v10    # "totalMs":J
    :goto_0
    return-void

    .line 995
    .restart local v7    # "bitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    .restart local v8    # "prefix":Ljava/lang/String;
    .restart local v10    # "totalMs":J
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1027
    .end local v7    # "bitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v10    # "totalMs":J
    :catch_0
    move-exception v9

    .line 1029
    .local v9, "throwable":Ljava/lang/Throwable;
    const-string v0, "Error.. Fuck :("

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v0, v9, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1031
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$sync:Z

    if-eqz v0, :cond_3

    .line 1032
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->exec(Ljava/lang/Object;)V

    goto :goto_0

    .line 1002
    .end local v9    # "throwable":Ljava/lang/Throwable;
    .restart local v7    # "bitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    .restart local v8    # "prefix":Ljava/lang/String;
    .restart local v10    # "totalMs":J
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsCropped()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getCropData()[F

    .line 1010
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget-boolean v3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$noFilter:Z

    new-instance v4, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10$1;

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$sync:Z

    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-direct {v4, p0, v7, v5, v6}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10$1;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    .line 1021
    const/4 v5, 0x0

    iget v6, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$size:I

    .line 1010
    invoke-virtual/range {v0 .. v6}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->style(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;ZI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1034
    .end local v7    # "bitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v10    # "totalMs":J
    .restart local v9    # "throwable":Ljava/lang/Throwable;
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
