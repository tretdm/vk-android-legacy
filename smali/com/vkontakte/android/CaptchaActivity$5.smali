.class Lcom/vkontakte/android/CaptchaActivity$5;
.super Ljava/lang/Object;
.source "CaptchaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CaptchaActivity;->loadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CaptchaActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CaptchaActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/vkontakte/android/CaptchaActivity$5;->this$0:Lcom/vkontakte/android/CaptchaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/CaptchaActivity$5;->this$0:Lcom/vkontakte/android/CaptchaActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CaptchaActivity;->access$300(Lcom/vkontakte/android/CaptchaActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v1

    .line 107
    .local v1, "imdata":[B
    if-eqz v1, :cond_0

    .line 108
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/vkontakte/android/CaptchaActivity$5;->this$0:Lcom/vkontakte/android/CaptchaActivity;

    invoke-static {v2, v0}, Lcom/vkontakte/android/CaptchaActivity;->access$400(Lcom/vkontakte/android/CaptchaActivity;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "imdata":[B
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v2

    goto :goto_0
.end method
