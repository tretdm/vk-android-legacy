.class Lcom/vkontakte/android/MessageViewActivity$9;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MessageViewActivity;->loadPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageViewActivity$9;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MessageViewActivity$9;)Lcom/vkontakte/android/MessageViewActivity;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/vkontakte/android/MessageViewActivity$9;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 464
    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$9;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sender_photo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$9;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sender_photo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 466
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$9;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    new-instance v2, Lcom/vkontakte/android/MessageViewActivity$9$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/MessageViewActivity$9$1;-><init>(Lcom/vkontakte/android/MessageViewActivity$9;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MessageViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 469
    return-void

    .line 464
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$9;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/MessageViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "userphoto"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
